.class public Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# static fields
.field public static final AVTRANSPORTID:Ljava/lang/String; = "AVTransportID"

.field public static final CONNECTIONCOMPLETE:Ljava/lang/String; = "ConnectionComplete"

.field public static final CONNECTIONID:Ljava/lang/String; = "ConnectionID"

.field public static final CONNECTIONIDS:Ljava/lang/String; = "ConnectionIDs"

.field public static final CONTENTFORMATMISMATCH:Ljava/lang/String; = "ContentFormatMismatch"

.field public static final CURRENTCONNECTIONIDS:Ljava/lang/String; = "CurrentConnectionIDs"

.field public static final DIRECTION:Ljava/lang/String; = "Direction"

.field public static final GETCURRENTCONNECTIONIDS:Ljava/lang/String; = "GetCurrentConnectionIDs"

.field public static final GETCURRENTCONNECTIONINFO:Ljava/lang/String; = "GetCurrentConnectionInfo"

.field public static final GETPROTOCOLINFO:Ljava/lang/String; = "GetProtocolInfo"

.field public static final HTTP_GET:Ljava/lang/String; = "http-get"

.field public static final INPUT:Ljava/lang/String; = "Input"

.field public static final INSUFFICIENTBANDWIDTH:Ljava/lang/String; = "InsufficientBandwidth"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OUTPUT:Ljava/lang/String; = "Output"

.field public static final PEERCONNECTIONID:Ljava/lang/String; = "PeerConnectionID"

.field public static final PEERCONNECTIONMANAGER:Ljava/lang/String; = "PeerConnectionManager"

.field public static final PREPAREFORCONNECTION:Ljava/lang/String; = "PrepareForConnection"

.field public static final PROTOCOLINFO:Ljava/lang/String; = "ProtocolInfo"

.field public static final RCSID:Ljava/lang/String; = "RcsID"

.field public static final REMOTEPROTOCOLINFO:Ljava/lang/String; = "RemoteProtocolInfo"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n\t<actionList>\n\t\t<action>\n         <name>GetCurrentConnectionInfo</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RcsID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>AVTransportID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ProtocolInfo</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionManager</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Direction</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Status</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetProtocolInfo</name>\n         <argumentList>\n            <argument>\n               <name>Source</name>\n               <direction>out</direction>\n               <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Sink</name>\n               <direction>out</direction>\n               <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetCurrentConnectionIDs</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionIDs</name>\n               <direction>out</direction>\n               <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>OK</allowedValue>\n            <allowedValue>ContentFormatMismatch</allowedValue>\n            <allowedValue>InsufficientBandwidth</allowedValue>\n            <allowedValue>UnreliableChannel</allowedValue>\n            <allowedValue>Unknown</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_AVTransportID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_RcsID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionManager</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SourceProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SinkProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Direction</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>Input</allowedValue>\n            <allowedValue>Output</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>CurrentConnectionIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:ConnectionManager:1"

.field public static final SINK:Ljava/lang/String; = "Sink"

.field public static final SINKPROTOCOLINFO:Ljava/lang/String; = "SinkProtocolInfo"

.field public static final SOURCE:Ljava/lang/String; = "Source"

.field public static final SOURCEPROTOCOLINFO:Ljava/lang/String; = "SourceProtocolInfo"

.field public static final STATUS:Ljava/lang/String; = "Status"

.field private static final TAG:Ljava/lang/String; = "ConnectionManager"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UNRELIABLECHANNEL:Ljava/lang/String; = "UnreliableChannel"


# instance fields
.field private conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

.field private maxConnectionID:I

.field private mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 1
    .param p1, "mserver"    # Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    .line 205
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    .line 145
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->maxConnectionID:I

    .line 147
    return-void
.end method

.method private getCurrentConnectionIDs(Lorg/cybergarage/upnp/Action;)Z
    .locals 6
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 311
    const-string v0, ""

    .line 312
    .local v0, "conIDs":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 313
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->size()I

    move-result v3

    .line 314
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 321
    const-string v4, "ConnectionIDs"

    invoke-virtual {p1, v4}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 323
    const/4 v4, 0x1

    return v4

    .line 316
    :cond_0
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    move-result-object v1

    .line 317
    .local v1, "info":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    if-lez v2, :cond_1

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getCurrentConnectionInfo(Lorg/cybergarage/upnp/Action;)Z
    .locals 5
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v4, -0x1

    .line 332
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v0

    .line 333
    .local v0, "id":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 334
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    move-result-object v1

    .line 335
    .local v1, "info":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    if-eqz v1, :cond_0

    .line 337
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getRcsID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 338
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getAVTransportID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 339
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getPeerConnectionManager()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 340
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getPeerConnectionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 341
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 342
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 352
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 353
    const/4 v2, 0x1

    return v2

    .line 345
    :cond_0
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 346
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 347
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 348
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 349
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Output"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 350
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaServer(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V
    .locals 0
    .param p1, "mserver"    # Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    .line 158
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 9
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 262
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "actionName":Ljava/lang/String;
    const-string v7, "GetProtocolInfo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    const-string v5, ""

    .line 268
    .local v5, "sourceValue":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNFormats()I

    move-result v3

    .line 269
    .local v3, "mimeTypeCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v3, :cond_1

    .line 277
    const-string v7, "Source"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 279
    const-string v7, "Sink"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 302
    .end local v3    # "mimeTypeCnt":I
    .end local v4    # "n":I
    .end local v5    # "sourceValue":Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 271
    .restart local v3    # "mimeTypeCnt":I
    .restart local v4    # "n":I
    .restart local v5    # "sourceValue":Ljava/lang/String;
    :cond_1
    if-lez v4, :cond_2

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v1

    .line 274
    .local v1, "format":Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-interface {v1}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "http-get:*:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "format":Lorg/cybergarage/upnp/std/av/server/object/Format;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "mimeTypeCnt":I
    .end local v4    # "n":I
    .end local v5    # "sourceValue":Ljava/lang/String;
    :cond_3
    const-string v7, "PrepareForConnection"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 285
    const-string v7, "ConnectionID"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 286
    const-string v7, "AVTransportID"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 287
    const-string v7, "RcsID"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    goto :goto_1

    .line 291
    :cond_4
    const-string v7, "ConnectionComplete"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 296
    const-string v6, "GetCurrentConnectionInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 297
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getCurrentConnectionInfo(Lorg/cybergarage/upnp/Action;)Z

    move-result v6

    goto :goto_1

    .line 299
    :cond_5
    const-string v6, "GetCurrentConnectionIDs"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 300
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getCurrentConnectionIDs(Lorg/cybergarage/upnp/Action;)Z

    move-result v6

    goto/16 :goto_1

    .line 302
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public addConnectionInfo(Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 227
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 229
    return-void
.end method

.method public getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 214
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->size()I

    move-result v2

    .line 215
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 221
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 217
    :cond_1
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    move-result-object v0

    .line 218
    .local v0, "info":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getID()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getConnectionInfoList()Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    return-object v0
.end method

.method public getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getMediaServer()Lorg/cybergarage/upnp/std/av/server/MediaServer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->mediaServer:Lorg/cybergarage/upnp/std/av/server/MediaServer;

    return-object v0
.end method

.method public getNextConnectionID()I
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 195
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->maxConnectionID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->maxConnectionID:I

    .line 196
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 197
    iget v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->maxConnectionID:I

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 179
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public removeConnectionInfo(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 234
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->size()I

    move-result v2

    .line 235
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 244
    :goto_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 245
    return-void

    .line 237
    :cond_0
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    move-result-object v0

    .line 238
    .local v0, "info":Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;->getID()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 240
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeConnectionInfo(Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;)V
    .locals 1
    .param p1, "info"    # Lorg/cybergarage/upnp/std/av/server/ConnectionInfo;

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->lock()V

    .line 250
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ConnectionInfoList;->remove(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->unlock()V

    .line 252
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 184
    return-void
.end method
