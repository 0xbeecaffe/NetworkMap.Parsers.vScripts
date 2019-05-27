<?xml version="1.0" standalone="yes"?>
<vScriptDS xmlns="http://tempuri.org/vScriptDS.xsd">
  <vScriptCommands>
    <vsID>0</vsID>
    <CommandID>4672714a-bc08-4ec5-bea1-b8dd32b624b3</CommandID>
    <Name>Start</Name>
    <DisplayLabel>Start</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>24</Origin_X>
    <Origin_Y>346</Origin_Y>
    <Size_Width>100</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStart</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>1</vsID>
    <CommandID>a2f5f866-94c0-46a6-83ca-69e281ddc2e6</CommandID>
    <Name>Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global Router
global ParsingForProtocol
global ParsingForVendor
global OperationStatusLabel
OperationStatusLabel = "Initializing..."  

# Router object is passed in ConnectionInfo.aParam
Router = ConnectionInfo.aParam

if Router != None:
  # Requested protocol type is passed in ConnectionInfo.bParam
  # This parser only supports JunOS ruter vendor and OSPF protocol
  if ConnectionInfo.bParam in ParsingForProtocols:
    ActionResult = Router.GetVendor() == ParsingForVendor
  else:
    ActionResult = False
else:
  ActionResult = False

</MainCode>
    <Origin_X>359</Origin_X>
    <Origin_Y>84</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Initialize must decide whether this Protocol Parser
is capable of handling the Router and the requested
routing protocol  it has been invoked for.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>2</vsID>
    <CommandID>3de92841-b2aa-442d-af76-37a67e498361</CommandID>
    <Name>SwitchTask</Name>
    <DisplayLabel>Switch task</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>206</Origin_X>
    <Origin_Y>341</Origin_Y>
    <Size_Width>100</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Based on the received information determines 
which action to take.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptCommand</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>3</vsID>
    <CommandID>0e1b7c85-f97c-4a7d-9262-13149567605e</CommandID>
    <Name>ReturnSupportTag</Name>
    <DisplayLabel>Support Tag</DisplayLabel>
    <Commands />
    <MainCode>global ScriptVersion
global ActionResult
global ModuleName

ActionResult =  ModuleName + " v" + ScriptVersion</MainCode>
    <Origin_X>500</Origin_X>
    <Origin_Y>211</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Returns a descriptive text about
the current Protocol Parser</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>4</vsID>
    <CommandID>a9279407-046b-4e50-b4e6-fcd0c543379a</CommandID>
    <Name>ParseProtocol</Name>
    <DisplayLabel>Parse</DisplayLabel>
    <Commands />
    <MainCode>global Router
global OperationStatusLabel

# The neighbor registry object is received in ConnectionInfo.aParam
nRegistry = ConnectionInfo.aParam
# A CancellationToken is received in ConnectionInfo.bParam
cToken = ConnectionInfo.bParam
# The routing instance to parser is received via cParam
instance = ConnectionInfo.cParam
ospfProcessID = OSPFProcessor.GetProcessIDFromInstance(instance)
#--  
OperationStatusLabel = "Querying OSPF neighbors..."  

if (ospfProcessID) : cmd = "show ip ospf {0} neighbor".format(ospfProcessID)
else : cmd = "show ip ospf neighbor"
TextToParse = Session.ExecCommand(cmd)
#--
OperationStatusLabel = "Querying OSPF interfaces..."
if (ospfProcessID) : cmd = "show ip ospf {0} interface brief".format(ospfProcessID)
else : cmd = "show ip ospf interface brief"
ospfInterfaces = Session.ExecCommand(cmd)
#--
OperationStatusLabel = "Processing OSPF data..."
cToken.ThrowIfCancellationRequested()

ospf_lines = [str.lower(thisLine.strip()) for thisLine in TextToParse.splitlines()]
for line in ospf_lines:
  neighborRouterID = ""
  neighborState = ""
  remoteNeighboringIP = ""
  description = "";
  #--
  cToken.ThrowIfCancellationRequested()
  #--
  try:
    words = filter(None, line.split(" "))
    # Words should look like:
    #Neighbor ID,Pri,State,Dead Time,Address,Interface
    #172.20.0.255,128,FULL/BDR,00:00:34,172.20.0.14,TenGigabitEthernet0/1/0 
    neighborState = words[2]
    # create a reference variable to pass it to TryParse (this is an out parameter in .Net)
    nIP = clr.Reference[System.Net.IPAddress]() # neighbor IP
    nID = clr.Reference[System.Net.IPAddress]() # neighbor ID
    # expect two ip addresses in line, first is neighbor RID, second is neighbor IP
    foundIPs = re.findall(r"\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}", line)
    if len(foundIPs) == 2 and System.Net.IPAddress.TryParse(foundIPs[0], nID) and System.Net.IPAddress.TryParse(foundIPs[1], nIP) :
      # This is a new peer, initialize variables
      ifName = words[len(words)-1]
      OperationStatusLabel = "Querying router interface {0}...".format(ifName)
      ri = Router.GetInterfaceByName(ifName, instance)
      if ri != None:
        # add OSPF Area info to RouterInterface
        if ospfInterfaces != None:
          ospfIntfLines = [str.lower(thisLine.strip()) for thisLine in ospfInterfaces.splitlines()]
          foundOspfIntfLine = next((thisIFLine for thisIFLine in ospfIntfLines if thisIFLine.startswith(ifName)), None)
          if foundOspfIntfLine != None:
            w = filter(None, foundOspfIntfLine.split(" "))
            #Interface    PID   Area            IP Address/Mask    Cost  State Nbrs F/C
            #Te0/1/0      100   172.20.0.0      172.20.0.1/28      1     DR    1/1
            ri.OSPFArea = w[2]   
        # as nID and nIP are clr reference types, we need tp check the Value property        
        neighborRouterID = str(nID.Value)
        remoteNeighboringIP = str(nIP.Value)
        description = ""
        OperationStatusLabel = "Registering OSPF neighbor {0}...".format(neighborRouterID)
        nRegistry.RegisterNeighbor(Router, instance, L3Discovery.NeighborProtocol.OSPF, neighborRouterID, "", description, remoteNeighboringIP, ri, neighborState)
        
  except Exception as Ex:
    msg = "Cisco IOS OSPF vScript Parser : Error while processing ospf at line [{0}]. Error is : {1}".format(line, str(Ex))
    System.Diagnostics.DebugEx.WriteLine(msg) 
</MainCode>
    <Origin_X>567</Origin_X>
    <Origin_Y>344</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>true</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Discover OSPF adjacencies and register peers for discovery</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1221, Height=805}|{X=153,Y=132}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>5</vsID>
    <CommandID>58e9be86-73f7-4c61-9334-e6a207cfaf18</CommandID>
    <Name>ReturnProtocols</Name>
    <DisplayLabel>Supported Protocols</DisplayLabel>
    <Commands />
    <MainCode>global ParsingForProtocols
global ActionResult

ActionResult = ParsingForProtocols</MainCode>
    <Origin_X>565</Origin_X>
    <Origin_Y>276</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Returns the list of routing protocols
that are actively running on the router</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>6</vsID>
    <CommandID>88d6e50e-8635-4812-bcb6-a09a43be81b7</CommandID>
    <Name>UnknownTask</Name>
    <DisplayLabel>Unknown task</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

ActionResult = None
raise ValueError("CiscoIOS OSPF Parser module has received an unhandled Command request : {0}".format(ConnectionInfo.Command))</MainCode>
    <Origin_X>340</Origin_X>
    <Origin_Y>590</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>A Command was received by this Protocol Parser
that is not handled. This is an ERROR condition.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>7</vsID>
    <CommandID>1a445e8a-3d14-4ba1-9e31-84cda5984f01</CommandID>
    <Name>OSPFProcessor</Name>
    <DisplayLabel>Process OSPF Database</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution
global ScriptExecutor
global Session</MainCode>
    <Origin_X>28</Origin_X>
    <Origin_Y>589</Origin_Y>
    <Size_Width>166</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables># OSPFProcesses contains the process ID keyed by VRF name
# Example : OSPFProcesses = {"" : 100, "VRF_Blue" : 200, "VRF_Red" : 300}
OSPFProcesses = {}
# OSPFProcessData contains the OSPFAreaLSAs keyed by OSPF process ID
# Exampe : # OSPFProcessData = {100 : OSPFAreaLSAs{}, 200 : OSPFAreaLSAs, 300 : OSPFAreaLSAs}
OSPFProcessData = {}
# OSPFAreaLSAs contains OSPFLSA dictionaries entries keyed by OSPFArea objects. The internal dictinary is then keyed by LSAType - like Router, or Network.
# LSAs = [item1, item2]
# OSPFLSAs = {"Router" : [OSPFLSA1, OSPFLSA2], "Network" : [OSPFLSA1, OSPFLSA2]}
# OSPFAreaLSAs = {"0.0.0.0, Backone" : {"Router" : [OSPFLSA1, OSPFLSA2], "Network" : [OSPFLSA1, OSPFLSA2]}, "10.0.0.0, Normal" : {"Router" : [OSPFLSA1, OSPFLSA2], "Network" : [OSPFLSA1, OSPFLSA2]}}


# OSPFAreaInfo will contain the output of "show ip ospf" command and is used to find Area related informations. Keyed by process ID
OSPFAreInfo = {}</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>def ProcessDatabase(self): 
  """Query and Process the OSPF Database"""
  global OperationStatusLabel
  global ParsingForVendor
  defaultInstanceName = L3Discovery.RoutingInstance.DefaultInstanceName(ParsingForVendor)
  # clear contents
  self.OSPFProcesses = {}
  self.OSPFProcessData = {} 
  # query OSPF processes
  cmd = "show ip ospf | i ID"
  ospfGeneral = Session.ExecCommand(cmd)
  # expecting output like this:
  # Routing Process "ospf 200" with ID 10.9.254.251
  # Routing Process "ospf 100" with ID 192.168.1.1
  for ospfProcessLine in ospfGeneral.splitlines():
    processID = re.findall(r"(?&lt;=\"ospf ).\d{1,8}", ospfProcessLine, re.IGNORECASE) 
    if len(processID) == 1 :
      cmd = "show ip ospf {0} | i VRF".format(processID[0])
      response = Session.ExecCommand(cmd)
      if response == "" :
        self.OSPFProcesses[defaultInstanceName] = processID[0].strip()
      else:
        vrfName = re.findall(r"(?&lt;=VRF ).*", response, re.IGNORECASE)
        if len(vrfName) == 1:
          self.OSPFProcesses[vrfName[0].strip()] = processID[0].strip()
      
  # query OSPF database for each process
  OperationStatusLabel = "Querying OSPF database..."
  for vrfName, processID in self.OSPFProcesses.items() :
    cmd = "show ip ospf {0} database".format(processID)
    ospfAreaDatabase = Session.ExecCommand(cmd)
    currentArea = None
    currentLSATypeName = ""
    # LSAs = [item1, item2]
    LSAs = []
    # OSPFLSAs = {"Router" : [item1, item2], "Network" : [item1, item2]}
    OSPFLSAdict = {}
    OSPFAreaLSAs = {}
    lines = [str.lower(thisLine.strip()) for thisLine in ospfAreaDatabase.splitlines()]
    OperationStatusLabel = "Processing OSPF database..."
    for thisLine in lines:
      # header : Link ID         ADV Router      Age Seq#       Checksum Link count
      # line is like :100.65.0.46     100.65.0.46     238         0x8000EBC3 0x00D97D 1  
      try:
        if "link states (area " in thisLine:
          # thisLine is like : Router Link States (Area 172.20.0.0)
          areaName = re.findall(r"(?&lt;=\().*?(?=\))", thisLine)[0]
          thisAreaID = re.findall(r"(?&lt;=area )[\d.]{0,99}", areaName)[0]
          thisLSATypeName = re.match(r"^.*(?=(link))", thisLine).group()
          if currentArea == None:
            currentArea = L3Discovery.OSPFArea()
            currentArea.AreaID = thisAreaID.strip()
            currentArea.AreaType = self.GetAreaType(currentArea.AreaID, processID)
            
          elif thisAreaID.strip() != currentArea.AreaID:
            # area ID is changing
            OSPFAreaLSAs[currentArea] = OSPFLSAdict
            OSPFLSAdict = {}
            currentArea = L3Discovery.OSPFArea()
            currentArea.AreaID = thisAreaID.strip()
            currentArea.AreaType = self.GetAreaType(currentArea.AreaID, processID)
          
          if currentLSATypeName != thisLSATypeName:
            # LSA Type is changing
            OSPFLSAdict[currentLSATypeName] = LSAs
            LSAs = []
            currentLSATypeName = thisLSATypeName.strip()
            
        elif "link states" in thisLine:
          # line is like : Type-5 AS External Link States
          # area is not changing, only the LSA Type
          thisLSATypeName = re.findall(r"^.*(?=(link))", thisLine)[0]
          if currentLSATypeName != "" and currentLSATypeName != thisLSATypeName:
            # LSA Type is changing
            OSPFLSAdict[currentLSATypeName] = LSAs
            currentLSATypeName = thisLSATypeName.strip()
          LSAs = []
        else:
          words = filter(None, thisLine.split(" "))
          firstWord = words[0].strip()
          #if first word is ip address, then this is an LSA entry
          ip = clr.Reference[System.Net.IPAddress]()
          if System.Net.IPAddress.TryParse(firstWord, ip):
            # The LSA ID should be the first word in thisLine
            LSAID = firstWord
            # The Adv Router should be the second word in thisLine
            AdvRouter = words[1].strip()
            thisLSA = L3Discovery.OSPFLSA()
            thisLSA.LSAType = currentLSATypeName
            thisLSA.LSAID = LSAID
            thisLSA.AdvRouter = AdvRouter
            LSAs.Add(thisLSA)
            
      except Exception as Ex:
        msg = "Cisco IOS OSPF vScript Parser : Error while processing ospf database. Error is : {0}".format(str(Ex))
        System.Diagnostics.DebugEx.WriteLine(msg) 
        
    # add the last area router ID-s
    if currentArea != None: 
      OSPFAreaLSAs[currentArea] = OSPFLSAdict
    # now add this OSPFAreaLSAs dictionary to self.OSPFProcessData dictionary keyed by processID
    self.OSPFProcessData[processID] = OSPFAreaLSAs
  
def GetAreas(self, instance):
  """Return all the Areas the router belongs to """  
  # if OSPF datbase was not yet processed, do it now. It will populate self.OSPFAreaLSAs
  if len(self.OSPFProcessData) == 0 : self.ProcessDatabase()
  # get the OSPF processID for instance name
  pid = self.OSPFProcesses.get(instance.Name, None)
  if pid:
    OSPFAreaLSAs = self.OSPFProcessData.get(pid)
    if OSPFAreaLSAs :  
      Areas = OSPFAreaLSAs.keys()
      return Areas  
  # return empty list by default
  return []
      
def GetAreaLSAs(self, instance, ospfArea, lsaTypeName):
  """Return the list of LSAs for the requested Type and Area """  
  # if OSPF datbase was not yet processed, do it now. It will populate self.OSPFAreaLSAs
  if len(self.OSPFProcessData) == 0 : self.ProcessDatabase()
  pid = self.OSPFProcesses.get(instance.Name, None)
  if pid:
    OSPFAreaLSAs = self.OSPFProcessData.get(pid)  
    # get All LSAs for the requested Area
    AreaLSAs = OSPFAreaLSAs.get(ospfArea, None)
    if AreaLSAs :
      # get the LSA list for the requested LSA type
      RequestedAreaLSAs = AreaLSAs.get(lsaTypeName, [])
      return RequestedAreaLSAs
  # return empty list by default  
  return []
  
def GetAreaType(self, ospfAreaID, processID):
  """Return the OSPF Area Type name for the requested AREA ID """
  if ospfAreaID == "0.0.0.0" :
    return L3Discovery.OSPFAreaType.Backbone
  areaInfo = self.OSPFAreInfo.get(processID, "")
  if areaInfo == "" :
     areaInfo = Session.ExecCommand("show ip ospf {0}".format(processID))
     self.OSPFAreInfo[processID] = areaInfo
    
  try:
    lines = [str.lower(thisLine.strip()) for thisLine in areaInfo.splitlines()]
    OperationStatusLabel = "Processing OSPF Area information..."
    scanningAreaBlock = False
    areaBlock = []
    # parse OSPFAreInfo to get the ext block related to the requested areaID
    for thisLine in lines:
        if thisLine.startswith("area {0}".format(ospfAreaID)):
          if scanningAreaBlock:
            break
          else:
            scanningAreaBlock = True
            continue
        if scanningAreaBlock:
          areaBlock.Add(thisLine)
    # Now we have the text block relevant to requested areaID
    for thisLine in areaBlock:
      if "nssa" in thisLine : return L3Discovery.OSPFAreaType.NSSA
      if "stub" in thisLine : return L3Discovery.OSPFAreaType.Stub
      if "totally" in thisLine : return L3Discovery.OSPFAreaType.TotallyStub
  
    return L3Discovery.OSPFAreaType.Normal  
    
  except Exception as Ex:
    msg = "Cisco IOS OSPF vScript Parser : Error while processing ospf area block. Error is : {0}".format(str(Ex))
    System.Diagnostics.DebugEx.WriteLine(msg)
    return L3Discovery.OSPFAreaType.Unknown
    
def GetLSATypeNames(self, instance, ospfArea):
  """Return all of the LSA Type Names for the specified Area """
  # if OSPF datbase was not yet processed, do it now. It will populate self.OSPFAreaLSAs
  if len(self.OSPFProcesses) == 0 : self.ProcessDatabase()  
  pid = self.OSPFProcesses.get(instance.Name, None)  
  if pid:
    OSPFAreaLSAs = self.OSPFProcessData.get(pid) 
    # get All LSAs for the requested Area
    AreaLSAs = OSPFAreaLSAs.get(ospfArea, None)
    if AreaLSAs :
      LSATypeNames = AreaLSAs.keys()
      return LSATypeNames      
  # return empty list by default
  return [] 
  
def GetProcessIDFromInstance(self, instance):
  """Returns the OSPF Process ID as a string, that is associated with the given routing instance(VRF)"""
  if not instance:
    return ""
  if len(self.OSPFProcessData) == 0 : self.ProcessDatabase()
  return self.OSPFProcesses.get(instance.Name, "")
    
def Reset(self):
  """Reset object state """
  self.OSPFProcesses = {}
  self.OSPFProcessData = {}
  self.OSPFAreInfo = {}</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>Process OSPF Database in order to collect Area IDs and different LSAs</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1330, Height=893}|{X=26,Y=26}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>8</vsID>
    <CommandID>61c8703b-410e-41c3-b3b2-b0485b46ce0f</CommandID>
    <Name>Return_OSPFAreas</Name>
    <DisplayLabel>OSPF Areas</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

# RoutingInstance reference is given in aParam
instance = ConnectionInfo.aParam
# --
ActionResult = OSPFProcessor.GetAreas(instance)
</MainCode>
    <Origin_X>524</Origin_X>
    <Origin_Y>409</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Returns the OSPF Areas the current router is member of</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>9</vsID>
    <CommandID>3d17c0fc-460d-49e3-b16e-bc93d7bc4122</CommandID>
    <Name>Return_OSPFLSATypes</Name>
    <DisplayLabel>Return OSPF LSA types</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

# the OSPF Area ID to be queried is received in ConnectionInfo.aParam
ospfArea = ConnectionInfo.aParam
# RoutingInstance reference is given in ConnectionInfo.bParam
instance = ConnectionInfo.bParam
# --
ActionResult = OSPFProcessor.GetLSATypeNames(instance, ospfArea)</MainCode>
    <Origin_X>424</Origin_X>
    <Origin_Y>532</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Returns the list of existing LSA Types for the requested OSPF Area</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>10</vsID>
    <CommandID>2c9396b9-a15a-44f6-8bc4-65a9fc7c7450</CommandID>
    <Name>Return_OSPFLSA</Name>
    <DisplayLabel>Return Requested LSAs</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

# the OSPF Area ID to be queried is received in ConnectionInfo.aParam
ospfArea = ConnectionInfo.aParam
# the requested LSA Type Name is received in ConnectionInfo.bParam
LSAType = ConnectionInfo.bParam
# RoutingInstance reference is given in ConnectionInfo.cParam
instance = ConnectionInfo.cParam
# return the LSAs
ActionResult = OSPFProcessor.GetAreaLSAs(instance, ospfArea, LSAType)</MainCode>
    <Origin_X>481</Origin_X>
    <Origin_Y>475</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Returns the list of OSPF LSAs of the requested type
for the requested Area ID</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>11</vsID>
    <CommandID>54f3ae65-bbaf-49a3-819c-0e636d5f6b1a</CommandID>
    <Name>Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution
global OperationStatusLabel
global Router

OperationStatusLabel = "Working"
OSPFProcessor.Reset()
ActionResult = None
Router = None</MainCode>
    <Origin_X>441</Origin_X>
    <Origin_Y>146</Origin_Y>
    <Size_Width>164</Size_Width>
    <Size_Height>40</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptConnector>
    <cID>0</cID>
    <ConnectorID />
    <Name>Start_Copy_of_SwitchTask</Name>
    <DisplayLabel />
    <Left>0</Left>
    <Right>2</Right>
    <Condition>return True</Condition>
    <Variables />
    <Break>false</Break>
    <Order>0</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>1</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnSupportTag</Name>
    <DisplayLabel>GetSupportTag</DisplayLabel>
    <Left>2</Left>
    <Right>3</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportTag"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>1</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>2</cID>
    <ConnectorID />
    <Name>SwitchTask_Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Left>2</Left>
    <Right>1</Right>
    <Condition>return ConnectionInfo.Command == "Initialize"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>0</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>3</cID>
    <ConnectorID />
    <Name>SwitchTask_ParseProtocol</Name>
    <DisplayLabel>Parse</DisplayLabel>
    <Left>2</Left>
    <Right>4</Right>
    <Condition>return ConnectionInfo.Command == "Parse"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>3</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>4</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnProtocols</Name>
    <DisplayLabel>GetSupportedProtocols</DisplayLabel>
    <Left>2</Left>
    <Right>5</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportedProtocols"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>2</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>5</cID>
    <ConnectorID />
    <Name>SwitchTask_UnknownTask</Name>
    <DisplayLabel>Unknown</DisplayLabel>
    <Left>2</Left>
    <Right>6</Right>
    <Condition>return True</Condition>
    <Variables />
    <Break>false</Break>
    <Order>8</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>6</cID>
    <ConnectorID />
    <Name>SwitchTask_OSPFLSAs</Name>
    <DisplayLabel>GetOSPFLSATypes</DisplayLabel>
    <Left>2</Left>
    <Right>9</Right>
    <Condition>return ConnectionInfo.Command == "GetOSPFLSATypes"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>5</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>7</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_OSPFAreas</Name>
    <DisplayLabel>GetOSPFAreas</DisplayLabel>
    <Left>2</Left>
    <Right>8</Right>
    <Condition>return ConnectionInfo.Command == "GetOSPFAreas"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>4</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>8</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_OSPFLSA</Name>
    <DisplayLabel>GetOSPFLSAs</DisplayLabel>
    <Left>2</Left>
    <Right>10</Right>
    <Condition>return ConnectionInfo.Command == "GetOSPFLSAs"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>6</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>9</cID>
    <ConnectorID />
    <Name>SwitchTask_Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Left>2</Left>
    <Right>11</Right>
    <Condition>return ConnectionInfo.Command == "Reset"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>7</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <Parameters>
    <ScriptName>Cisco_IOS_OSPF_Parser</ScriptName>
    <GlobalCode>ScriptVersion = "5.0.1"
# Describe the Module Name
ModuleName = "Cisco IOS OSPF Protocol Parser Module - Python vScript Parser"
# Describes current operation status
OperationStatusLabel = "Init"
# The Router instance associated to this parser. Set in Initialize
Router = None
#This is the protocol supported by this module
ParsingForProtocols = [ L3Discovery.NeighborProtocol.OSPF ]
#This is the vendor name supported by this module
ParsingForVendor = "Cisco"</GlobalCode>
    <BreakPolicy>Before</BreakPolicy>
    <CustomNameSpaces>#####################################################################
#                                                                   #
# Below imports a typically required for a Protocol PArser Module   #
#                                                                   #
#####################################################################
import re
import sys
import clr
clr.AddReferenceToFileAndPath("Common.dll")
clr.AddReferenceToFileAndPath("PGTNetworkMap.dll")
import PGT.Common
import L3Discovery
import System.Net</CustomNameSpaces>
    <CustomReferences />
    <DebuggingAllowed>true</DebuggingAllowed>
    <LogFileName />
    <WatchVariables />
    <Language>Python</Language>
    <IsTemplate>false</IsTemplate>
    <IsRepository>false</IsRepository>
    <EditorScaleFactor>0.6175469</EditorScaleFactor>
    <Description />
    <EditorSize>{Width=489, Height=591}</EditorSize>
    <PropertiesEditorSize>{Width=665, Height=460}|{X=507,Y=275}</PropertiesEditorSize>
  </Parameters>
</vScriptDS>