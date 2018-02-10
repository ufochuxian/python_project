.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionManagerConstStr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AVTRANSPORTID:Ljava/lang/String; = "AVTransportID"

.field public static final CONNECTIONCOMPLETE:Ljava/lang/String; = "ConnectionComplete"

.field public static final CONNECTIONID:Ljava/lang/String; = "ConnectionID"

.field public static final CONNECTIONIDS:Ljava/lang/String; = "ConnectionIDs"

.field public static final CONTENTFORMATMISMATCH:Ljava/lang/String; = "ContentFormatMismatch"

.field public static final CONTROL_URL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:ConnectionManager_control"

.field public static final CURRENTCONNECTIONIDS:Ljava/lang/String; = "CurrentConnectionIDs"

.field public static final DIRECTION:Ljava/lang/String; = "Direction"

.field public static final EVENTSUB_URL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:ConnectionManager_event"

.field public static final GETCURRENTCONNECTIONIDS:Ljava/lang/String; = "GetCurrentConnectionIDs"

.field public static final GETCURRENTCONNECTIONINFO:Ljava/lang/String; = "GetCurrentConnectionInfo"

.field public static final GETPROTOCOLINFO:Ljava/lang/String; = "GetProtocolInfo"

.field public static final HTTP_GET:Ljava/lang/String; = "http-get"

.field public static final INPUT:Ljava/lang/String; = "Input"

.field public static final INSUFFICIENTBANDWIDTH:Ljava/lang/String; = "InsufficientBandwidth"

.field public static final NOT_IMPLEMENTED:Ljava/lang/String; = "NOT_IMPLEMENTED"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OUTPUT:Ljava/lang/String; = "Output"

.field public static final PEERCONNECTIONID:Ljava/lang/String; = "PeerConnectionID"

.field public static final PEERCONNECTIONMANAGER:Ljava/lang/String; = "PeerConnectionManager"

.field public static final PREPAREFORCONNECTION:Ljava/lang/String; = "PrepareForConnection"

.field public static final PROTOCOLINFO:Ljava/lang/String; = "ProtocolInfo"

.field public static final RCSID:Ljava/lang/String; = "RcsID"

.field public static final REMOTEPROTOCOLINFO:Ljava/lang/String; = "RemoteProtocolInfo"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\r\n  <specVersion>\r\n    <major>1</major>\r\n    <minor>0</minor>\r\n  </specVersion>\r\n  <actionList>\r\n    <action>\r\n      <name>GetCurrentConnectionInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>ConnectionID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RcsID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>AVTransportID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>ProtocolInfo</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PeerConnectionManager</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PeerConnectionID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Direction</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Status</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetProtocolInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>Source</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Sink</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetCurrentConnectionIDs</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>ConnectionIDs</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n  </actionList>\r\n  <serviceStateTable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionStatus</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>OK</allowedValue>\r\n        <allowedValue>ContentFormatMismatch</allowedValue>\r\n        <allowedValue>InsufficientBandwidth</allowedValue>\r\n        <allowedValue>UnreliableChannel</allowedValue>\r\n        <allowedValue>Unknown</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_AVTransportID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_RcsID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionManager</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>SourceProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>SinkProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_Direction</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>Input</allowedValue>\r\n        <allowedValue>Output</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>CurrentConnectionIDs</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n  </serviceStateTable>\r\n</scpd>"

.field public static final SCPDURL:Ljava/lang/String; = "_urn:schemas-upnp-org:service:ConnectionManager_scpd.xml"

.field public static final SERVICE_ID:Ljava/lang/String; = "urn:upnp-org:serviceId:ConnectionManager"

.field private static final SERVICE_NAME:Ljava/lang/String; = "ConnectionManager"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:ConnectionManager:1"

.field public static final SINK:Ljava/lang/String; = "Sink"

.field public static final SINKPROTOCOLINFO:Ljava/lang/String; = "SinkProtocolInfo"

.field public static final SOURCE:Ljava/lang/String; = "Source"

.field public static final SOURCEPROTOCOLINFO:Ljava/lang/String; = "SourceProtocolInfo"

.field public static final STATUS:Ljava/lang/String; = "Status"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UNRELIABLECHANNEL:Ljava/lang/String; = "UnreliableChannel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
