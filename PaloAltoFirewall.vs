<?xml version="1.0" standalone="yes"?>
<vScriptDS xmlns="http://tempuri.org/vScriptDS.xsd">
  <vScriptCommands>
    <vsID>0</vsID>
    <CommandID>fa445090-aac6-431f-803e-d1ecd2f474ae</CommandID>
    <Name>Start</Name>
    <DisplayLabel>Start</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>417</Origin_X>
    <Origin_Y>85</Origin_Y>
    <Size_Width>146</Size_Width>
    <Size_Height>63</Size_Height>
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
    <DisplayLabel>Unknown task - ERROR</DisplayLabel>
    <Commands />
    <MainCode>####################################################################################
#                                                                                  #
# This call should never executre if Router Module is implemented in a correct way #
#                                                                                  #
####################################################################################

raise ValueError("{0} vScripot Router received an unhandled Command request : {1}".format(Name, ConnectionInfo.Command))</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>119</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should never executre if Router Module is implemented in a correct way</Description>
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
    <MainCode>###########################################################
#                                                         #
# This is a central point to decide which call to perform #
# Connectors will be evaluated one by one in order.       #
# Take care of connector ordering !                       #
#                                                         #
###########################################################
pass</MainCode>
    <Origin_X>418</Origin_X>
    <Origin_Y>444</Origin_Y>
    <Size_Width>158</Size_Width>
    <Size_Height>81</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>This is a central point to decide which call to perform Connectors will be evaluated one by one in order.  
Take care of connector ordering !   </Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=794, Height=737}|{X=52,Y=52}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptCommand</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>3</vsID>
    <CommandID>02a4f2cf-e075-4253-b497-b17b410522d3</CommandID>
    <Name>ReturnSupportTag</Name>
    <DisplayLabel>Support Tag</DisplayLabel>
    <Commands />
    <MainCode>##############################################################################
#                                                                            #
# This call should return a descriptive text for this Router software module #
#                                                                            #
##############################################################################
global ActionResult

ActionResult = "{0} Support Module - Python vScript Parser v{1}".format(Name, scriptVersion)</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>276</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should return a descriptive text for this Router software module</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=679, Height=639}|{X=565,Y=282}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>4</vsID>
    <CommandID>6cf97c54-143f-44b3-9676-36be7032e63b</CommandID>
    <Name>ReturnInventory</Name>
    <DisplayLabel>Inventory</DisplayLabel>
    <Commands />
    <MainCode>################################################################
#                                                              #
# This call should be able to return device inventory string   #
#                                                              #
################################################################
global ActionResult

ActionResult = Version.GetVersion()</MainCode>
    <Origin_X>822</Origin_X>
    <Origin_Y>790</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return device inventory string </Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=568, Height=460}|{X=156,Y=156}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>5</vsID>
    <CommandID>843c946b-980d-456a-b9d8-61b59b14d2ac</CommandID>
    <Name>ReturnVersion</Name>
    <DisplayLabel>Version</DisplayLabel>
    <Commands />
    <MainCode>#################################################################
#                                                               #
# This call should be able to return device version information #
#                                                               #
#################################################################
global ActionResult

# Initialize element has already updated the VersionInfo global variable
# so return that one.

ActionResult = Version.GetVersion()</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>654</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return device version information</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=568, Height=460}|{X=182,Y=182}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>6</vsID>
    <CommandID>17c60dc8-aa02-445f-bb02-2b908fcd5e2b</CommandID>
    <Name>ReturnSerial</Name>
    <DisplayLabel>System Serial</DisplayLabel>
    <Commands />
    <MainCode>############################################################################
#                                                                          #
# This call should be able to return the serial numnber(s) of the device   #
#                                                                          #
############################################################################
global ActionResult

global ActionResult

_s = re.findall(r"(?&lt;=serial: ).*", Version.GetVersion())
if len(_s) &gt; 0:
 ActionResult = _s[0]
else:
  ActionResult = "n/a"</MainCode>
    <Origin_X>731</Origin_X>
    <Origin_Y>860</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the serial numnber(s) of the device </Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>7</vsID>
    <CommandID>0a008a33-b4ea-4606-a86a-6b4806b37469</CommandID>
    <Name>ReturnModelNumber</Name>
    <DisplayLabel>Model Number</DisplayLabel>
    <Commands />
    <MainCode>#####################################################################
#                                                                   #
# This call should be able to return Model number of this device    #
#                                                                   #
#####################################################################
global ActionResult

_m = re.findall(r"(?&lt;=model: ).*", Version.GetVersion())
if len(_m) &gt; 0:
 ActionResult = _m[0]
else:
  ActionResult = "n/a"</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>593</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return Model number of this device</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>8</vsID>
    <CommandID>6c275d41-4db4-49f3-8e1f-354ac2d0c456</CommandID>
    <Name>ReturnStackCount</Name>
    <DisplayLabel>Stack Count</DisplayLabel>
    <Commands />
    <MainCode>##############################################################################
#                                                                            #
# This call should be able to return the number of devices stacked together  #
#                                                                            #
##############################################################################
global ActionResult

stackCount == 1
#
# Implement required logic to get the correct number
#
ActionResult = stackCount;</MainCode>
    <Origin_X>138</Origin_X>
    <Origin_Y>857</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the number of devices stacked together</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>9</vsID>
    <CommandID>6dd1d716-8ad6-40b6-87a7-ea75cc145a18</CommandID>
    <Name>Return_RoutingTable</Name>
    <DisplayLabel>Routing Table</DisplayLabel>
    <Commands />
    <MainCode>#############################################################################
#                                                                           #
# This call should be able to return the full routing table of the device.  #
#                                                                           #
#############################################################################
global ActionResult
from System.Net import IPAddress

# RoutingInstance is received in aParam
instance= ConnectionInfo.aParam

parsedRoutes = []
if instance.Name.lower() != "default" :
  # query the route table of specified VR
  routeLines = Session.ExecCommand("show routing route virtual-router {0}".format(instance.Name)).splitlines()
else:
  # query full route table
  routeLines = Session.ExecCommand("show routing route").splitlines()
  
currentHeaderFields = []
currentHeaderLine = ""  
# iterate through the network blocks
for thisLine in routeLines:
  try:
    # a line with the first word of "destination " is the header
    if thisLine.startswith("destination "):
      currentHeaderLine = thisLine
      currentHeaderFields = filter(None, currentHeaderLine.split(" "))
      interfaceBlock = True
      aggregationGroup = False
      continue  
  
    words = filter(None, thisLine.split(" "))
    if len(words) &gt; 0:
      firstWord = words[0]
      # The line that contains a / character int he first word is a good candidate to check
      if "/" in firstWord:
        ipAdressAndMask = firstWord.split("/")
        prefixAddress = ipAdressAndMask[0]
        prefixLength = ipAdressAndMask[1]
        # create a reference variable to pass it to TryParse (this is an out parameter in .Net)
        ipa = clr.Reference[IPAddress]()
        # check if the last word is a valid ip address
        if IPAddress.TryParse(prefixAddress, ipa) and str(ipa.Value) == prefixAddress:    
          try:          
            # flag tells us the protocol type
            # flags: A:active, ?:loose, C:connect, H:host, S:static, ~:internal, R:rip, O:ospf, B:bgp, 
            #        Oi:ospf intra-area, Oo:ospf inter-area, O1:ospf ext-type-1, O2:ospf ext-type-2, E:ecmp
            # flags
            s = currentHeaderLine.index("flags")
            e = currentHeaderLine.index("age")
            rFlags = thisLine[s:e].strip()             
            
            isActiveRoute = "A" in rFlags
            if isActiveRoute:
              protocolType = rFlags.split()[1]
              thisLineProtocol = L3Discovery.NeighborProtocol.UNKNOWN
              if protocolType == "C" : thisLineProtocol = L3Discovery.NeighborProtocol.CONNECTED
              elif protocolType.startswith("O") : thisLineProtocol = L3Discovery.NeighborProtocol.OSPF
              elif protocolType == "H" : thisLineProtocol = L3Discovery.NeighborProtocol.DIRECT
              elif protocolType == "S" : thisLineProtocol = L3Discovery.NeighborProtocol.STATIC
              elif protocolType == "R" : thisLineProtocol = L3Discovery.NeighborProtocol.RIP
              elif protocolType == "B" : thisLineProtocol = L3Discovery.NeighborProtocol.BGP
              rte = L3Discovery.RouteTableEntry()
              rte.Protocol = str(thisLineProtocol)
              rte.RouterID = RouterIDAndASNumber.GetRouterID(rte.Protocol, instance)
              rte.Prefix = prefixAddress
              rte.MaskLength = int(prefixLength)
              # nexthop
              s = currentHeaderLine.index("nexthop")
              e = currentHeaderLine.index("metric")
              rte.NextHop = thisLine[s:e].strip()  
              # metric
              s = currentHeaderLine.index("metric")
              e = currentHeaderLine.index("flags")
              rte.Metric = thisLine[s:e].strip()                
              # interface
              s = currentHeaderLine.index("interface")
              e = currentHeaderLine.index("next-AS")
              rte.OutInterface = thisLine[s:e].strip() 
              # --
              rte.From = "" # don't know actually
              rte.Best = False # don't know actually
              rte.Tag = ""
              rte.AD = ""
              parsedRoutes.Add(rte)

          except Exception as Ex:
            message = "PaloAlto Router Module Error : could not parse a route table line because : " + str(Ex)
            System.Diagnostics.DebugEx.WriteLine(message)   

  except Exception as Ex:
    message = "PaloAlto Router Module Error : could not parse a route table line because : " + str(Ex)
    System.Diagnostics.DebugEx.WriteLine(message)
  
ActionResult = parsedRoutes</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>455</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the full routing table of the device</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=878, Height=791}|{X=26,Y=26}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>10</vsID>
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

# RoutingInszance is receied in aParam
instance = ConnectionInfo.aParam
ActionResult = GetInterfaces.GetRoutedInterfaces(instance)
ScriptSuccess = True</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>522</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the list of routed interfaces </Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=709, Height=659}|{X=78,Y=78}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>11</vsID>
    <CommandID>a2abda9f-20ed-4889-8e64-ac82f8cb2ade</CommandID>
    <Name>Return_RouterID</Name>
    <DisplayLabel>RouterID</DisplayLabel>
    <Commands />
    <MainCode>#################################################################
#                                                               #
# This call should be able to return the protocol dependent     #
# RouterID for this device. This means, that a router may have  #
# different router IDs for different routing protocols.         #
#                                                               #
#################################################################
global ActionResult

#
# Implement required logic to get the actual RouterID
# Consider some caching mechanism to speed up execution.
#

# The protocol for which to get the RouterID
protocol = ConnectionInfo.aParam
# The RoutingInstance is received in bParam
instance = ConnectionInfo.bParam
ActionResult = RouterIDAndASNumber.GetRouterID(protocol, instance)</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>723</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description> This call should be able to return RouterID of this device</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=836, Height=682}|{X=182,Y=182}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>12</vsID>
    <CommandID>fa1c0cc6-5d9c-49c5-8671-fd7aa4948f63</CommandID>
    <Name>Return_ActiveRoutingProtocols</Name>
    <DisplayLabel>Routing Protocols</DisplayLabel>
    <Commands />
    <MainCode>############################################################################################
#                                                                                          #
# This call should be able to return the list of RoutingProtocols running on nthis router  #
#                                                                                          #
############################################################################################
global ActionResult
global _runningRoutingProtocols
# The RoutingInstance object for the request passed in aParam
instance = ConnectionInfo.aParam
instanceName = ""
isDefaultInstance = True
if instance :
  instanceName = instance.Name
  isDefaultInstance = instance.IsDefaultRoutingInstance()

instanceProtocols = _runningRoutingProtocols.get(instanceName, None)
if instanceProtocols == None:
  _runningRoutingProtocols[instanceName] = []

if len(_runningRoutingProtocols[instanceName]) == 0 :
  # -- OSPF --
  if instanceName:
    response = Session.ExecCommand("show routing protocol ospf summary virtual-router {0}".format(instanceName))
  else:
    response = Session.ExecCommand("show routing protocol ospf summary")
  if (response.strip("\r\n ") != ""): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.OSPF)
  ## -- RIP --
  if instanceName:  
    response = Session.ExecCommand("show routing protocol rip summary virtual-router {0}".format(instanceName))
  else:
    response = Session.ExecCommand("show routing protocol rip summary")
  if (response.strip("\r\n ") != ""): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.RIP)  
  ## -- BGP --
  if instanceName:  
    response = Session.ExecCommand("show routing protocol bgp summary virtual-router {0}".format(instanceName))
  else:
    response = Session.ExecCommand("show routing protocol bgp summary")
  if (response.strip("\r\n ") != ""): 
    _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.BGP)
  # -- IPSEC --
  try:
    response = Session.ExecCommand("show vpn tunnel")
    rep_TunnelNum = r"(?:Total\s)(\d+)(?:\s+tunnels)"
    numberofTunnels = int(GetRegexGroupMatches(rep_TunnelNum, response, 1)[0])
    if numberofTunnels &gt; 0:
      _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.IPSEC)
    else :
      response = Session.ExecCommand("show global-protect-gateway gateway")
      if "GlobalProtect Gateway" in response:
        _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.IPSEC)
      else:
        response = Session.ExecCommand("show global-protect-satellite current-gateway")
        if "GlobalProtect Satellite" in response:
          _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.IPSEC)        
  except:
    pass
  # -- LLDP only for default routing instance (VR) --
  if isDefaultInstance :
    response = Session.ExecCommand("show lldp neighbors all")
    if (response.strip("\r\n ") != ""): 
      _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.LLDP)
  # -- STATIC -- 
  if instanceName:   
    response = Session.ExecCommand("show routing route type static count 1")
  else:
    response = Session.ExecCommand("show routing route type static count 1 virtual-router {0}".format(instanceName))
  _staticRouteCount = re.findall(r"(?&lt;=total routes shown: ).*", response)
  if len(_staticRouteCount) &gt; 0 : 
    _staticRouteCount = _staticRouteCount[0]
    _sc = 0
    
    try:
      _sc = int(_staticRouteCount)
    except:
      _sc = -1
    
    if _sc &gt; 0 : _runningRoutingProtocols[instanceName].Add(L3Discovery.NeighborProtocol.STATIC)  

ActionResult = _runningRoutingProtocols[instanceName]</MainCode>
    <Origin_X>57</Origin_X>
    <Origin_Y>796</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the list of RoutingProtocols running on nthis router</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1305, Height=856}|{X=309,Y=52}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>13</vsID>
    <CommandID>999b46d8-1847-4a34-ab60-3e2ca74ceea0</CommandID>
    <Name>Return_BGPASNumber</Name>
    <DisplayLabel>BGP AS Number</DisplayLabel>
    <Commands />
    <MainCode>######################################################################
#                                                                    #
# This call should be able to return BGP AS number for this router   #
#                                                                    #
######################################################################
global ActionResult

# the RoutingInstance object to query is received in aParam
instance = ConnectionInfo.aParam
ActionResult = RouterIDAndASNumber.GetBGPASNumber(instance)</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>606</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return BGP AS number for this router</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=852, Height=703}|{X=93,Y=181}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>14</vsID>
    <CommandID>b1e6cdc1-9376-441f-9758-93a7c38d178e</CommandID>
    <Name>Return_HostName</Name>
    <DisplayLabel>Host Name</DisplayLabel>
    <Commands />
    <MainCode>#################################################################
#                                                               #
# This call should be able to return host name of this router   #
#                                                               #
#################################################################
global ActionResult
global HstName

# Initialize element has already updated the HostName global variable
# so return that one.
ActionResult = HostName</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>705</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return host name of this router</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>15</vsID>
    <CommandID>dfdd4171-2a1b-4428-8463-d0dcaca9e22e</CommandID>
    <Name>Return_Platform</Name>
    <DisplayLabel>Platform</DisplayLabel>
    <Commands />
    <MainCode>#################################################################
#                                                               #
# This call should be able to return Platform of this device    #
#                                                               #
#################################################################
global ActionResult

Platform = "PaloAlto"
#
# Platform is typically connected to the vendor name
# This values serves as information only and does not influence
# network discorey in any way.
#
ActionResult = Platform</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>400</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return Platform of this device </Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>16</vsID>
    <CommandID>f1ac0ff6-d637-4a5d-b87d-e060ca2986f3</CommandID>
    <Name>Return_Type</Name>
    <DisplayLabel>Type</DisplayLabel>
    <Commands />
    <MainCode>#############################################################
#                                                           #
# This call should be able to return Type of this device    #
#                                                           #
#############################################################
global ActionResult

DeviceType = "Firewall"
#
# DeviceTyper is typically "Router" or "Switch"
# This values serves as information only and does not influence
# network discorey in any way.
#
ActionResult = DeviceType</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>459</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return Type of this device </Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>17</vsID>
    <CommandID>d509949e-d797-4299-9345-678e3d60dd3b</CommandID>
    <Name>Return_Vendor</Name>
    <DisplayLabel>Vendor</DisplayLabel>
    <Commands />
    <MainCode>#####################################################################
#                                                                   #
# This call should be able to returnVendor name of this device      #
#                                                                   #
#####################################################################
global ActionResult

Vendor = "PaloAlto"
#
# WARNING !
#
# The Vendor name returned must match one of the Vendor names
# listed in PGT Configuration (see Tools/Options/Vendor )
#
# For a new vendor register the vendor name there first.
#
ActionResult = Vendor</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>530</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to returnVendor name of this device  </Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>18</vsID>
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

# the interface name to be queried is received in ConnectionInfo.aParam
# strip any leading or trailing spaces, otherwise command execution will fail
ifName = ConnectionInfo.aParam.strip()

# RoutingInstance object received in bParam
instance = ConnectionInfo.bParam

#return the interface
ActionResult = GetInterfaces.GetInterfaceByName(ifName, instance)</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>388</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the RouterInterface object for the desired interface </Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=800, Height=620}|{X=78,Y=78}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>19</vsID>
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

# the interface ip address to be queried is received in ConnectionInfo.aParam
ifAddress = ConnectionInfo.aParam

# RoutingInstance object received in bParam
instance = ConnectionInfo.bParam

#return the interface name
ActionResult = GetInterfaces.GetInterfaceNameByAddress(ifAddress, instance)</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>315</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return an interface name based on its IP address</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=825, Height=700}|{X=525,Y=211}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>20</vsID>
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
    <Origin_X>20</Origin_X>
    <Origin_Y>246</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to update the interface configuration field of a given RouterInterface object.
A returned bool value should indicate whether the update was successful.</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=568, Height=460}|{X=52,Y=52}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>21</vsID>
    <CommandID>6122cc1d-1453-4454-8a3c-cad171fdc84c</CommandID>
    <Name>Copy_of_Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global HostName

_versionInfo = Version.GetVersion()
HostName = Session.GetHostName()

if "paloaltonetworks" in _versionInfo.lower():
  haStatus = Session.ExecCommand("show high-availability state").lower()
  if "ha not enabled" in haStatus :
    ActionResult = True
  else:
    haStates =  re.findall(r"(?:state:).*", haStatus)
    if len(haStates) == 2 and "active" in haStates[0] :
      ActionResult = True
    else:
      # Current parser and object module do not support working with the passive firewall
      ActionResult = False
else :
  ActionResult = False</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>105</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <EditorSize>{Width=690, Height=632}|{X=1002,Y=208}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>22</vsID>
    <CommandID>75e1f93c-a59b-419b-b685-9e1f1016ef36</CommandID>
    <Name>Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Commands />
    <MainCode>global _versionInfo
global _hostName
global _stackCount
global _runningRoutingProtocols
global _interfaceConfigurations

_versionInfo = ""
_hostName = ""
_stackCount = -1
_runningRoutingProtocols = {}
_interfaceConfigurations = {}

Version.Reset()
RouterIDAndASNumber.Reset()
GetInterfaces.Reset()</MainCode>
    <Origin_X>20</Origin_X>
    <Origin_Y>179</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This object should reset the vScript to its original state by 
clearing any and variables populated during a previous run</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=939, Height=646}|{X=208,Y=208}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>23</vsID>
    <CommandID>99c284e2-0e84-4007-9024-91457aabf7d9</CommandID>
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
    <Origin_X>266</Origin_X>
    <Origin_Y>977</Origin_Y>
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
  if self.DeviceVersion == None : self.DeviceVersion = Session.ExecCommand("show system info")
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
    <vsID>24</vsID>
    <CommandID>19abb8f3-af0d-4d28-b21f-dfce56ff784e</CommandID>
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
    <Origin_X>633</Origin_X>
    <Origin_Y>977</Origin_Y>
    <Size_Width>150</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables># RouterID is a dictionary in dictionary containing strings. Outer keyed by routing instance (VR) name, inner keyed by RoutingProtocol 
RouterIDs = {}
# BGPASNumber is a dictionary keyed by VR name
BGPASNumbers = {}
# static Router ID is used for STATIC routing
staticRouterID = ""</Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock>def GetRouterID(self, protocol, instance):
  instanceName = ""
  if instance : 
    instanceName = instance.Name
  instanceRIDs =   self.RouterIDs.get(instanceName, {})
  if len(instanceRIDs) == 0 :     
    self.CalculateRouterIDAndASNumber(instance)
  instanceRIDs = self.RouterIDs.get(instanceName, {})
  rid = instanceRIDs.get(str(protocol), "")
  return rid
  
def GetBGPASNumber(self, instance):
  instanceName = ""
  if instance : 
    instanceName = instance.Name
  instanceAS = self.BGPASNumbers.get(instanceName, None)
  if instanceAS == None : 
    self.CalculateRouterIDAndASNumber(instance)
    instanceAS = self.BGPASNumbers.get(instanceName, "")
  
  return instanceAS
  
def CalculateRouterIDAndASNumber(self, instance):
  """ """
  global _runningRoutingProtocols
  
  instanceName = ""
  if instance : 
    instanceName = instance.Name
  # Create empty RouterID dict for instance if missing
  instanceRIDs = self.RouterIDs.get(instanceName, None)
  if instanceRIDs == None :  
    self.RouterIDs[instanceName] = {}    
  # first get the ip address from system info, we will use it when dynamic routing protocol is in use
  response = Session.ExecCommand("show system info | match ip-address:")
  words = filter(None, response.split(":"))
  if  len(words) == 2 : self.staticRouterID = words[1].strip()
  
  # sort the routing protocols by preference (its integer value)
  instanceProtocols = _runningRoutingProtocols[instanceName]
  sRoutingProtocols = sorted(instanceProtocols, key=lambda p: int(p))
  for thisProtocol in sRoutingProtocols: 
    try: 
      if thisProtocol == L3Discovery.NeighborProtocol.BGP:
        cmd = "show routing protocol bgp summary"
        if instance:
          cmd = "show routing protocol bgp summary virtual-router {0}".format(instance.Name)
        bgpSummary = Session.ExecCommand(cmd)
        rid = re.findall(r"(?&lt;=router id: )[\ \d.]{0,99}", bgpSummary, re.IGNORECASE)
        if len(rid) &gt; 0 : 
          self.RouterIDs[instanceName][str(thisProtocol)] = rid[0].strip()
          if self.staticRouterID == "" : 
            self.staticRouterID = rid[0]

        ASSize = 2
        re_LocalAS = re.findall(r"(?&lt;=Local AS: )[\ \d.]{0,99}", bgpSummary, re.IGNORECASE)
        re_ASSize = re.findall(r"(?&lt;=AS size: )[\ \d.]{0,99}", bgpSummary, re.IGNORECASE)
        if len(re_ASSize) == 1:
          ASSize = int(re_ASSize[0])
        if ASSize == 2:
          if len(re_LocalAS) &gt; 0 : 
            self.BGPASNumbers[instanceName] = re_LocalAS[0]
        elif ASSize == 4:
          ASDigits = re_LocalAS[0].strip().split(".")
          if len(ASDigits) == 1:
            self.BGPASNumbers[instanceName] = ASDigits[0]
          else:
            highASN = int(ASDigits[0])
            lowASN = int(ASDigits[1])
            self.BGPASNumbers[instanceName] = str((highASN&lt;&lt;16) + lowASN)
        
      elif thisProtocol == L3Discovery.NeighborProtocol.OSPF:
        cmd = "show routing protocol ospf summary"
        if instance:
          cmd = "show routing protocol ospf summary virtual-router {0}".format(instance.Name)
        ospfStatus = Session.ExecCommand(cmd)
        rid = re.findall(r"(?&lt;=router id: )[\ ,\d.]{0,99}", ospfStatus)
        if len(rid) &gt; 0 : 
        
          self.RouterIDs[instanceName][str(thisProtocol)] = rid[0].strip()
          if self.staticRouterID == "" : 
            self.staticRouterID = rid[0]

      elif thisProtocol == L3Discovery.NeighborProtocol.RIP:
        cmd = "show routing protocol rip summary"
        if instance:
          cmd = "show routing protocol rip summary virtual-router {0}".format(instance.Name)
        ripStatus = Session.ExecCommand(cmd)
        rid = re.findall(r"(?&lt;=router id: )[\ ,\d.]{0,99}", ripStatus)
        if len(rid) &gt; 0 : 
          self.RouterIDs[instanceName][str(thisProtocol)] = rid[0].strip()
          if self.staticRouterID == "" : 
            self.staticRouterID = rid[0]
      elif thisProtocol == L3Discovery.NeighborProtocol.IPSEC:
        self.RouterIDs[instanceName][str(thisProtocol)] = self.staticRouterID
      elif thisProtocol == L3Discovery.NeighborProtocol.LLDP:
        lldpMAC = Session.ExecCommand("show system info | match mac-address")
        rid = re.findall(r"[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}:[a-fA-F0-9]{2}", lldpMAC)
        if len(rid) == 1:
          self.RouterIDs[instanceName][str(thisProtocol)] = rid[0].strip()
        
      elif thisProtocol == L3Discovery.NeighborProtocol.STATIC:
        self.RouterIDs[instanceName][str(thisProtocol)] = self.staticRouterID
        
      else :
        self.RouterIDs[instanceName][str(thisProtocol)] = self.staticRouterID
    except Exception as Ex:
      DebugEx.WriteLine("PaloAlto Router Parser : error in CalculateRouterIDAndASNumber. Error is : {0} ".format(str(Ex)))
      pass
        
def Reset(self):
  self.RouterIDs = {}
  self.BGPASNumbers = {}
  self.staticRouterID = ""</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>This object is responsible to retrieve protocol
dependent RouterID and parse BGP AS number</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1275, Height=851}|{X=336,Y=42}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>25</vsID>
    <CommandID>99d17b29-26fb-40f8-a24b-9b9547aabe6e</CommandID>
    <Name>GetInterfaces</Name>
    <DisplayLabel>Get interface details</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>448</Origin_X>
    <Origin_Y>976</Origin_Y>
    <Size_Width>144</Size_Width>
    <Size_Height>50</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables># List of FWInterface objects
FWInterfaces = []   </Variables>
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock># Add your custom methods to object like below
class FWInterface(object):
  def __init__(self):
    self.Name = ""
    self.ID = ""    
    self.Speed = ""
    self.Duplex = ""
    self.State = ""
    self.MAC = ""
    self.VSYS = ""
    self.Zone = ""
    self.Forwarding = ""
    self.VR = ""
    self.Tag = ""
    self.Address = ""
    self.MaskLength = ""
    self.VLANS = ""
    self.PortMode = L3Discovery.RouterInterfacePortMode.Unknown
    self.AggregateID = ""
    L3Discovery.RouterInterfacePortMode.Unknown

"""Collects interface details for all interfaces """
def ParseInterfaces(self) :
  from  PGT.Common import IPOperations
  # get all interface data
  response = Session.ExecCommand("show interface all")
  interfaceBlock = False
  aggregationGroup = False
  aggregateInterface = None
  currentHeaderFields = []
  currentHeaderLine = ""
  tunnelMAC = ""
  loopbackMAC = ""
  intf_lines = [thisLine.strip() for thisLine in response.splitlines()]
  for thisLine in intf_lines:  
    sLine = thisLine.lower()
    try:
      # a line with dashes is just a separator, skip it
      if thisLine.startswith("------"): 
        continue
      
      # a line with the first word of "name " signals an interface block, and gives us the header
      if sLine.startswith("name "):
        currentHeaderLine = sLine
        currentHeaderFields = filter(None, currentHeaderLine.split(" "))
        interfaceBlock = True
        aggregationGroup = False
        continue
      
      # skip the rest
      if sLine.startswith("aggregation"):
        interfaceBlock = False
        aggregationGroup = True
        continue
        
      # an empty line can also signal the end of an interface block   
      if interfaceBlock and thisLine == "":
        interfaceBlock = False
        continue

      # an empty line can also signal the end of an aggregation group
      if aggregationGroup and thisLine == "":
        aggregationGroup = False
        continue        

      # parse aggregation group data in block
      if aggregationGroup:
        if "members:" in sLine:
          aggregateInterfaceName =  filter(None, thisLine.split())[0]
          aggregateInterface = next((intf for intf in self.FWInterfaces if intf.Name == aggregateInterfaceName), None)
          continue
        else:
          aggregatedInterfaceName = thisLine.strip()
          aggregatedInterface = next((intf for intf in self.FWInterfaces if intf.Name == aggregatedInterfaceName), None)
          if aggregatedInterface and aggregateInterface:
            aggregatedInterface.AggregateID = aggregateInterface.Name
        continue
        
      # parse interface data in block
      if interfaceBlock:
        lineWords = filter(None, thisLine.split(" "))
        # the first item is interface name in each block
        ifName = lineWords[0]
        thisFWInterface = next((intf for intf in self.FWInterfaces if intf.Name == ifName), None)
        if thisFWInterface == None:
          # interface not found by name, create new one
          thisFWInterface = self.FWInterface()
          thisFWInterface.Name = ifName
          if ifName.lower().startswith("tunnel."):
            thisFWInterface.MAC = tunnelMAC
          if ifName.lower().startswith("loopback."):
            thisFWInterface.MAC = loopbackMAC
            
          self.FWInterfaces.Add(thisFWInterface)
        
        # the length of currentHeaderFields can guide us, which block we are in now
        if len(currentHeaderFields) == 5:
          # this is the physical IF parameters block
          # header :name,id,speed/duplex/state,mac,address    
          # ID        
          s = currentHeaderLine.index("id")
          e = currentHeaderLine.index("speed/duplex/state")
          thisFWInterface.ID = thisLine[s:e].strip() 
          # speed/duplex/state
          s = currentHeaderLine.index("speed/duplex/state")
          e = currentHeaderLine.index("mac")
          #replace [n/a] to unknown to allow splitting correctly
          SDS = re.sub(r"\[n\/a\]", "uknown", thisLine[s:e].strip(), re.IGNORECASE)
          # split SDS
          aSDS = SDS.split("/")
          thisFWInterface.Speed = aSDS[0]
          if len(aSDS) &gt;= 2 : thisFWInterface.Duplex = aSDS[1]
          if len(aSDS) &gt;= 3 : thisFWInterface.State = aSDS[2]
          # MAC
          s = currentHeaderLine.index("mac")
          e = len(thisLine)  
          thisFWInterface.MAC = thisLine[s:e].strip()
          # memorize MAC address for cloned interfaces
          if ifName.lower() == "tunnel":
            tunnelMAC = thisFWInterface.MAC
          elif ifName.lower() == "loopback":
            loopbackMAC = thisFWInterface.MAC
          
        elif len(currentHeaderFields) == 7 :
          # this is the logical IF parameters block
          # header : name,id,vsys,zone,forwarding,tag,address  
          # id
          s = currentHeaderLine.index("id")
          e = currentHeaderLine.index("vsys")
          thisFWInterface.ID = thisLine[s:e].strip()         
          # vsys
          s = currentHeaderLine.index("vsys")
          e = currentHeaderLine.index("zone")
          thisFWInterface.VSYS = thisLine[s:e].strip()
          # zone
          s = currentHeaderLine.index("zone")
          e = currentHeaderLine.index("forwarding")           
          thisFWInterface.Zone = thisLine[s:e].strip()
          # forwarding
          s = currentHeaderLine.index("forwarding")
          e = currentHeaderLine.index("tag")
          thisFWInterface.Forwarding =  thisLine[s:e].strip()
          if thisFWInterface.Forwarding.lower().startswith("vr:"):
            thisFWInterface.VR = re.sub(r"vr:", "", thisFWInterface.Forwarding, re.IGNORECASE)
          # tag
          s = currentHeaderLine.index("tag")
          e = currentHeaderLine.index("address")        
          thisFWInterface.Tag = thisLine[s:e].strip()
          # address
          s = currentHeaderLine.index("address")
          e = len(thisLine)
          addr = thisLine[s:e].strip()
          if addr != "n/a":
            addressAndMask = addr.split('/')
            thisFWInterface.Address = addressAndMask[0]
            thisFWInterface.MaskLength = addressAndMask[1]
            thisFWInterface.PortMode = L3Discovery.RouterInterfacePortMode.Routed
          if thisFWInterface.Tag and thisFWInterface.Tag != "0":
            # interface is like eth1/21.520 - tag is 520
            phIntfName = re.sub(r"\.\d+$", "", thisFWInterface.Name)
            phri = next((intf for intf in self.FWInterfaces if intf.Name == phIntfName), None)
            if phri != None:
              if not phri.VLANS : existingVLANs = []
              else : existingVLANs = filter(None, phri.VLANS.split("|"))
              existingVLANs.append(thisFWInterface.Tag)
              phri.VLANS = "|".join(existingVLANs)
              phri.PortMode = L3Discovery.RouterInterfacePortMode.L3Subinterface
            
    except Exception as Ex:
      msg = "PaloAltoFirewall vScript Parser : Error while processing interface information. Error is : {0}".format(str(Ex))
      System.Diagnostics.DebugEx.WriteLine(msg) 
      
  
  # Post-process aenet interfaces to inherit VLANs and portMode from aggregate interface
  aggregatedInterfaces = [intf for intf in self.FWInterfaces if intf.AggregateID]
  for thisAaggregatedInterface in aggregatedInterfaces:
    aggregatorInterface = next((intf for intf in self.FWInterfaces if intf.Name == thisAaggregatedInterface.AggregateID), None)
    if aggregatorInterface != None:
      thisAaggregatedInterface.VLANS = aggregatorInterface.VLANS
      thisAaggregatedInterface.PortMode = aggregatorInterface.PortMode

  
  # --- Get management interface details ---
  response = Session.ExecCommand("show interface management")
  if response != "":
    MGMTInterface = self.FWInterface()
    intf_lines = [str.lower(thisLine.strip()) for thisLine in response.splitlines()]
    for thisLine in intf_lines:   
      if thisLine.startswith("ip address"): 
        words = thisLine.split(":")
        MGMTInterface.Address = words[1].strip()
      if thisLine.startswith("netmask"): 
        words = thisLine.split(":")
        netMask = words[1]
        MGMTInterface.MaskLength = str(IPOperations.GetMaskLength(netMask))
        MGMTInterface.Name = "Management"
        self.FWInterfaces.Add(MGMTInterface)
        break        
            

"""Returns a RouterInterface object for the interface specified by its name"""        
def GetInterfaceByName(self, ifName, instance):
  if len(self.FWInterfaces) == 0 : self.ParseInterfaces()
  
  foundFWInterface = next((intf for intf in self.FWInterfaces if intf.Name == ifName and (not intf.VR or intf.VR == instance.Name)), None)
  return self.FWInterface2RouterInterface(foundFWInterface)
  
""" Returns a RouterInterface object for the interface specified by its ip address """    
def GetInterfaceNameByAddress(self, ipAddress, instance):
  if len(self.FWInterfaces) == 0 : self.ParseInterfaces()
  ifName = ""
  foundFWInterface = next((intf for intf in self.FWInterfaces if intf.Address == ipAddress and (not intf.VR or intf.VR == instance.Name)), None)
  if foundFWInterface != None:
    ifName = foundFWInterface.Name
  return ifName     

""" Return a synthetic configuration of an interface """
def GetInterfaceConfiguration(self, ifName):
  if len(self.FWInterfaces) == 0 : self.ParseInterfaces()
  ifConfig = ""
  foundFWInterface = next((intf for intf in self.FWInterfaces if intf.Name == ifName), None)
  if foundFWInterface != None:
    ifConfig = "Name={0}\r\n  ID={1}\r\n  Address={2}/{3}".format(foundFWInterface.Name, foundFWInterface.ID, foundFWInterface.Address, foundFWInterface.MaskLength )
  return ifConfig 

"""  Map an FWInterface object to L3Discovery.RouterInterface object"""
def FWInterface2RouterInterface(self, fwInterface):
  if fwInterface == None : return None
  # -- 
  ri = L3Discovery.RouterInterface()
  ri.Name = fwInterface.Name
  ri.SNMPIndex = fwInterface.ID
  ri.Address = fwInterface.Address
  ri.Status =  fwInterface.State
  ri.MaskLength = fwInterface.MaskLength
  ri.VLANS = fwInterface.VLANS
  ri.PortMode = fwInterface.PortMode
  ri.AggregateID = fwInterface.AggregateID
  ri.Description = " ".join([fwInterface.Name, fwInterface.ID, fwInterface.VSYS, fwInterface.Zone])
  ri.VRFName = fwInterface.VR
  return ri
  
""" Return interfaces in the form of list of RouterInterface"""
def GetRoutedInterfaces(self, instance):
  if len(self.FWInterfaces) == 0 : self.ParseInterfaces() 
  # we need all interfaces, removed filtering -- routedInterfaces = filter(lambda x: x.Address != "", self.FWInterfaces)
  vrInterfaces = [intf for intf in self.FWInterfaces if intf.VR == instance.Name ]
  return map(self.FWInterface2RouterInterface, vrInterfaces)
  
def Reset(self):
  self.FWInterfaces = []</CustomCodeBlock>
    <DemoMode>false</DemoMode>
    <Description>This object will parse interface details</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1070, Height=655}|{X=180,Y=55}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptGeneralObject</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>26</vsID>
    <CommandID>82bc327f-ca2d-48d0-ba65-7f952d80492f</CommandID>
    <Name>RegisterNHRP</Name>
    <DisplayLabel>Register NHRP</DisplayLabel>
    <Commands />
    <MainCode># Not relevant to PaloAlto firewall
pass</MainCode>
    <Origin_X>332</Origin_X>
    <Origin_Y>864</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <EditorSize>{Width=731, Height=666}|{X=104,Y=104}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>27</vsID>
    <CommandID>84e73edc-c749-4f68-9cd0-0f45927e92d8</CommandID>
    <Name>GetVirtualSystems</Name>
    <DisplayLabel>Virtual systems</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution

# TODO : find out how to retrieve Vsys names
ActionResult = ["Default"]</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>164</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>Returns the list of VSys-es defined</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=836, Height=680}|{X=182,Y=182}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>28</vsID>
    <CommandID>7bd65d91-8884-407d-9a9a-197a20bef4ba</CommandID>
    <Name>GetVirtualRouters</Name>
    <DisplayLabel>Virtual Routers</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution

response = Session.ExecCommand("show routing summary")
vrs = re.findall(r"(?=VIRTUAL ROUTER:\s([a-zA-Z0-9]+))", response)
instances = []
for thisVR in vrs :
  instance = L3Discovery.RoutingInstance()
  instance.DeviceVendor = "PaloAlto"
  instance.Name = thisVR
  instances.append(instance)

ActionResult  = instances</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>223</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>Returns the list of VRs for requested VSys</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=806, Height=700}|{X=671,Y=39}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>29</vsID>
    <CommandID>5acee2ac-4dfd-4c25-ac73-cf8aafa91b4d</CommandID>
    <Name>SupportedEngineVersion</Name>
    <DisplayLabel>NDE Version</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution

ActionResult = r"^7\.5*"</MainCode>
    <Origin_X>882</Origin_X>
    <Origin_Y>344</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <EditorSize>{Width=710, Height=554}|{X=26,Y=26}</EditorSize>
    <FullTypeName>PGT.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>30</vsID>
    <CommandID>ff550673-1b0f-45bd-9309-a16dcb634692</CommandID>
    <Name>ReturnSystemMAC</Name>
    <DisplayLabel>System MAC</DisplayLabel>
    <Commands>show system info | match mac-address</Commands>
    <MainCode>######################################################################################
#                                                                                    #
# This call should be able to return the MAC addresses associateed with the device   #
#                                                                                    #
######################################################################################
global ActionResult

systemMAC = ""
repMACAddress = re.compile(r"[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}:[0-9a-f]{2}", re.IGNORECASE)
try:
  foundMACS = repMACAddress.findall(self.CommandResult)
  if len(foundMACS) &gt; 0 : 
    systemMAC = ",".join(foundMACS)
except Exception as Ex:
  DebugEx.WriteLine("PalotAltoFirewall.GetSystemMAC() : unexpected error : {0}".format(str(Ex)))

ActionResult = systemMAC</MainCode>
    <Origin_X>529</Origin_X>
    <Origin_Y>863</Origin_Y>
    <Size_Width>172</Size_Width>
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
    <Description>This call should be able to return the MAC addresses associated with device</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=797, Height=609}|{X=104,Y=46}</EditorSize>
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
    <Order>25</Order>
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
  </vScriptConnector>
  <vScriptConnector>
    <cID>3</cID>
    <ConnectorID />
    <Name>SwitchTask_Copy_of_Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Left>2</Left>
    <Right>21</Right>
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
    <EditorSize>{Width=671, Height=460}|{X=234,Y=234}</EditorSize>
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
    <Right>7</Right>
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
    <Right>8</Right>
    <Condition>return ConnectionInfo.Command == "GetStackCount"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>12</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>9</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RoutingTable</Name>
    <DisplayLabel>Get Routing Table</DisplayLabel>
    <Left>2</Left>
    <Right>9</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutingTable"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>17</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>10</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RoutedInterfaces</Name>
    <DisplayLabel>Get Routed Interfaces</DisplayLabel>
    <Left>2</Left>
    <Right>10</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutedInterfaces"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>16</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>11</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_RouterID</Name>
    <DisplayLabel>Get Router ID</DisplayLabel>
    <Left>2</Left>
    <Right>11</Right>
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
    <Right>12</Right>
    <Condition>return ConnectionInfo.Command == "GetActiveProtocols"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>13</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>13</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_BGPASNumber</Name>
    <DisplayLabel>Get BGP AS</DisplayLabel>
    <Left>2</Left>
    <Right>13</Right>
    <Condition>return ConnectionInfo.Command == "GeBGPASNumber"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>15</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>14</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_HostName</Name>
    <DisplayLabel>Get HostName</DisplayLabel>
    <Left>2</Left>
    <Right>14</Right>
    <Condition>return ConnectionInfo.Command == "GetHostName"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>14</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>15</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_Platform</Name>
    <DisplayLabel>Get Platform</DisplayLabel>
    <Left>2</Left>
    <Right>15</Right>
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
    <Right>16</Right>
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
    <Right>17</Right>
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
    <Right>18</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceByName"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>18</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>19</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_InterfaceByIPAddress</Name>
    <DisplayLabel>Get If Bí IP</DisplayLabel>
    <Left>2</Left>
    <Right>19</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceNameByIPAddress"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>19</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>20</cID>
    <ConnectorID />
    <Name>SwitchTask_Return_InterfaceConfiguration</Name>
    <DisplayLabel>Get If Config</DisplayLabel>
    <Left>2</Left>
    <Right>20</Right>
    <Condition>return ConnectionInfo.Command == "GetInterfaceConfiguration"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>20</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>21</cID>
    <ConnectorID />
    <Name>SwitchTask_Copy_of_Stop_2</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Left>2</Left>
    <Right>22</Right>
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
    <Right>26</Right>
    <Condition>return ConnectionInfo.Command == "RegisterNHRP"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>21</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=182,Y=182}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>23</cID>
    <ConnectorID />
    <Name>SwitchTask_GetVirtualSystems</Name>
    <DisplayLabel>EU-DEFRA-FR4-CS01</DisplayLabel>
    <Left>2</Left>
    <Right>27</Right>
    <Condition>return ConnectionInfo.Command == "GetLogicalSystems"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>22</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=234,Y=234}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>24</cID>
    <ConnectorID />
    <Name>SwitchTask_GetVirtualRouters</Name>
    <DisplayLabel>GetVirtualRouters</DisplayLabel>
    <Left>2</Left>
    <Right>28</Right>
    <Condition>return ConnectionInfo.Command == "GetRoutingInstances"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>23</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=26,Y=26}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>25</cID>
    <ConnectorID />
    <Name>SwitchTask_SupportedEngineVersion</Name>
    <DisplayLabel>Engine version</DisplayLabel>
    <Left>2</Left>
    <Right>29</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportedEngineVersion"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>24</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=52,Y=52}</EditorSize>
  </vScriptConnector>
  <vScriptConnector>
    <cID>26</cID>
    <ConnectorID />
    <Name>SwitchTask_ReturnSystemMAC</Name>
    <DisplayLabel>Get System MAC</DisplayLabel>
    <Left>2</Left>
    <Right>30</Right>
    <Condition>return ConnectionInfo.Command == "GetSystemMAC"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>11</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=117,Y=80}</EditorSize>
  </vScriptConnector>
  <Parameters>
    <ScriptName>PaloAltoFirewall</ScriptName>
    <GlobalCode>###################################
#                                 #
# Declare global variables here   #
#                                 #
###################################
lastModified = "18.09.2019"
scriptVersion = "6.0.0"
VersionInfo = ""
HostName = ""

# The routing protocols run by this router. Keyed by routing instance (VR) name
_runningRoutingProtocols = {}
# Interface config cache, keyed by Interface Name
_interfaceConfigurations = {}
# Routed interfaces
_routedInterfaces = []

def GetRegexGroupMatches(pattern, text, groupNum):
  """Returns the list of values of specified Regex group number for all matches. Returns Nonde if not matched or groups number does not exist"""
  try:
    result = []
    mi = re.finditer(pattern, text, re.MULTILINE)
    for matchnum, match in enumerate(mi):
      # regex group 1 contains the connection remote address
      result.append(match.group(groupNum))
    return result
  except :
    return None</GlobalCode>
    <BreakPolicy>Before</BreakPolicy>
    <CustomNameSpaces>############################################################
#                                                          #
# Below imports a typically required for a Router Module   #
#                                                          #
############################################################
import re
import sys
import clr
clr.AddReferenceToFileAndPath("Common.dll")
clr.AddReferenceToFileAndPath("PGTNetworkMap.dll")
import PGT.Common
import L3Discovery
import System.Net
from System.Diagnostics import DebugEx</CustomNameSpaces>
    <CustomReferences />
    <DebuggingAllowed>true</DebuggingAllowed>
    <LogFileName />
    <WatchVariables />
    <Language>Python</Language>
    <IsTemplate>false</IsTemplate>
    <IsRepository>false</IsRepository>
    <EditorScaleFactor>0.4622601</EditorScaleFactor>
    <Description>This vScript is responsible to parse configuration
items from a Palo Alto PAN firewall</Description>
    <EditorSize>{Width=652, Height=660}</EditorSize>
    <PropertiesEditorSize>{Width=907, Height=602}|{X=314,Y=111}</PropertiesEditorSize>
  </Parameters>
</vScriptDS>