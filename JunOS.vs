<?xml version="1.0" standalone="yes"?>
<vScriptDS xmlns="http://tempuri.org/vScriptDS.xsd">
  <vScriptCommands>
    <vsID>0</vsID>
    <CommandID>fa445090-aac6-431f-803e-d1ecd2f474ae</CommandID>
    <Name>Start</Name>
    <DisplayLabel>Start</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>443</Origin_X>
    <Origin_Y>8</Origin_Y>
    <Size_Width>121</Size_Width>
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
    <CommandID>a8bb888f-acba-4041-9c40-0d6a916bc136</CommandID>
    <Name>UnknownTask</Name>
    <DisplayLabel>Unknown task</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

ActionResult = None
raise ValueError("Junos Router received an unhandled Command request : {0}".format(ConnectionInfo.Command))</MainCode>
    <Origin_X>315</Origin_X>
    <Origin_Y>42</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>2</vsID>
    <CommandID>ca7eb9ab-6c32-4203-b246-919d7e30497f</CommandID>
    <Name>SwitchTask</Name>
    <DisplayLabel>Switch task</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>440</Origin_X>
    <Origin_Y>353</Origin_Y>
    <Size_Width>100</Size_Width>
    <Size_Height>60</Size_Height>
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
    <EditorSize>{Width=826, Height=720}|{X=130,Y=130}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptCommand</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>3</vsID>
    <CommandID>02a4f2cf-e075-4253-b497-b17b410522d3</CommandID>
    <Name>ReturnSupportTag</Name>
    <DisplayLabel>Support Tag</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

ActionResult = "Juniper, JunOS, Router Module for EX/QFX/MX/SRX- Python vScript Parser v{1}".format(Name, scriptVersion)</MainCode>
    <Origin_X>751</Origin_X>
    <Origin_Y>186</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>37</Size_Height>
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
  <vScriptCommands>
    <vsID>4</vsID>
    <CommandID>6cf97c54-143f-44b3-9676-36be7032e63b</CommandID>
    <Name>ReturnInventory</Name>
    <DisplayLabel>Return Inventory</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
ActionResult = Inventory.GetInventory()</MainCode>
    <Origin_X>620</Origin_X>
    <Origin_Y>616</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>36</Size_Height>
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
  <vScriptCommands>
    <vsID>5</vsID>
    <CommandID>843c946b-980d-456a-b9d8-61b59b14d2ac</CommandID>
    <Name>ReturnVersion</Name>
    <DisplayLabel>Version</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
ActionResult = Version.GetVersion()</MainCode>
    <Origin_X>755</Origin_X>
    <Origin_Y>506</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>6</vsID>
    <CommandID>17c60dc8-aa02-445f-bb02-2b908fcd5e2b</CommandID>
    <Name>ReturnSerial</Name>
    <DisplayLabel>System Serial</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
ActionResult = SystemSerial.GetSystemSerial()</MainCode>
    <Origin_X>538</Origin_X>
    <Origin_Y>668</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>7</vsID>
    <CommandID>463bb050-2f66-4617-b886-895d01ee2740</CommandID>
    <Name>Inventory</Name>
    <DisplayLabel>Inventory</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>27</Origin_X>
    <Origin_Y>781</Origin_Y>
    <Size_Width>149</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables>DeviceInventory = None</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>def GetInventory(self):
  if self.DeviceInventory == None : self.DeviceInventory = Session.ExecCommand("show chassis hardware")
  return self.DeviceInventory
  
def Reset(self):
  self.DeviceInventory = None</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>Collects inventory information from connected device
if it has not yet been collected.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>8</vsID>
    <CommandID>daccfb47-51e5-4cd5-b1b8-bbeeadeda4bb</CommandID>
    <Name>Version</Name>
    <DisplayLabel />
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution
global ScriptExecutor
global Session</MainCode>
    <Origin_X>190</Origin_X>
    <Origin_Y>781</Origin_Y>
    <Size_Width>149</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables>DeviceVersion = None</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>def GetVersion(self):
  if self.DeviceVersion == None : self.DeviceVersion = Session.ExecCommand("show version")
  return self.DeviceVersion
  
def Reset(self):
  self.DeviceVersion = None</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>Collects version information from connected device
if it has not yet been collected.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>9</vsID>
    <CommandID>69cf4d2b-44e4-4cb9-826b-fc52e4351e36</CommandID>
    <Name>SystemSerial</Name>
    <DisplayLabel />
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution
global ScriptExecutor
global Session</MainCode>
    <Origin_X>356</Origin_X>
    <Origin_Y>781</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables>SystemSerial = None
ModelNumber = None
ScriptSettings = None</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>def Initialize(self):
  self.ScriptSettings = PGT.Common.SettingsManager.GetCurrentScriptSettings()
    
def GetSystemSerial(self):
  if (self.SystemSerial == None) : self.CalculateModelNumberAndSerial()
  return self.SystemSerial
  
def GetModelNumber(self):
  if self.ModelNumber == None : self.CalculateModelNumberAndSerial()
  return self.ModelNumber
  
def CalculateModelNumberAndSerial(self):
  ss = ""
  mn  = ""
  inv = Inventory.GetInventory()
  FPCs = re.findall(r"FPC \d.*", inv)
  for thisFPC in FPCs :
    words = filter(None, thisFPC.split(" "))
    ss += (";" + words[5])
    mn += (";" + words[6])
    
  self.SystemSerial = ss.strip(";")
  self.ModelNumber = mn.strip(";") 
  
def Reset(self):
  self.SystemSerial = None
  self.ModelNumber = None
  self.ScriptSettings = None
   
  
  </CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>Collects system information from connected device
if it has not yet been collected.</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>10</vsID>
    <CommandID>0a008a33-b4ea-4606-a86a-6b4806b37469</CommandID>
    <Name>ReturnModelNumber</Name>
    <DisplayLabel>Model Number</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
ActionResult = SystemSerial.GetModelNumber()</MainCode>
    <Origin_X>784</Origin_X>
    <Origin_Y>439</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>11</vsID>
    <CommandID>6c275d41-4db4-49f3-8e1f-354ac2d0c456</CommandID>
    <Name>ReturnStackCount</Name>
    <DisplayLabel>Stack Count</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global _stackCount

if _stackCount == -1 :
  FPCs = re.findall(r"FPC \d.*", Inventory.GetInventory())
  _stackCount = len(FPCs)

ActionResult = _stackCount;</MainCode>
    <Origin_X>283</Origin_X>
    <Origin_Y>660</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <WatchVariables>;self</WatchVariables>
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>12</vsID>
    <CommandID>6dd1d716-8ad6-40b6-87a7-ea75cc145a18</CommandID>
    <Name>Return_RoutingTable</Name>
    <DisplayLabel>Routing Table</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo

# RoutingInstance is received in aParam
instance= ConnectionInfo.aParam
parsedRoutes = []
# query full route table
cmd = "show route"
instanceName = "master"
if instance : instanceName = instance.Name.lower()
if instanceName != "master" : cmd += " table {0}.inet.0".format(instance.Name)
routes = Session.ExecCommand(cmd)
# define regex expressions for logical text blocks
networkBlockFilter = re.compile(r"\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b\/\d{1,2}")
protocolBlockFilter = re.compile(r"[*[](.*?)\]")
# network blocks are the top level blocks of the text output, get the iterator for them
networkBlockIterator = tuple(networkBlockFilter.finditer(routes))
networkMatchcount = len(networkBlockIterator)
networkMatchIndex = 0
# iterate through the network blocks
for thisNetworkMatch in networkBlockIterator:
  try:
    # thisNetworkMatch is now a MatchObject
    thisNetwork = thisNetworkMatch.group(0)
    # a route block is the text of routes between the position of this match start and the next match start
    routeBlockStart = thisNetworkMatch.start()
    routeBlockEnd = -1
    if (networkMatchIndex == networkMatchcount - 1):
      routeBlockEnd = len(routes)
    else:
      routeBlockEnd = networkBlockIterator[networkMatchIndex + 1].start()
    
    thisRouteBlock = routes[routeBlockStart : routeBlockEnd]      
    # protocol blocks appear inside a network block, get the iterator for them
    protocolBlockIterator = tuple(protocolBlockFilter.finditer(thisRouteBlock))
    # process networks
    protocolMatchcount = len(protocolBlockIterator)
    protocolMatchIndex = 0
    # iterte through the protocol blocks
    for thisProtocolMatch in protocolBlockIterator:
      try:
        # thisProtocolMatch is now a MatchObject
        protocolBlockHeader = thisProtocolMatch.group(0)
        isBestRoute = "*[" in protocolBlockHeader
        protocolBlockStart = thisProtocolMatch.start()
        # a protocol block is the text portion in actual routeBlock between the position of this match start and the next match start
        protocolBlockStart = thisProtocolMatch.start()
        protocolBlockEnd = -1
        if (protocolMatchIndex == protocolMatchcount - 1):
          protocolBlockEnd = len(thisRouteBlock)
        else:
          protocolBlockEnd = protocolBlockIterator[protocolMatchIndex + 1].start()   
        
        thisProtocolBlock =  thisRouteBlock[protocolBlockStart : protocolBlockEnd]
        thisProtocolNames = re.findall(r"[a-zA-Z,-]+", protocolBlockHeader)
        nextHopAddresses = re.findall(r"(?&lt;=to )[\d\.]{0,99}", thisProtocolBlock)
        routeTags = re.findall(r"(?&lt;=tag )[\d\.]{0,99}", thisProtocolBlock)
        outInterfaces = re.findall(r"(?&lt;=via ).*", thisProtocolBlock)
        routePreference = re.findall(r"[0-9]+", protocolBlockHeader)
        
        matchIndex = 0
        for thisOutInterface in outInterfaces:
          rte = L3Discovery.RouteTableEntry()
          # Protocol
          if len(thisProtocolNames) == 1 : rte.Protocol = thisProtocolNames[0]
          else : rte.Protocol = "UNKNOWN"
          # RouterID
          rte.RouterID = RouterIDAndASNumber.GetRouterID(rte.Protocol)
          # Prefix and Mask length
          prefixAndMask = thisNetwork.split("/")
          rte.Prefix = prefixAndMask[0]
          rte.MaskLength = int(prefixAndMask[1])
          # OutInterface
          rte.OutInterface = thisOutInterface
          # NextHop address
          if len(nextHopAddresses) &gt; matchIndex : rte.NextHop = nextHopAddresses[matchIndex]
          else : rte.NextHop = ""
          # Prefix parameters
          rte.Best = isBestRoute
          if len(routeTags) == 1 : rte.Tag = routeTags[0]
          else : rte.Tag = ""
          if len(routePreference) == 1 : rte.AD = routePreference[0]
          else : rte.AD = ""
          rte.Metric = ""
          parsedRoutes.Add(rte)
          matchIndex += 1
               
        protocolMatchIndex += 1
      except Exception as Ex:
        message = "JunOS Router Module Error : could not parse a route table Protocol block because : " + str(Ex)
        System.Diagnostics.DebugEx.WriteLine(message)   
    
    networkMatchIndex += 1
  except Exception as Ex:
    message = "JunOS Router Module Error : could not parse a route table Network block because : " + str(Ex)
    System.Diagnostics.DebugEx.WriteLine(message)
  
ActionResult = parsedRoutes</MainCode>
    <Origin_X>62</Origin_X>
    <Origin_Y>334</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=1023, Height=830}|{X=78,Y=78}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>13</vsID>
    <CommandID>db87cfaa-046f-4ab9-b6aa-3880066309e7</CommandID>
    <Name>Return_RoutedInterfaces</Name>
    <DisplayLabel>Routed Interfaces</DisplayLabel>
    <Commands />
    <MainCode>######################################################################
#                                                                    #
# This call should be able to return the list of routed interfaces   #
#                                                                    #
######################################################################
global ActionResult
global ScriptSuccess
global ConnectionInfo

# RoutingInszance is receied in aParam
instance = ConnectionInfo.aParam
ActionResult = GetInterfaces.GetAllInterfaces(instance)
ScriptSuccess = True</MainCode>
    <Origin_X>60</Origin_X>
    <Origin_Y>410</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=802, Height=572}|{X=78,Y=78}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>14</vsID>
    <CommandID>a2abda9f-20ed-4889-8e64-ac82f8cb2ade</CommandID>
    <Name>Return_RouterID</Name>
    <DisplayLabel>RouterID</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo

# The protocol for which to get the RouterID
protocol = ConnectionInfo.aParam
# The RoutingInstance is received in bParam
instance = ConnectionInfo.bParam
ActionResult = RouterIDAndASNumber.GetRouterID(protocol, instance)</MainCode>
    <Origin_X>692</Origin_X>
    <Origin_Y>561</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>37</Size_Height>
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
    <EditorSize>{Width=904, Height=676}|{X=52,Y=52}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>15</vsID>
    <CommandID>fa1c0cc6-5d9c-49c5-8671-fd7aa4948f63</CommandID>
    <Name>Return_ActiveRoutingProtocols</Name>
    <DisplayLabel>Active Protocols</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo
global _runningRoutingProtocols

# The RoutingInstance object for the request passed in aParam
instance = ConnectionInfo.aParam
instanceName = "master"
if instance : instanceName = instance.Name.lower()

if _runningRoutingProtocols.get(instanceName, None) == None:
  _runningRoutingProtocols[instanceName] = []

if len(_runningRoutingProtocols[instanceName]) == 0 :
  # OSPF
  if instanceName == "master" : cmd = "show ospf overview"
  else :cmd = "show ospf overview instance {0}".format(instanceName)
  response = Session.ExecCommand(cmd)
  if (not ("not running" in response)): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.OSPF)
  # RIP
  if instanceName == "master" : cmd = "show rip neighbor"  
  else : cmd = "show rip neighbor instance {0}".format(instanceName)
  response = Session.ExecCommand(cmd)
  if (not ("not running" in response)): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.RIP)  
  # BGP
  cmd = "show bgp neighbor instance {0}".format(instanceName)
  response = Session.ExecCommand(cmd)
  if (not ("not running" in response)): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.BGP)
  # STATIC 
  # TODO : "not running" is invalid in this context
  if instanceName == "master" : cmd = "show configuration routing-options static"  
  else : cmd = "show configuration routing-instances {0} routing-options static".format(instanceName)
  response = Session.ExecCommand(cmd)
  if (not ("not running" in response)): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.STATIC)  
  # LLDP - only for default instance
  if instanceName == "master":
    response = Session.ExecCommand("show lldp")
    lldpenabled = re.findall(r"LLDP\s+:\s+Enabled", response)
    if len(lldpenabled) == 1 : 
      _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.LLDP)

ActionResult = _runningRoutingProtocols[instanceName]</MainCode>
    <Origin_X>196</Origin_X>
    <Origin_Y>609</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=950, Height=790}|{X=2159,Y=84}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>16</vsID>
    <CommandID>999b46d8-1847-4a34-ab60-3e2ca74ceea0</CommandID>
    <Name>Return_BGPASNumber</Name>
    <DisplayLabel>BGP AS Number</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo
# the RoutingInstance object to query is received in aParam
instance = ConnectionInfo.aParam
ActionResult = RouterIDAndASNumber.GetBGPASNumber(instance)
</MainCode>
    <Origin_X>86</Origin_X>
    <Origin_Y>481</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=691, Height=689}|{X=26,Y=26}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>17</vsID>
    <CommandID>b1e6cdc1-9376-441f-9758-93a7c38d178e</CommandID>
    <Name>Return_HostName</Name>
    <DisplayLabel>Host Name</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global _hostName

ActionResult = _hostName</MainCode>
    <Origin_X>129</Origin_X>
    <Origin_Y>547</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>18</vsID>
    <CommandID>dfdd4171-2a1b-4428-8463-d0dcaca9e22e</CommandID>
    <Name>Return_Platform</Name>
    <DisplayLabel>Platform</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

ActionResult = "JunOS"</MainCode>
    <Origin_X>786</Origin_X>
    <Origin_Y>243</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>19</vsID>
    <CommandID>f1ac0ff6-d637-4a5d-b87d-e060ca2986f3</CommandID>
    <Name>Return_Type</Name>
    <DisplayLabel>Type</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

# Type can be Switch, Router or Firewall, depending on Model
v = Version.GetVersion()
modelLine = next((line for line in v.splitlines() if "Model:" in line), None)
if modelLine != None:
   model = modelLine.split(":")[1].strip()
   if model.startswith("ex") or model.startswith("qfx"):
     ActionResult = "Switch"
   elif model.startswith("srx") :
     ActionResult = "Firewall"
   elif model.startswith("mx") :
     ActionResult = "Router"
   else:
     ActionResult = "Unknown"
else:
  ActionResult = "Unknown"
</MainCode>
    <Origin_X>798</Origin_X>
    <Origin_Y>304</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>44</Size_Height>
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
  <vScriptCommands>
    <vsID>20</vsID>
    <CommandID>d509949e-d797-4299-9345-678e3d60dd3b</CommandID>
    <Name>Return_Vendor</Name>
    <DisplayLabel>Vendor</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult

ActionResult = "JunOS"</MainCode>
    <Origin_X>796</Origin_X>
    <Origin_Y>371</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>21</vsID>
    <CommandID>bba6338e-bb3c-4577-b739-dbfa543f4de5</CommandID>
    <Name>Return_InterfaceByName</Name>
    <DisplayLabel>Interface By Name</DisplayLabel>
    <Commands />
    <MainCode>############################################################################################
#                                                                                          #
# This call should be able to return the RouterInterface object for the desired interface  #
#                                                                                          #
############################################################################################
global ActionResult
global ConnectionInfo

# the interface name to be queried is received in ConnectionInfo.aParam
# strip any leading or trailing spaces, otherwise command execution will fail
ifName = ConnectionInfo.aParam.strip()
# RoutingInstance object received in bParam
instance = ConnectionInfo.bParam

#return the interface
ActionResult = GetInterfaces.GetInterfaceByName(ifName, instance)</MainCode>
    <Origin_X>90</Origin_X>
    <Origin_Y>271</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=849, Height=602}|{X=338,Y=338}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>22</vsID>
    <CommandID>0649a39e-13e2-4ff5-8b22-5e00775917cd</CommandID>
    <Name>Return_InterfaceNameByIPAddress</Name>
    <DisplayLabel>Interface Name By IP</DisplayLabel>
    <Commands />
    <MainCode>##################################################################################
#                                                                                #
# This call should be able to return an interface name based on its IP address   #
#                                                                                #
##################################################################################
global ActionResult
global ConnectionInfo

# the interface ip address to be queried is received in ConnectionInfo.aParam
ifAddress = ConnectionInfo.aParam

# RoutingInstance object received in bParam
instance = ConnectionInfo.bParam

#return the interface name
ActionResult = GetInterfaces.GetInterfaceNameByAddress(ifAddress, instance)</MainCode>
    <Origin_X>139</Origin_X>
    <Origin_Y>203</Origin_Y>
    <Size_Width>146</Size_Width>
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
    <EditorSize>{Width=697, Height=579}|{X=130,Y=130}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>23</vsID>
    <CommandID>bd4bb60a-dbe1-4da9-ae35-bdf41a8c5959</CommandID>
    <Name>Return_InterfaceConfiguration</Name>
    <DisplayLabel>Interface configuration</DisplayLabel>
    <Commands />
    <MainCode>#############################################################################
#                                                                           #
# This call should be able to update the interface configuration field      #
# of a given RouterInterface object.                                        #
# A returned bool value should indicate whether the update was successful   #                                      
#                                                                           #
#############################################################################

global ActionResult
# the interface to be queried is received in ConnectionInfo.aParam
queryInterface = ConnectionInfo.aParam

try:
  queryInterface.Configuration = GetInterfaces.GetInterfaceConfiguration(queryInterface.Name)
  ActionResult = True
except:
  ActionResult = False</MainCode>
    <Origin_X>179</Origin_X>
    <Origin_Y>143</Origin_Y>
    <Size_Width>146</Size_Width>
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
  <vScriptCommands>
    <vsID>24</vsID>
    <CommandID>d76d19d5-a5bf-458a-be34-94f8f0a30234</CommandID>
    <Name>RouterIDAndASNumber</Name>
    <DisplayLabel>Router ID + BGP AS</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution
global ScriptExecutor
global Session</MainCode>
    <Origin_X>518</Origin_X>
    <Origin_Y>780</Origin_Y>
    <Size_Width>150</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables># RouterID is a dictionary in dictionary, outer keyed by RoutingInstance name, inner keyed by RoutingProtocol as a string
RouterID = {}
# BGPASNumber is a dictionary, keyed by RoutingInstance name
BGPASNumber = {}</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>"""Return the RouterID for given instance and protocol"""
def GetRouterID(self, protocol, instance):
  rid = ""
  instanceName = "master"
  if instance != None: instanceName = instance.Name.lower()
  if len(self.RouterID.get(instanceName, {})) == 0 : self.CalculateRouterIDAndASNumber(instance)
  instanceRIDs = self.RouterID.get(instanceName, None)
  if instanceRIDs != None:
    rid = instanceRIDs.get(str(protocol), "")
  return rid
  
def GetBGPASNumber(self, instance):
  instanceName = "master"
  if instance != None: instanceName = instance.Name.lower()
  if len(self.BGPASNumber) == 0 : self.CalculateRouterIDAndASNumber(instance)
  return self.BGPASNumber.get(instanceName, "")

"""Parse the RouterID and AS number for the requested RoutingInstance"""  
def CalculateRouterIDAndASNumber(self, instance):
  global _runningRoutingProtocols
  instanceName = "master"
  if instance != None: instanceName = instance.Name.lower()
  if self.RouterID.get(instanceName, None) == None: self.RouterID[instanceName] = {}
  
  # Global router ID is a the router ID of the most preferred routing protocol
  globalRouterID = ConnectionInfo.DeviceIP
  
  cmd = "show configuration routing-options"
  if instanceName.lower() != "master" : cmd = "show configuration routing-instances {0} routing-options".format(instanceName)
  routingOptions = Session.ExecCommand(cmd)
  rid = re.findall(r"(?&lt;=router-id )[\d.]{0,99}", routingOptions)
  if len(rid) &gt; 0 : globalRouterID = rid[0]
  # get the running routing protocols for this routing instance
  runnintRoutingProtocols = _runningRoutingProtocols.get(instanceName, None)
  # sort the routing protocols by preference (its integer value)
  sRoutingProtocols = sorted(runnintRoutingProtocols, key=lambda p: int(p))
  for thisProtocol in sRoutingProtocols:  
    if thisProtocol == L3Discovery.NeighborProtocol.BGP:
      # init dictionary for protocol if empty
      if self.RouterID[instanceName].get(str(thisProtocol), None) == None: self.RouterID[instanceName][str(thisProtocol)] = {}
      # construct CLI command
      cmd = "show bgp neighbor instance {0}".format(instanceName)
      bgpNeighbors = Session.ExecCommand(cmd)
      # execute CLI command and parse result
      rid = re.findall(r"(?&lt;=Local ID: )[\d.]{0,99}", bgpNeighbors)
      if len(rid) &gt; 0 : self.RouterID[instanceName][str(thisProtocol)] = rid[0]
      elif globalRouterID != "" : self.RouterID[instanceName][str(thisProtocol)] = globalRouterID
      # get AS number
      if self.BGPASNumber.get(instanceName, None) == None: self.BGPASNumber[instanceName]= ""
      ASes = re.findall(r"(?&lt;=AS )[\d.]{0,99}",  bgpNeighbors)
      if len(ASes) &gt;= 2 : self.BGPASNumber[instanceName] = ASes[1]
      else : 
        ASes = re.findall(r"(?&lt;=autonomous-system )[\d.]{0,99}", routingOptions)
        if len(ASes) &gt; 0 : self.BGPASNumber[instanceName] = ASes[0]
      
    elif thisProtocol == L3Discovery.NeighborProtocol.OSPF:
      # init dictionary for protocol if empty
      if self.RouterID[instanceName].get(str(thisProtocol), None) == None: self.RouterID[instanceName][str(thisProtocol)] = {}
      # construct CLI command
      cmd = "show ospf overview"
      if instanceName.lower() != "master" : cmd += " instance {0}".format(instanceName)
      # execute CLI command and parse result
      ospfStatus = Session.ExecCommand(cmd)
      rid = re.findall(r"(?&lt;=Router ID: )[\d.]{0,99}", ospfStatus)
      if len(rid) &gt; 0 : self.RouterID[instanceName][str(thisProtocol)] = rid[0]
      elif globalRouterID != "" : self.RouterID[instanceName][str(thisProtocol)] = globalRouterID
      
    elif thisProtocol == L3Discovery.NeighborProtocol.LLDP:
      # init dictionary for protocol if empty
      if self.RouterID[instanceName].get(str(thisProtocol), None) == None: self.RouterID[instanceName][str(thisProtocol)] = {}
      # only for default (global) routing instance
      if instanceName.lower() == "master" :
        # execute CLI command and parse result
        lldpInfo = Session.ExecCommand("show lldp local-information")
        lldpStatus = re.findall(r"(?:Chassis ID\s+: )([0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+:[0-9a-f]+)", lldpInfo)
        if len(lldpStatus) &gt; 0 : self.RouterID[instanceName][str(thisProtocol)] = lldpStatus[0]


    elif thisProtocol == L3Discovery.NeighborProtocol.RIP:
      # init dictionary for protocol if empty
      if self.RouterID[instanceName].get(str(thisProtocol), None) == None: self.RouterID[instanceName][str(thisProtocol)] = {}
      # always use global router-id
      # TODO : this may require tuning
      self.RouterID[instanceName][str(thisProtocol)] = globalRouterID       
      
    elif thisProtocol == L3Discovery.NeighborProtocol.STATIC:  
      # init dictionary for protocol if empty
      if self.RouterID[instanceName].get(str(thisProtocol), None) == None: self.RouterID[instanceName][str(thisProtocol)] = {}
      # always use global router-id
      self.RouterID[instanceName][str(thisProtocol)] = globalRouterID 
      
    else :
      self.RouterID[instanceName][str(thisProtocol)] = globalRouterID   
        
def Reset(self):
  self.RouterID = {}
  self.BGPASNumber = {}</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1404, Height=1074}|{X=264,Y=48}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>25</vsID>
    <CommandID>99e3a404-ae04-455f-bea8-6b791a4c42e0</CommandID>
    <Name>Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global _hostName

_versionInfo = Version.GetVersion()
_hostName = Session.GetHostName();
if "junos" in _versionInfo.lower():
  ActionResult = True
else :
  ActionResult = False</MainCode>
    <Origin_X>561</Origin_X>
    <Origin_Y>29</Origin_Y>
    <Size_Width>122</Size_Width>
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
  <vScriptCommands>
    <vsID>26</vsID>
    <CommandID>a3696ee7-5dab-4785-a63f-0b145e6cb134</CommandID>
    <Name>Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Commands />
    <MainCode>global _versionInfo
global _hostName
global _stackCount
global _runningRoutingProtocols
global _logicalSystems
global _routingInstances
# reset global variables
_versionInfo = None
_hostName = None
_stackCount = -1
_logicalSystems = []
_routingInstances = {}
_runningRoutingProtocols = {}
# reset objects
Inventory.Reset()
Version.Reset()
SystemSerial.Reset()
RouterIDAndASNumber.Reset()
GetInterfaces.Reset()</MainCode>
    <Origin_X>253</Origin_X>
    <Origin_Y>89</Origin_Y>
    <Size_Width>121</Size_Width>
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
    <EditorSize>{Width=696, Height=689}|{X=26,Y=26}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>27</vsID>
    <CommandID>12a6fafd-acab-45fc-8df7-19915dbf632f</CommandID>
    <Name>RegisterNHRP</Name>
    <DisplayLabel>Register NHRP</DisplayLabel>
    <Commands />
    <MainCode># The NetworkRegistry object is received in ConnectionInfo.aParam
nRegistry = ConnectionInfo.aParam

# The IRouter object required by nRegistry.RegisterNHRPPeer() call is received in ConnectionInfo.bParam
iRouter = ConnectionInfo.bParam

# The Routing instance reference is received in cParam
instance = ConnectionInfo.cParam

# collect VRRP information
vrrpSummary = Session.ExecCommand("show vrrp summary")
VIPAddress = ""
GroupID = ""
PeerAddress = ""
isActive = False
ri = None

for thisLine in vrrpSummary.splitlines():
  try:
    indentLevel = len(thisLine) - len(thisLine.lstrip(' '))
    if indentLevel == 0:
      # interface definition is changing
      if GroupID != "" and VIPAddress != "":
        nRegistry.RegisterNHRPPeer(iRouter, instance, ri, L3Discovery.NHRPProtocol.VRRP, isActive, VIPAddress, GroupID, PeerAddress)
        VIPAddress = ""
        GroupID = ""
        PeerAddress = ""
        ri = None
      # -- 
      words = filter(None, thisLine.split(" "))
      if len(words) &gt;= 3 :
        ifName = words[0]
        isActive = "master" in thisLine.lower()
        ri = GetInterfaces.GetInterfaceByName(ifName, instance)
        GroupID = words[2]
      continue
    if ri != None:
      words = filter(None, thisLine.split(" "))
      if len(words) == 2:
        role = words[0]
        if role == "lcl" :
          pass
        elif role == "mas" :
          PeerAddress = words[1]
        elif role == "vip" :
          VIPAddress = words[1]
               
  except Exception as Ex:
    message = "JunOS Router Module Error : could not parse NHRP information &lt;{0}&gt; because : {1} ".format(thisLine, str(Ex))
    System.Diagnostics.DebugEx.WriteLine(message)
    
# -- register the last one
if ri != None and VIPAddress != "" and GroupID != "" :
  nRegistry.RegisterNHRPPeer(iRouter, instance, ri, L3Discovery.NHRPProtocol.VRRP, isActive, VIPAddress, GroupID, PeerAddress)    
</MainCode>
    <Origin_X>410</Origin_X>
    <Origin_Y>706</Origin_Y>
    <Size_Width>139</Size_Width>
    <Size_Height>43</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>This call will check if VRRP protocol is running on device
and will register VIP addresses</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1168, Height=983}|{X=2533,Y=147}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>28</vsID>
    <CommandID>f48a95a7-36ad-49ad-b066-49b123f2b0c0</CommandID>
    <Name>GetInterfaces</Name>
    <DisplayLabel>Get interfaces</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>688</Origin_X>
    <Origin_Y>782</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables># These are the interfaces collected by ParseInterfaces() method. A dictionary, keyed by routing instance name
Interfaces = {}
# All interfaces configuration. Unparsed, as returned by CLI command
AllInterfaceConfiguration = ""
# Interface config cache. A dictionary keyed by Interface Name
_interfaceConfigurations = {}
# List of interface-ranges
InterfaceRanges = []
</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>
"""Collects interface details for all interfaces of specified routing instance, but do not collect interface configuration """
def ParseInterfaces(self, instance) :
  from System.Net import IPAddress
  # Get interface range definitions
  if len(self.InterfaceRanges) == 0 : self.ParseInterfaceRanges()
  # Get the interfaces configuration
  if self.AllInterfaceConfiguration == "" : self.ParseInterfaceConfigurations()
  # Init interface dictionary for instance
  instanceName = "master"
  if instance : instanceName = instance.Name
  if self.Interfaces.get(instanceName, None) == None:
    self.Interfaces[instanceName] = [] 
  # Query the device interfaces
  if instanceName.lower() != "master" : 
    interfaces = Session.ExecCommand("show interfaces routing-instance {0} terse".format(instanceName)).splitlines()
  else :
    interfaces = Session.ExecCommand("show interfaces terse").splitlines()
    
  # Because JunOS reports the VRRP VIP addresses in "show interface terse" output, it is necessary to 
  # check interface ip of VRRP enabled interfaces
  if instanceName.lower() != "master" :
    vrrpSummary = Session.ExecCommand("show vrrp logical-system {0} summary | match lcl".format(instance.LogicalSystemName)).splitlines()
  else:
    vrrpSummary = Session.ExecCommand("show vrrp summary | match lcl").splitlines()
  # Parse the result and fill up self.Interfaces list
  for line in interfaces:  
    words = filter(None, line.split(" "))
    ifName = words[0]
    intfLun = re.findall(r"\.\d+$", ifName)
    if self.IsInterrestingInterface(ifName):
      if len(words) &gt;= 4:
        ifProtocol = words[3]
        # ifProtocol could be inet, eth-switch, aenet
        if ifProtocol == "inet" and len(words) &gt;= 5:
          # words should look like : xe-0/0/25.0,up,up,inet,172.20.1.18/31 
          ifIPAndMask = words[4].Split("/")
          # create a reference variable to pass it to TryParse (this is an out parameter in .Net)
          ipa = clr.Reference[IPAddress]()
          # check if this is a valid ip address
          if IPAddress.TryParse(ifIPAndMask[0], ipa):
            ri = L3Discovery.RouterInterface()
            ri.Name = ifName
            ri.PortMode = L3Discovery.RouterInterfacePortMode.Routed
            # check if VRRP runs on interface
            vrrpLine = next((line for line in vrrpSummary if line.startswith(ifName)), None)
            if vrrpLine != None:
              # VRRP is running on interface, use the lcl address
              # Address should be the last word
              vrrpLineWords = filter(None, vrrpLine.split(" "))
              ri.Address = vrrpLineWords[len(vrrpLineWords)-1]
            else :
              # VRRP is not running on interface, use address from "show interface terse"
              ri.Address = ifIPAndMask[0]
            ri.Status =  "{0},{1}".format(words[1], words[2])
            if len(ifIPAndMask) &gt;= 2 : ri.MaskLength = ifIPAndMask[1]
            else : ri.MaskLength = ""
            ri.Configuration = self.GetInterfaceConfiguration(ri.Name)
            self.Interfaces[instanceName].Add(ri) 
            # If this is a logical unit, we may be facing with an L3 subinterface
            if len(intfLun) == 1:
              phIntfName = re.sub(r"\.\d+$", "", ri.Name)
              phri = next((intf for intf in self.Interfaces[instanceName] if intf.Name == phIntfName), None)
              if phri != None:
                # Lets check if vlan-tagging has been configured on physical interface
                if phri.Configuration and ("vlan-tagging" in phri.Configuration or "flexible-vlan-tagging" in phri.Configuration):
                  # vlan tagging is enabled, so this ius an L3 subinterface
                  phri.PortMode = L3Discovery.RouterInterfacePortMode.L3Subinterface
                  if phri.VLANS == None : existingVLANs = []
                  else : existingVLANs = filter(None, phri.VLANS.split("|"))
                  # Get vlan-id from configuration. If not found, assume lun number equals to the VLAN ID
                  m_vlanID = re.findall(r"(?&lt;=vlan-id )\d+", ri.Configuration)
                  if len(m_vlanID) == 1 : 
                    VLANID = m_vlanID[0]
                    existingVLANs.append(VLANID)
                    phri.VLANS = "|".join(existingVLANs) 
                else:
                  # vlan tagging is enabled, so this ius an L3 subinterface
                  phri.PortMode = L3Discovery.RouterInterfacePortMode.Routed
                      
        elif ifProtocol == "eth-switch" :
          # words should look like : ge-3/0/36.0,up,up,eth-switch        
          ri = L3Discovery.RouterInterface()
          ri.Name = ifName
          ri.Address = ""
          ri.MaskLength = ""
          ri.Status =  "{0},{1}".format(words[1], words[2])
          ri.Configuration = self.GetInterfaceConfiguration(ri.Name)
          ri.PortMode = L3Discovery.RouterInterfacePortMode.Access
          if ri.Configuration:
            # We have explicit port configuration 
            # First get port mode
            pm = re.findall(r"(?&lt;=port-mode )[^;]+", ri.Configuration, re.IGNORECASE)
            if len(pm) == 1:
              mode = pm[0].strip().lower()
              if mode == "access" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Access
              elif mode == "trunk" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Trunk
            else :
              pm = re.findall(r"(?&lt;=interface-mode )[^;]+", ri.Configuration, re.IGNORECASE)
              if len(pm) == 1:
                mode = pm[0].strip().lower()
                if mode == "access" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Access
                elif mode == "trunk" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Trunk
              else : 
                # Default to access mode
                ri.PortMode =  L3Discovery.RouterInterfacePortMode.Access
            # Then get VLANs
            vlans = re.findall(r"(?&lt;=members )\[?([\s\w\-]+)", ri.Configuration, re.IGNORECASE)
            if len(vlans) == 1 : 
              vlanList = filter(None, vlans[0].strip().split(" "))
              ri.VLANS = "|".join(vlanList)
            self.Interfaces[instanceName].Add(ri)   
            # If this is a logical unit, let the physical interface inherit properties
            if len(intfLun) == 1:
              phIntfName = re.sub(r"\.\d+$", "", ri.Name)
              phri = next((intf for intf in self.Interfaces[instanceName] if intf.Name == phIntfName), None)
              if phri != None:
                phri.PortMode = ri.PortMode
                phri.VLANS = ri.VLANS
                phri.Status = ri.Status
          else:
            # Do not have explicit port configuration , check InterfaceRanges
            phIntfName = re.sub(r"\.\d+$", "", ri.Name)
            ir = next((ir for ir in self.InterfaceRanges if ir.IsInterfaceInRange(phIntfName)), None)
            if ir != None:
              # Found the interface in a range, inherit range properties
              if ir.portMode == "access" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Access
              elif ir.portMode == "trunk" : ri.PortMode =  L3Discovery.RouterInterfacePortMode.Trunk
              ri.VLANS = "|".join(ir.vlanMembers)
            
        elif ifProtocol == "aenet" :
          # words should look like : xe-3/0/44.0,up,up,aenet,--&gt;,ae3.0      
          ri = L3Discovery.RouterInterface()
          ri.Name = ifName
          ri.Address = ""
          ri.MaskLength = ""
          ri.Status =  "{0},{1}".format(words[1], words[2])
          ri.AggregateID = words[5]
          ri.Configuration = self.GetInterfaceConfiguration(ri.Name)
          # PortMode and VLANS will be processed later in a second pass
          self.Interfaces[instanceName].Add(ri)       
           
      elif len(words) == 3:      
        # This is the physical interface. Might be unconfigured
        # words should look like : ge-3/0/36.0,up,up        
        ri = L3Discovery.RouterInterface()
        ri.Name = ifName
        ri.Address = ""
        ri.MaskLength = ""
        ri.Status =  "{0},{1}".format(words[1], words[2])
        ri.Configuration = self.GetInterfaceConfiguration(ri.Name)
        if ri.Configuration:
          # in some cases JunOS forgets to report the interface as "aenet" in "show interfaces terse" output, therefore we perform this step
          re_aggID = re.findall(r"(?&lt;=802.3ad)[\s\d\w]+", ri.Configuration, re.IGNORECASE)
          if len(re_aggID) == 1:
            ri.AggregateID = re_aggID[0].strip()
        self.Interfaces[instanceName].Add(ri)  
        
  # Post-process aenet interfaces to inherit VLANs and portMode from aggregate interface
  aggregatedInterfaces = [intf for intf in self.Interfaces[instanceName] if intf.AggregateID]
  for thisAaggregatedInterface in aggregatedInterfaces:
    aggregatorInterface = next((intf for intf in self.Interfaces[instanceName] if intf.Name == thisAaggregatedInterface.AggregateID), None)
    if aggregatorInterface != None:

      
      thisAaggregatedInterface.VLANS = aggregatorInterface.VLANS
      thisAaggregatedInterface.PortMode = aggregatorInterface.PortMode

      
  # Process descriptions
  if instanceName.lower() != "master" : 
    interfaceDescriptions = Session.ExecCommand("show interfaces routing-instance {0} descriptions".format(instanceName)).splitlines()
  else :
    interfaceDescriptions = Session.ExecCommand("show interfaces descriptions").splitlines()
  for line in interfaceDescriptions:
    words = filter(None, line.split(" "))
    if len(words) &gt;= 4:
      ifName = words[0]
      foundInterface = next((intf for intf in self.Interfaces[instanceName] if intf.Name == ifName), None)
      if foundInterface != None : foundInterface.Description = " ".join([t for t in words if words.index(t) &gt;= 3])


""" Return the list of RouterInterfaces that have a valid IPAddress"""
def GetRoutedInterfaces(self, instance):
  # Init interface dictionary for instance
  instanceName = "master"
  if instance : instanceName = instance.Name
  if self.Interfaces.get(instanceName, None) == None:
    self.Interfaces[instanceName] = [] 
  # check interface list for this instance
  if len(self.Interfaces[instanceName]) == 0 : self.ParseInterfaces(instance)
  routedInterfaces = filter(lambda x: x.Address != "", self.Interfaces[instanceName])
  return routedInterfaces

""" Return the list of device interfaces"""
def GetAllInterfaces(self, instance):
  # Init interface dictionary for instance
  instanceName = "master"
  if instance : instanceName = instance.Name
  if self.Interfaces.get(instanceName, None) == None:
    self.Interfaces[instanceName] = [] 
  # check interface list for this instance
  if len(self.Interfaces[instanceName]) == 0 : self.ParseInterfaces(instance)
  return self.Interfaces[instanceName]
  
"""Returns a RouterInterface object for the interface specified by its name"""        
def GetInterfaceByName(self, ifName, instance):
  # Init interface dictionary for instance
  instanceName = "master"
  if instance : instanceName = instance.Name
  if self.Interfaces.get(instanceName, None) == None:
    self.Interfaces[instanceName] = [] 
  # check interface list for this instance
  if len(self.Interfaces[instanceName]) == 0 : self.ParseInterfaces(instance)
  foundInterface = next((intf for intf in self.Interfaces[instanceName] if intf.Name == ifName), None)
  return foundInterface
  
""" Returns a RouterInterface object for the interface specified by its ip address """    
def GetInterfaceNameByAddress(self, ipAddress, instance):
  # Init interface dictionary for instance
  instanceName = "master"
  if instance : instanceName = instance.Name
  if self.Interfaces.get(instanceName, None) == None:
    self.Interfaces[instanceName] = [] 
  # check interface list for this instance
  if len(self.Interfaces[instanceName]) == 0 : self.ParseInterfaces(instance)
  ifName = ""
  foundInterface = next((intf for intf in self.Interfaces[instanceName] if intf.Address == ipAddress), None)
  if foundInterface != None:
    ifName = foundInterface.Name
  return ifName 

""" Return the configuration of an interface """
def GetInterfaceConfiguration(self, ifName):
  if self.AllInterfaceConfiguration == "" : self.ParseInterfaceConfigurations()
  # Use interface name without unit name to get full configuration
  # intfName = re.sub(r"\.\d+$", "", ifName)
  ifConfig = self._interfaceConfigurations.get(ifName, "")
  return ifConfig 

""" Executes CLI command to query all interfaces configuration from device """  
def ParseInterfaceConfigurations(self):
  self.AllInterfaceConfiguration = Session.ExecCommand("show configuration interfaces")
  # Clear configuration dictionary
  self._interfaceConfigurations = {}
  currentIntfName = ""
  currentConfiguration = []
  for thisLine in self.AllInterfaceConfiguration.splitlines():
    try:
      if thisLine == "}" :  continue
      lineindent = len(thisLine) - len(thisLine.strip())
      if lineindent == 0 :
        # This should be a new interface
        if currentIntfName != "":
          # Need to separate by units
          unitName = ""
          logicalInterfaceConfiguration = []
          for confLine in currentConfiguration:
            if confLine.strip().startswith("unit"):
              # This should be a new unit
              if unitName == "":
                # This is the physicyl interface
                self._interfaceConfigurations[currentIntfName] = "\r\n".join(logicalInterfaceConfiguration)
              else:
                # Add current logical interface to _interfaceConfigurations
                unitNumber = re.findall(r"\d+", unitName)[0]
                logicalIntfName = currentIntfName + "." + unitNumber
                self._interfaceConfigurations[logicalIntfName] = "\r\n".join(logicalInterfaceConfiguration)
              if "{" in confLine:
                unitName =  confLine[0:confLine.index("{")].strip()
              elif ";" in confLine:
                unitName =  confLine[0:confLine.index(";")].strip()
              logicalInterfaceConfiguration = []
            else:
              logicalInterfaceConfiguration.append(confLine)
          # Add the last physical/logical interface to _interfaceConfigurations
          if unitName != "":
            unitNumber = re.findall(r"\d+", unitName)[0]
            logicalIntfName = currentIntfName + "." + unitNumber
            self._interfaceConfigurations[logicalIntfName] = "\r\n".join(logicalInterfaceConfiguration)   
          else:
            self._interfaceConfigurations[currentIntfName] = "\r\n".join(currentConfiguration)   

        if "{" in thisLine:
          currentIntfName = thisLine[0:thisLine.index("{")].strip()
        elif ";" in thisLine:
          currentIntfName = thisLine[0:thisLine.index(";")].strip()
        # Validate what we got
        if not self.IsInterrestingInterface(currentIntfName) : 
          currentIntfName = ""
        # Clear current configuration
        currentConfiguration = []
      else:
        currentConfiguration.append(thisLine)
    except Exception as Ex:
      message = "JunOS Router Module Error : could not parse an interface configuration for line &lt;{0}&gt;. Error is : {1} ".format(thisLine, str(Ex))
      System.Diagnostics.DebugEx.WriteLine(message)   


""" Parse out the interface range definitions from device"""
def ParseInterfaceRanges(self):
  ranges = Session.ExecCommand("show configuration interfaces | display set | match interface-range")
  for line in [l.lower().strip() for l in ranges.splitlines()] :
    try:
      words = line.split(" ")
      if "interface-range" in line :
        if " member-range " in line :
          # line is like : set interfaces interface-range WORKSTATION-IP-PHONE member-range ge-0/0/0 to ge-0/0/41
          # add ranges
          rangeName = words[3]
          fromInterfaceName = words[5]
          toInterfaceName = words[7]
          # find if already a defined range
          foundRange = next((ir for ir in self.InterfaceRanges if ir.rangeName == rangeName), None)
          if foundRange != None : 
            foundRange.AddInterfaceSpan(fromInterfaceName, toInterfaceName)
          else:
            newRange = InterfaceRange(rangeName)
            newRange.AddInterfaceSpan(fromInterfaceName, toInterfaceName)
            self.InterfaceRanges.append(newRange)  
        elif " member " in line :
            # line is like : set interfaces interface-range WORKSTATION-IP-PHONE member ge-0/0/0
            # add ranges
            rangeName = words[3]
            fromInterfaceName = words[5]
            toInterfaceName = words[5]
            # find if already a defined range
            foundRange = next((ir for ir in self.InterfaceRanges if ir.rangeName == rangeName), None)
            if foundRange != None : 
              foundRange.AddInterfaceSpan(fromInterfaceName, toInterfaceName)
            else:
              newRange = InterfaceRange(rangeName)
              newRange.AddInterfaceSpan(fromInterfaceName, toInterfaceName)
              self.InterfaceRanges.append(newRange)   
        else :
          rangeName = words[3]
          # find a defined range (should aready be in the list)
          foundRange = next((ir for ir in self.InterfaceRanges if ir.rangeName == rangeName), None)
          if foundRange != None : 
            # set interface properties for ranges
            if "interface-mode" in line :
              # line is like : set interfaces interface-range WORKSTATION-IP-PHONE unit 0 family ethernet-switching interface-mode access
              foundRange.portMode = words[len(words) - 1]         
            elif "port-mode" in line :
              # line is like : set interfaces interface-range WORKSTATION-IP-PHONE unit 0 family ethernet-switching interface-mode access
              foundRange.portMode = words[len(words) - 1] 
            elif "vlan members" in line :
              # line is like : set interfaces interface-range WORKSTATION-IP-PHONE unit 0 family ethernet-switching vlan members Corp-Access
              foundRange.vlanMembers.append(words[len(words) - 1])
          else:
            raise Exception("Interface range name &lt;{0}&gt; definition is missing".format(rangeName))
  
    except Exception as Ex:
      message = "JunOS Router Module Error : could not parse an interface range for line &lt;{0}&gt;. Error is : {1} ".format(line, str(Ex))
      System.Diagnostics.DebugEx.WriteLine(message)   
 
  pass
  

""" Determines if a given name is an interface name we want to parse"""
def IsInterrestingInterface(self, intfName):
  return intfName.startswith("ge-") or intfName.startswith("xe-") or intfName.startswith("et-") or intfName.startswith("ae") or intfName.startswith("irb") or intfName.startswith("vlan") or intfName.startswith("lo")
    
def Reset(self) :
  self.Interfaces = {}
  self.AllInterfaceConfiguration = ""
  self.InterfaceRanges = []
</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description />
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1322, Height=966}|{X=309,Y=65}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>29</vsID>
    <CommandID>58d3148e-492b-49f3-a4a6-3967f17509a5</CommandID>
    <Name>GetLogicalSystems</Name>
    <DisplayLabel>Logical systems</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo
global _logicalSystems

if len(_logicalSystems) == 0:
  cmd = "show configuration logical-systems | display set"
  cmdResult = Session.ExecCommand(cmd).lower().splitlines()
  lsLines = [line for line in cmdResult if line.startswith("set logical system")]
  if len(lsLines) == 0 : ActionResult = ["Default"]
  else :
    repLSs = re.findall(r"(?&lt;=logical-systems ).[a-zA-Z0-9]+", lsLines)
    _logicalSystems = repLSs
    
ActionResult = _logicalSystems</MainCode>
    <Origin_X>651</Origin_X>
    <Origin_Y>77</Origin_Y>
    <Size_Width>128</Size_Width>
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
    <EditorSize>{Width=895, Height=701}|{X=195,Y=123}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>30</vsID>
    <CommandID>4c1bf1af-979a-489b-a640-9887589d1bc6</CommandID>
    <Name>GetRoutingInstances</Name>
    <DisplayLabel>Routing Instances</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionInfo
global _routingInstances

# the logcal system name to check is received in aParam
logicalSystem = ConnectionInfo.aParam
if not logicalSystem : logicalSystem = "Default"
if _routingInstances.get(logicalSystem, None) == None : 
  _routingInstances[logicalSystem] = []
  
if len(_routingInstances[logicalSystem]) == 0:
  # contruct CLI command
  cmd = "show route instance | match vrf"
  if logicalSystem.lower() != "default":
    cmd = "show route instance operational logical-system {0} | match vrf".format(logicalSystem)
  # execute command and parse result
  cmdResult= Session.ExecCommand(cmd)
  instanceNames =  c = map(lambda e: e.strip("vrf "), filter(lambda e: e != "{master}", cmdResult.splitlines()))
  instances = []
  # Add the default (global) instance
  defInstance = L3Discovery.RoutingInstance()
  defInstance.LogicalSystemName = logicalSystem
  defInstance.Name = "master"
  instances.append(defInstance)
  # Add all other instances
  for thisInstanceName in instanceNames:
    thisInstance = L3Discovery.RoutingInstance()
    thisInstance.LogicalSystemName = logicalSystem
    thisInstance.Name = thisInstanceName
    instances.append(thisInstance)

  _routingInstances[logicalSystem] = instances
  
ActionResult = _routingInstances[logicalSystem]</MainCode>
    <Origin_X>710</Origin_X>
    <Origin_Y>132</Origin_Y>
    <Size_Width>127</Size_Width>
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
    <EditorSize>{Width=1060, Height=806}|{X=438,Y=110}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptConnector>
    <cID>0</cID>
    <ConnectorID />
    <Name>Start_GetSupportTag</Name>
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
    <Name>SwitchTask_Unknown</Name>
    <DisplayLabel>Unknown</DisplayLabel>
    <Left>2</Left>
    <Right>1</Right>
    <Condition>return True</Condition>
    <Variables />
    <Break>false</Break>
    <Order>23</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>2</cID>
    <ConnectorID />
    <Name>SwitchTask_SupportTag</Name>
    <DisplayLabel>GetSupportTag</DisplayLabel>
    <Left>2</Left>
    <Right>3</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportTag"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>2</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=156,Y=156}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>3</cID>
    <ConnectorID />
    <Name>SwitchTask_Stop_0</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Left>2</Left>
    <Right>25</Right>
    <Condition>return ConnectionInfo.Command == "Initialize"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>0</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>4</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnInventory</Name>
    <DisplayLabel>Get Inventory</DisplayLabel>
    <Left>2</Left>
    <Right>4</Right>
    <Condition>return ConnectionInfo.Command == "GetInventory"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>9</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>5</cID>
    <ConnectorID />
    <Name>SwitchTask_GetSystemSerial</Name>
    <DisplayLabel>Get Serial</DisplayLabel>
    <Left>2</Left>
    <Right>6</Right>
    <Condition>return ConnectionInfo.Command == "GetSystemSerial"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>10</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>6</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnVersion</Name>
    <DisplayLabel>Get version</DisplayLabel>
    <Left>2</Left>
    <Right>5</Right>
    <Condition>return ConnectionInfo.Command == "GetVersion"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>7</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>7</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnModelNumber</Name>
    <DisplayLabel>Get Model Number</DisplayLabel>
    <Left>2</Left>
    <Right>10</Right>
    <Condition>return ConnectionInfo.Command == "GetModelNumber"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>6</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>8</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnStackCount</Name>
    <DisplayLabel>Get Stack Count</DisplayLabel>
    <Left>2</Left>
    <Right>11</Right>
    <Condition>return ConnectionInfo.Command == "GetStackCount"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>11</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>9</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RoutingTable</Name>
    <DisplayLabel>Get Routing Table</DisplayLabel>
    <Left>2</Left>
    <Right>12</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutingTable"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>16</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>10</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RoutedInterfaces</Name>
    <DisplayLabel>Get Routed Interfaces</DisplayLabel>
    <Left>2</Left>
    <Right>13</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutedInterfaces"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>15</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>11</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RouterID</Name>
    <DisplayLabel>Get Router ID</DisplayLabel>
    <Left>2</Left>
    <Right>14</Right>
    <Condition>return ConnectionInfo.Command == "GetRouterID"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>8</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>12</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_ActiveRoutingProtocols</Name>
    <DisplayLabel>Ge tActive Protocols</DisplayLabel>
    <Left>2</Left>
    <Right>15</Right>
    <Condition>return ConnectionInfo.Command == "GetActiveProtocols"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>12</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>13</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_BGPASNumber</Name>
    <DisplayLabel>Get BGP AS</DisplayLabel>
    <Left>2</Left>
    <Right>16</Right>
    <Condition>return ConnectionInfo.Command == "GeBGPASNumber"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>14</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>14</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_HostName</Name>
    <DisplayLabel>Get HostName</DisplayLabel>
    <Left>2</Left>
    <Right>17</Right>
    <Condition>return ConnectionInfo.Command == "GetHostName"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>13</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>15</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_Platform</Name>
    <DisplayLabel>Get Platform</DisplayLabel>
    <Left>2</Left>
    <Right>18</Right>
    <Condition>return ConnectionInfo.Command == "GetPlatform"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>3</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>16</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_Type</Name>
    <DisplayLabel>Get Type</DisplayLabel>
    <Left>2</Left>
    <Right>19</Right>
    <Condition>return ConnectionInfo.Command == "GetType"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>4</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>17</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_Vendor</Name>
    <DisplayLabel>Get Vendor</DisplayLabel>
    <Left>2</Left>
    <Right>20</Right>
    <Condition>return ConnectionInfo.Command == "GetVendor"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>5</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>18</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_InterfaceByName</Name>
    <DisplayLabel>Get If By Name</DisplayLabel>
    <Left>2</Left>
    <Right>21</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceByName"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>17</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>19</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_InterfaceByIPAddress</Name>
    <DisplayLabel>Get If Bí IP</DisplayLabel>
    <Left>2</Left>
    <Right>22</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceNameByIPAddress"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>18</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>20</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_InterfaceConfiguration</Name>
    <DisplayLabel>Get If Config</DisplayLabel>
    <Left>2</Left>
    <Right>23</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceConfiguration"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>19</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>21</cID>
    <ConnectorID />
    <Name>SwitchTask_Stop_2</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Left>2</Left>
    <Right>26</Right>
    <Condition>return ConnectionInfo.Command == "Reset"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>1</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>22</cID>
    <ConnectorID />
    <Name>SwitchTask_RegisterNHRP</Name>
    <DisplayLabel>Register NHRP</DisplayLabel>
    <Left>2</Left>
    <Right>27</Right>
    <Condition>return ConnectionInfo.Command == "RegisterNHRP"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>20</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>23</cID>
    <ConnectorID />
    <Name>SwitchTask_GetLogicalSystems</Name>
    <DisplayLabel>Get Logica lSystems</DisplayLabel>
    <Left>2</Left>
    <Right>29</Right>
    <Condition>return ConnectionInfo.Command == "GetLogicalSystems"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>21</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=182,Y=182}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>24</cID>
    <ConnectorID />
    <Name>SwitchTask_GetRoutingInstances</Name>
    <DisplayLabel>Get Routing Instances</DisplayLabel>
    <Left>2</Left>
    <Right>30</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutingInstances"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>22</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=208,Y=208}</EditorSize>
  </vScriptConnector>
  <Parameters>
    <ScriptName>JunOS</ScriptName>
    <GlobalCode># last changed : 2018.11.18
scriptVersion = "4.0"
#--- v4.0 adds support for multiple routing instances, work with engine v7.0 or later ---
_hostName = None
_stackCount = -1
# The list of logical systems defined
_logicalSystems = []
# The dictionary of RoutingInstances keyed by LogicalSystem name
_routingInstances = {}
# The routing protocols run by this router, dictionary keyed by routing instamce name
_runningRoutingProtocols = {}

"""A span of two Interfaces"""
class InterfaceSpan():
  fromPIC = 0
  fromFPC = 0
  fromPort = 0
  toPIC = 0
  toFPC = 0
  toPort = 0
  
  """Initialize a new SwithInterfaceSpan by defining the from and to interface names"""
  def __init__(self, fromInterfaceName, toInterfaceName) :
    self.fromSwitchInterface = fromInterfaceName
    f = re.findall(r"\d+", fromInterfaceName.split(".")[0])
    if len(f) == 3 :
      self.fromFPC = int(f[0])
      self.fromPIC = int(f[1])
      self.fromPort = int(f[2])
    else:
      raise ValueError("FromInterface name is invalid")
    self.toSwitchInterface = toInterfaceName
    t = re.findall(r"\d+", toInterfaceName.split(".")[0])
    if len(t) == 3 :
      self.toFPC = int(t[0])
      self.toPIC = int(t[1])
      self.toPort = int(t[2])
    else:
      raise ValueError("ToInterface name is invalid")
    
  def IsInterfaceInRange(self, testSwitchInterface):
    t = re.findall(r"\d+", testSwitchInterface.split(".")[0])
    if len(t) == 3:
      testFPC = int(t[0])
      testPIC = int(t[1])
      testPort = int(t[2])
      matched = testFPC &gt;= self.fromFPC and  testFPC &lt;= self.toFPC and testPIC &gt;= self.fromPIC and testPIC &lt;= self.toPIC and testPort &gt;= self.fromPort and testPort &lt;= self.toPort  
      return matched
    else:
      return False
  


"""Manifests a Juniper specific Interface-Range definition"""
class InterfaceRange():
  rangeName = ""
  # The list of SwithInterfaceSpans for this range definition
  rangeSpans = []
  portMode = ""
  vlanMembers = []
  
  """Initialize a new SwithInterfaceRange object by range name"""
  def __init__(self, rangeName) :
    self.rangeName = rangeName
    self.rangeSpans = []
    self.vlanMembers = []
  
  """Adds a new SwitchInterfaceSpan to the range definition"""
  def AddInterfaceSpan(self, fromInterfaceName, toInterfaceName):
    self.rangeSpans.append(InterfaceSpan(fromInterfaceName, toInterfaceName))
    
  """Determines if a given SwitchInterface belongs to the range definition"""
  def IsInterfaceInRange(self, testSwitchInterface):
    return any(map(lambda r : r.IsInterfaceInRange(testSwitchInterface), self.rangeSpans))

</GlobalCode>
    <BreakPolicy>Before</BreakPolicy>
    <CustomNameSpaces>import re
import sys
import clr
clr.AddReferenceToFileAndPath("Common.dll")
clr.AddReferenceToFileAndPath("PGTNetworkMap.dll")
import PGT.Common
import L3Discovery
import System.Net</CustomNameSpaces>
    <CustomReferences />
    <DebuggingAllowed>false</DebuggingAllowed>
    <LogFileName />
    <WatchVariables />
    <Language>Python</Language>
    <IsTemplate>false</IsTemplate>
    <IsRepository>false</IsRepository>
    <EditorScaleFactor>0.7287844</EditorScaleFactor>
    <Description>This vScript implements a NetworkMap Router Module
capable of handling Juniper EX/MX/SRX devices runing JunOS.</Description>
    <EditorSize>{Width=784, Height=730}</EditorSize>
    <PropertiesEditorSize>{Width=1027, Height=759}|{X=446,Y=200}</PropertiesEditorSize>
  </Parameters>
</vScriptDS>