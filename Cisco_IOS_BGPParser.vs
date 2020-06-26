<?xml version="1.0" standalone="yes"?>
<vScriptDS xmlns="http://tempuri.org/vScriptDS.xsd">
  <vScriptCommands>
    <vsID>0</vsID>
    <CommandID>4672714a-bc08-4ec5-bea1-b8dd32b624b3</CommandID>
    <Name>Start</Name>
    <DisplayLabel>Start</DisplayLabel>
    <Commands />
    <MainCode />
    <Origin_X>72</Origin_X>
    <Origin_Y>282</Origin_Y>
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
    <FullTypeName>Scriptngo.VisualScripts.vScriptStart</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>1</vsID>
    <CommandID>a2f5f866-94c0-46a6-83ca-69e281ddc2e6</CommandID>
    <Name>Initialize</Name>
    <DisplayLabel>Initialize</DisplayLabel>
    <Commands />
    <MainCode>##############################################################################
#                                                                            #
# Initialize must decide whether this module can handle protocol parsing     #
# for the specified protocol using the given Router instance                 #
#                                                                            #
##############################################################################
global ActionResult
global Router
global ParsingForProtocols
global ParsingForVendor
global ModuleName

from System.Diagnostics import DebugEx
from System.Diagnostics import DebugLevel

# Router object is passed in ConnectionInfo.aParam
Router = ConnectionInfo.aParam
# Set ActionResult to a boolean value to indicate if this parser can handle the request
mgmtIP = Router.GetManagementIP()
DebugEx.WriteLine("Initializing {0} for Router {1}".format(ModuleName, mgmtIP), DebugLevel.Full)
if Router != None:
  # Requested protocol type is passed in ConnectionInfo.bParam
  if ConnectionInfo.bParam in ParsingForProtocols:
    ActionResult = Router.GetVendor() == ParsingForVendor
    if not ActionResult:
      DebugEx.WriteLine("Initializer of {0} for Router {1} returned : FALSE, becuse vendor mismatch".format(ModuleName, mgmtIP), DebugLevel.Full)
  else:
    ActionResult = False
    DebugEx.WriteLine("Initializer of {0} for Router {1} returned : FALSE, becuse protocol mismatch".format(ModuleName, mgmtIP), DebugLevel.Full)
else:
  ActionResult = False

if ActionResult:
  DebugEx.WriteLine("{0} is active for Router {1}".format(ModuleName, mgmtIP), DebugLevel.Full)</MainCode>
    <Origin_X>363</Origin_X>
    <Origin_Y>52</Origin_Y>
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
    <Description>Initialize must decide whether this module can handle protocol parsing 
for the specified protocol using the given Router instance.</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1187, Height=802}|{X=182,Y=182}</EditorSize>
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>2</vsID>
    <CommandID>3de92841-b2aa-442d-af76-37a67e498361</CommandID>
    <Name>SwitchTask</Name>
    <DisplayLabel>Switch task</DisplayLabel>
    <Commands />
    <MainCode>###########################################################
#                                                         #
# This is a central point to decide which call to perform #
# Connectors will be evaluated one by one in order.       #
#                                                         #
###########################################################
pass</MainCode>
    <Origin_X>278</Origin_X>
    <Origin_Y>278</Origin_Y>
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
    <Description />
    <WatchVariables />
    <Initializer />
    <FullTypeName>Scriptngo.VisualScripts.vScriptCommand</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>3</vsID>
    <CommandID>0e1b7c85-f97c-4a7d-9262-13149567605e</CommandID>
    <Name>ReturnSupportTag</Name>
    <DisplayLabel>Support Tag</DisplayLabel>
    <Commands />
    <MainCode>#######################################################################################
#                                                                                     #
# This call should return a descriptive text for this Protocol Parser software module #
#                                                                                     #
#######################################################################################
global ScriptVersion
global ActionResult
global ModuleName

ActionResult =  ModuleName + " v" + ScriptVersion</MainCode>
    <Origin_X>539</Origin_X>
    <Origin_Y>188</Origin_Y>
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
    <Description>SupportTag should return a descriptive text for this Protocol Parser Module</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>4</vsID>
    <CommandID>a9279407-046b-4e50-b4e6-fcd0c543379a</CommandID>
    <Name>ParseProtocol</Name>
    <DisplayLabel>Parse</DisplayLabel>
    <Commands />
    <MainCode>
##############################################################################
#                                                                            #
# This call should implement logic to parse a Routing Protocol state         #
# and register the neighbors found by the routing protocol for discovery.    #
#                                                                            #
##############################################################################
global Router
global OperationStatusLabel

# The neighbor registry object is received in ConnectionInfo.aParam
# This must be used to register a new neighbor for further discovery.
nRegistry = ConnectionInfo.aParam
# A CancellationToken is received in ConnectionInfo.bParam
# The token should be checked repetitively whether cancellation was requested 
# by user and if yes, stop further processing.
cToken = ConnectionInfo.bParam
# The routing instance to parser is received via cParam
instance = ConnectionInfo.cParam

OperationStatusLabel = "Identifying router..."
#--  
if instance and not instance.IsDefaultRoutingInstance() :
  TextToParse = Session.ExecCommand("show ip bgp vpnv4 vrf {0} neighbors".format(instance.Name))
else:
  TextToParse = Session.ExecCommand("show ip bgp neighbors")
  
cToken.ThrowIfCancellationRequested()

OperationStatusLabel = "Procesing BGP data..."
skipLines = True
gotAllDataToRegisterNeighbor = False
# below variables are for debugging only
discoveredNeighborCount = 0
registeredNeighborCount = 0
# --
bgp_lines = [str.lower(thisLine.strip()) for thisLine in TextToParse.splitlines()]
for line in bgp_lines:
  cToken.ThrowIfCancellationRequested()
  if line.startswith("bgp neighbor is"): 
    neighborIP = re.findall(r"(?&lt;=bgp neighbor is )[\d\.]{0,99}", line)[0]
    remoteAS = re.findall(r"(?&lt;=remote as )[\d\.]{0,99}", line)[0]
    remoteRID = ""
    bgpState = ""
    localIP = ""
    peerIP = ""
    gotAllDataToRegisterNeighbor = False
    skipLines = False
    continue
    
  if skipLines : continue
  
  if line.startswith("bgp version 4,"):
    remoteRID = re.findall(r"(?&lt;=remote router id )[\d\.]{0,99}", line)[0]
    continue
    
  if line.startswith("bgp state"):
    bgpState = re.findall(r"(?&lt;=bgp state = )[a-z]{0,99}", line)[0]
    continue
  
  if bgpState == "established":
    if line.startswith("local host:"):
      localIP = re.findall(r"(?&lt;=local host: )[\d\.]{0,99}", line)[0]
      continue
      
    if line.startswith("foreign host:"):
      peerIP = re.findall(r"(?&lt;=foreign host: )[\d\.]{0,99}", line)[0]
      gotAllDataToRegisterNeighbor = True
      continue  
  elif bgpState != "" : gotAllDataToRegisterNeighbor = True
  
  if gotAllDataToRegisterNeighbor:
    discoveredNeighborCount += 1
    try:
      if bgpState != "established":
        ri = L3Discovery.RouterInterface()
      else:  
        OperationStatusLabel = "Finding interface with ip address {0}...".format(localIP)
        localIfName = Router.GetInterfaceNameByIPAddress(localIP, instance)
        OperationStatusLabel = "Querying interface {0}...".format(localIfName)
        ri = Router.GetInterfaceByName(localIfName, instance)
      registeredNeighborCount += 1
      OperationStatusLabel = "Registering neighbor {0} in state {1}".format(remoteRID, bgpState)
      nRegistry.RegisterNeighbor(Router, instance, L3Discovery.NeighborProtocol.BGP, remoteRID, remoteAS, "", neighborIP, ri, bgpState)
    except Exception as Ex :
      System.Diagnostics.DebugEx.WriteLine("{0} : registering neighbor failed with error : {1}".format(Name, str(Ex)), System.Diagnostics.DebugLevel.Full)
    
    skipLines = True
      
System.Diagnostics.DebugEx.WriteLine("{0} : BGP neighbors on {1} : discovered : {2}, registered {3}".format(Name, Router.GetManagementIP(), discoveredNeighborCount, registeredNeighborCount), System.Diagnostics.DebugLevel.Full)
#
# No need to return anything via ActionResult
#</MainCode>
    <Origin_X>539</Origin_X>
    <Origin_Y>356</Origin_Y>
    <Size_Width>172</Size_Width>
    <Size_Height>38</Size_Height>
    <isStart>false</isStart>
    <isStop>false</isStop>
    <isSimpleCommand>false</isSimpleCommand>
    <isSimpleDecision>false</isSimpleDecision>
    <Variables />
    <Break>false</Break>
    <ExecPolicy>After</ExecPolicy>
    <CustomCodeBlock />
    <DemoMode>false</DemoMode>
    <Description>Parse is responsible for implementing the logicrequired  to parse a Routing Protocol state
and register the neighbors found by the routing protocol for discovery.</Description>
    <WatchVariables />
    <Initializer />
    <EditorSize>{Width=1184, Height=787}|{X=266,Y=85}</EditorSize>
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>5</vsID>
    <CommandID>a236adee-1d6f-4c2a-8e90-c9fd13489289</CommandID>
    <Name>UnknownTask</Name>
    <DisplayLabel>Unknown task - ERROR</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ModuleName

ActionResult = None
raise ValueError("{0} has received an unhandled Command request : {1}".format(ModuleName, ConnectionInfo.Command))</MainCode>
    <Origin_X>401</Origin_X>
    <Origin_Y>506</Origin_Y>
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
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>6</vsID>
    <CommandID>36370047-eab4-446b-9797-7455b5926e84</CommandID>
    <Name>ReturnProtocols</Name>
    <DisplayLabel>Supported Protocols</DisplayLabel>
    <Commands />
    <MainCode>###############################################################################
#                                                                             #
# This call must return the list of routing protocols this module can support #
#                                                                             #
###############################################################################

global ParsingForProtocols
global ActionResult

ActionResult = ParsingForProtocols</MainCode>
    <Origin_X>547</Origin_X>
    <Origin_Y>269</Origin_Y>
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
    <Description>Supported Protocols must return the list of routing protocols 
this module can support</Description>
    <WatchVariables />
    <Initializer />
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>7</vsID>
    <CommandID>aa8660b8-2f9f-4724-8f29-bf65299dbf15</CommandID>
    <Name>Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Commands />
    <MainCode>global ActionResult
global ConnectionDropped
global ScriptSuccess
global ConnectionInfo
global BreakExecution</MainCode>
    <Origin_X>511</Origin_X>
    <Origin_Y>444</Origin_Y>
    <Size_Width>153</Size_Width>
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
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
  </vScriptCommands>
  <vScriptCommands>
    <vsID>8</vsID>
    <CommandID>5093d82f-e8b2-446e-adfb-13994dc347bf</CommandID>
    <Name>GetVendor</Name>
    <DisplayLabel>GetVendor</DisplayLabel>
    <Commands />
    <MainCode>global ParsingForVendor
global ActionResult
ActionResult = ParsingForVendor</MainCode>
    <Origin_X>494</Origin_X>
    <Origin_Y>117</Origin_Y>
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
    <EditorSize>{Width=568, Height=460}|{X=208,Y=208}</EditorSize>
    <FullTypeName>Scriptngo.VisualScripts.vScriptStop</FullTypeName>
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
    <Order>2</Order>
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
    <Right>6</Right>
    <Condition>return ConnectionInfo.Command == "GetSupportedProtocols"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>4</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>5</cID>
    <ConnectorID />
    <Name>SwitchTask_UnknownTask</Name>
    <DisplayLabel>Unknown</DisplayLabel>
    <Left>2</Left>
    <Right>5</Right>
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
    <Name>SwitchTask_Reset</Name>
    <DisplayLabel>Reset</DisplayLabel>
    <Left>2</Left>
    <Right>7</Right>
    <Condition>return ConnectionInfo.Command == "Reset"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>6</Order>
    <Description />
    <WatchVariables />
  </vScriptConnector>
  <vScriptConnector>
    <cID>7</cID>
    <ConnectorID />
    <Name>SwitchTask_GetVendor</Name>
    <DisplayLabel>GetVendor</DisplayLabel>
    <Left>2</Left>
    <Right>8</Right>
    <Condition>return ConnectionInfo.Command == "GetVendor"</Condition>
    <Variables />
    <Break>false</Break>
    <Order>7</Order>
    <Description />
    <WatchVariables />
    <EditorSize>{Width=671, Height=460}|{X=260,Y=260}</EditorSize>
  </vScriptConnector>
  <Parameters>
    <ScriptName>Cisco_IOS_BGP_Parser</ScriptName>
    <GlobalCode>LastModified = "15.04.2020"
ScriptVersion = "9.0.0"
# Describe the Module Name
ModuleName = "Cisco IOS BGP Protocol Parser Module - Python vScript Parser"
# Describes current operation status
OperationStatusLabel = "Init"
# The Router instance associated to this parser. Set in Initialize
Router = None
#This is the protocol supported by this module
ParsingForProtocols = [L3Discovery.NeighborProtocol.BGP]
#This is the vendor name supported by this module
ParsingForVendor = "Cisco"</GlobalCode>
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
clr.AddReferenceToFileAndPath("NetworkMap.dll")
import Scriptngo.Common
import L3Discovery
import System.Net</CustomNameSpaces>
    <CustomReferences />
    <DebuggingAllowed>false</DebuggingAllowed>
    <LogFileName />
    <WatchVariables />
    <Language>Python</Language>
    <IsTemplate>false</IsTemplate>
    <IsRepository>false</IsRepository>
    <EditorScaleFactor>0.7802141</EditorScaleFactor>
    <Description>This vScript template can be used as a starting point for
creating a new routing protocol Parser Module for Network Map.
This is required to add support for a new routing protocol to a
vendor already supported. See also Router Module template.</Description>
    <EditorSize>{Width=619, Height=550}</EditorSize>
    <PropertiesEditorSize>{Width=665, Height=460}|{X=627,Y=290}</PropertiesEditorSize>
  </Parameters>
</vScriptDS>