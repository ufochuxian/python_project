.class public Lorg/cybergarage/upnp/std/av/server/MediaServer;
.super Lorg/cybergarage/upnp/Device;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x9678

.field public static final DESCRIPTION:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaServer:1</deviceType>\n      <friendlyName>Cyber Garage Media Server</friendlyName>\n      <manufacturer>Cyber Garage</manufacturer>\n      <manufacturerURL>http://www.cybergarage.org</manufacturerURL>\n      <modelDescription>Provides content through UPnP ContentDirectory service</modelDescription>\n      <modelName>Cyber Garage Media Server</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.cybergarage.org</modelURL>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ContentDirectory:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:urn:schemas-upnp-org:service:ContentDirectory</serviceId>\n            <SCPDURL>/service/ContentDirectory1.xml</SCPDURL>\n            <controlURL>/service/ContentDirectory_control</controlURL>\n            <eventSubURL>/service/ContentDirectory_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:urn:schemas-upnp-org:service:ConnectionManager</serviceId>\n            <SCPDURL>/service/ConnectionManager1.xml</SCPDURL>\n            <controlURL>/service/ConnectionManager_control</controlURL>\n            <eventSubURL>/service/ConnectionManager_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

.field private static final DESCRIPTION_FILE_NAME:Ljava/lang/String; = "description/description.xml"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaServer:1"

.field public static final STATE_DISCOVERABLE:I = 0x1

.field public static final STATE_UNDISCOVERABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaServer"


# instance fields
.field private conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

.field private conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

.field private isServerStart:Z

.field private mLock:Ljava/lang/Object;

.field private final mPort:I

.field private mRootDir:Ljava/lang/String;

.field private mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

.field private mWorkingState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z

    .line 364
    const/16 v0, 0x1f91

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mPort:I

    .line 365
    const-string v0, "/http"

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mLock:Ljava/lang/Object;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    .line 97
    :try_start_0
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaServer:1</deviceType>\n      <friendlyName>Cyber Garage Media Server</friendlyName>\n      <manufacturer>Cyber Garage</manufacturer>\n      <manufacturerURL>http://www.cybergarage.org</manufacturerURL>\n      <modelDescription>Provides content through UPnP ContentDirectory service</modelDescription>\n      <modelName>Cyber Garage Media Server</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.cybergarage.org</modelURL>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ContentDirectory:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:urn:schemas-upnp-org:service:ContentDirectory</serviceId>\n            <SCPDURL>/service/ContentDirectory1.xml</SCPDURL>\n            <controlURL>/service/ContentDirectory_control</controlURL>\n            <eventSubURL>/service/ContentDirectory_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:urn:schemas-upnp-org:service:ConnectionManager</serviceId>\n            <SCPDURL>/service/ConnectionManager1.xml</SCPDURL>\n            <controlURL>/service/ConnectionManager_control</controlURL>\n            <eventSubURL>/service/ConnectionManager_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <actionList>\n      <action>\n         <name>ExportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>StopTransferResource</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DestroyObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DeleteResource</name>\n         <argumentList>\n            <argument>\n               <name>ResourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>UpdateObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>CurrentTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Browse</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>BrowseFlag</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_BrowseFlag</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetTransferProgress</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferStatus</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferStatus</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferLength</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferLength</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferTotal</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferTotal</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSearchCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SearchCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SearchCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateObject</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Elements</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Search</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SearchCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SearchCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSortCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SortCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SortCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>ImportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateReference</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSystemUpdateID</name>\n         <argumentList>\n            <argument>\n              <name>Id</name>\n               <direction>out</direction>\n               <relatedStateVariable>SystemUpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SortCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferLength</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>TransferIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_UpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SearchCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Filter</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>ContainerUpdateIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Result</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Index</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TagValueList</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_URI</name>\n         <dataType>uri</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ObjectID</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SortCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SearchCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Count</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_BrowseFlag</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>BrowseMetadata</allowedValue>\n            <allowedValue>BrowseDirectChildren</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SystemUpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>COMPLETED</allowedValue>\n            <allowedValue>ERROR</allowedValue>\n            <allowedValue>IN_PROGRESS</allowedValue>\n            <allowedValue>STOPPED</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferTotal</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n\t<actionList>\n\t\t<action>\n         <name>GetCurrentConnectionInfo</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RcsID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>AVTransportID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ProtocolInfo</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionManager</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Direction</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Status</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetProtocolInfo</name>\n         <argumentList>\n            <argument>\n               <name>Source</name>\n               <direction>out</direction>\n               <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Sink</name>\n               <direction>out</direction>\n               <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetCurrentConnectionIDs</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionIDs</name>\n               <direction>out</direction>\n               <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>OK</allowedValue>\n            <allowedValue>ContentFormatMismatch</allowedValue>\n            <allowedValue>InsufficientBandwidth</allowedValue>\n            <allowedValue>UnreliableChannel</allowedValue>\n            <allowedValue>Unknown</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_AVTransportID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_RcsID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionManager</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SourceProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SinkProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Direction</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>Input</allowedValue>\n            <allowedValue>Output</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>CurrentConnectionIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

    invoke-direct {p0, v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptionFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z

    .line 364
    const/16 v0, 0x1f91

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mPort:I

    .line 365
    const-string v0, "/http"

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mLock:Ljava/lang/Object;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    .line 89
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "contentDirectorySCPD"    # Ljava/lang/String;
    .param p3, "connectionManagerSCPD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z

    .line 364
    const/16 v0, 0x1f91

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mPort:I

    .line 365
    const-string v0, "/http"

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mLock:Ljava/lang/Object;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic access$0(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cybergarage/upnp/std/av/server/MediaServer;Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    return-void
.end method

.method static synthetic access$3(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cybergarage/upnp/std/av/server/MediaServer;)Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    return-object v0
.end method

.method private initDevicePlugins()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;

    .end local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;-><init>()V

    .line 303
    .restart local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    .line 304
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/PNGFormat;

    .end local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/PNGFormat;-><init>()V

    .line 305
    .restart local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    .line 306
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/JPEGFormat;

    .end local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/JPEGFormat;-><init>()V

    .line 307
    .restart local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    .line 308
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;

    .end local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/DefaultFormat;-><init>()V

    .line 309
    .restart local v0    # "fmt":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    .line 310
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 127
    const/16 v3, 0x9

    invoke-static {v3}, Lorg/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 128
    const/4 v3, 0x0

    invoke-static {v3}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "firstIf":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->setInterfaceAddress(Ljava/lang/String;)V

    .line 131
    const v3, 0x9678

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->setHTTPPort(I)V

    .line 133
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;-><init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 134
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;-><init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    .line 136
    const-string v3, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 137
    .local v1, "servConDir":Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 138
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 140
    const-string v3, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 141
    .local v2, "servConMan":Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 142
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 143
    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "contentDirectorySCPD"    # Ljava/lang/String;
    .param p3, "connectionManagerSCPD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->loadDescription(Ljava/lang/String;)Z

    .line 115
    const-string v2, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 116
    .local v0, "servConDir":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 118
    const-string v2, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 119
    .local v1, "servConMan":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v1, p3}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 121
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize()V

    .line 122
    return-void
.end method

.method private startWebServer()V
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer$1;-><init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 399
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    return-void
.end method

.method private stopWebServer()V
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mServer:Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/SimpleWebServer;->stop()V

    .line 404
    :cond_0
    monitor-exit v1

    .line 412
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addContentDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)V
    .locals 1
    .param p1, "dir"    # Lorg/cybergarage/upnp/std/av/server/Directory;

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)Z

    .line 174
    return-void
.end method

.method public addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z
    .locals 1
    .param p1, "format"    # Lorg/cybergarage/upnp/std/av/server/object/Format;

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->stop()Z

    .line 148
    return-void
.end method

.method public getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    return-object v0
.end method

.method public getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    return-object v0
.end method

.method public getContentDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 318
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 319
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 322
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 324
    instance-of v4, v2, Ljava/net/Inet6Address;

    if-nez v4, :cond_2

    .line 329
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 333
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getNContentDirectories()I
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNDirectories()I

    move-result v0

    return v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 359
    const/16 v0, 0x1f91

    return v0
.end method

.method public getServerRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingState()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    return v0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 225
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "uri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 228
    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentExportRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-super {p0, p1}, Lorg/cybergarage/upnp/Device;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method public declared-synchronized isServiceRunning()Z
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllContentDirectories()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->removeAllDirectories()Z

    .line 184
    return-void
.end method

.method public removeContentDirectory(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->removeDirectory(Ljava/lang/String;)Z

    .line 179
    return-void
.end method

.method public declared-synchronized restart()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    monitor-exit p0

    return v2

    .line 254
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize()V

    .line 255
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initDevicePlugins()V

    .line 256
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    const-string v1, "ContentDirectory"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->start(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    if-ne v0, v2, :cond_1

    .line 259
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->start()Z

    .line 261
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->startWebServer()V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setServerRootDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mRootDir:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setWorkingState(I)V
    .locals 0
    .param p1, "mWorkingState"    # I

    .prologue
    .line 421
    iput p1, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    .line 422
    return-void
.end method

.method public declared-synchronized start()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 268
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    monitor-exit p0

    return v2

    .line 272
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initDevicePlugins()V

    .line 273
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    const-string v1, "ContentDirectory"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->start(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    if-ne v0, v2, :cond_1

    .line 276
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->start()Z

    .line 278
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->startWebServer()V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 296
    :goto_0
    monitor-exit p0

    return v1

    .line 289
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->stop()V

    .line 290
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->mWorkingState:I

    if-ne v0, v1, :cond_1

    .line 292
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->stop()Z

    .line 294
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->stopWebServer()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->isServerStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method
