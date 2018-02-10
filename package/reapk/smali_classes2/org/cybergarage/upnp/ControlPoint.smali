.class public Lorg/cybergarage/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;


# static fields
.field private static final DEFAULT_EVENTSUB_PORT:I = 0x1f7a

.field private static final DEFAULT_EVENTSUB_URI:Ljava/lang/String; = "/evetSub"

.field private static final DEFAULT_EXPIRED_DEVICE_MONITORING_INTERVAL:I = 0x5

.field private static final DEFAULT_SSDP_PORT:I = 0xcfd4

.field private static final DEVICE_FOUND_FAILED_INFO_FORMAT:Ljava/lang/String; = "udn=%s&isIQIYI=%s&server=%s&myName=%s&cause=%s"

.field private static final DLNA_DEVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaRenderer:1"

.field private static final DLNA_MEDIARENDERER:Ljava/lang/String; = "MediaRenderer"

.field private static final DLNA_MEDIASERVER:Ljava/lang/String; = "MediaServer"

.field private static final DLNA_ROUTER:Ljava/lang/String; = "InternetGatewayDevice"

.field private static final DLNA_URN:Ljava/lang/String; = "urn:schemas-upnp-org:device:"

.field private static final EXTERNAL_VALUE:Ljava/lang/String; = "external"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static isOpenRealTime:Z

.field public static maxDelayTime:J


# instance fields
.field private DEFAULT_SEARCH_INTERVAL:I

.field private allDevNodeList:Lorg/cybergarage/xml/NodeList;

.field public currentControlDevice:Lorg/cybergarage/upnp/Device;

.field private devNodeList:Lorg/cybergarage/xml/NodeList;

.field deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventSubURI:Ljava/lang/String;

.field private expiredDeviceMonitoringInterval:J

.field private findDeviceType:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

.field private httpPort:I

.field private httpServerList:Lorg/cybergarage/http/HTTPServerList;

.field public isAppSleep:Z

.field private mAddDeviceFailedListener:Lorg/cybergarage/upnp/device/AddDeviceFailedListener;

.field public mExternalGID:Z

.field private final mFoundFaiedDeviceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLongforKeepAlive:Z

.field private final mRouterDeviceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private nmprMode:Z

.field private renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

.field private searchMx:I

.field private ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

.field private subTimeout:J

.field private userData:Ljava/lang/Object;

.field private uuid:Ljava/lang/String;

.field private whiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    const-class v0, Lorg/cybergarage/upnp/ControlPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    .line 139
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/cybergarage/upnp/ControlPoint;->maxDelayTime:J

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cybergarage/upnp/ControlPoint;->isOpenRealTime:Z

    .line 201
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 202
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 230
    const v0, 0xcfd4

    const/16 v1, 0x1f7a

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II)V

    .line 231
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "ssdpPort"    # I
    .param p2, "httpPort"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II[Ljava/net/InetAddress;)V

    .line 226
    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "ssdpPort"    # I
    .param p2, "httpPort"    # I
    .param p3, "binds"    # [Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_RENDERER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->findDeviceType:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 135
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    .line 137
    iput-boolean v3, p0, Lorg/cybergarage/upnp/ControlPoint;->isAppSleep:Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mLongforKeepAlive:Z

    .line 144
    const/16 v0, 0x1388

    iput v0, p0, Lorg/cybergarage/upnp/ControlPoint;->DEFAULT_SEARCH_INTERVAL:I

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/cybergarage/upnp/ControlPoint;->subTimeout:J

    .line 148
    iput-boolean v3, p0, Lorg/cybergarage/upnp/ControlPoint;->mExternalGID:Z

    .line 249
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    .line 287
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    .line 320
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    .line 336
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 352
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 384
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    .line 395
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    .line 409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mRouterDeviceList:Ljava/util/HashSet;

    .line 425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mFoundFaiedDeviceList:Ljava/util/HashSet;

    .line 960
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    .line 998
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    .line 1033
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    .line 1144
    const/16 v0, 0xa

    iput v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 1179
    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    .line 1217
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    .line 1243
    const-string v0, "/evetSub"

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 1687
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 210
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    .line 211
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 213
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 214
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 216
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 217
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 219
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 220
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 221
    return-void
.end method

.method private declared-synchronized addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 12
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Current search type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getFindDeviceType()Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 575
    if-nez p1, :cond_1

    .line 577
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Ssdp packet is null,IGNOR!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiDeviceType()I

    move-result v9

    sget v10, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE:I

    if-eq v9, v10, :cond_2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 583
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Not a dongle,IGNOR!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 587
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z

    move-result v9

    if-nez v9, :cond_3

    .line 589
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "Is not RootDevice,IGNOR!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "usn":Ljava/lang/String;
    invoke-static {v8}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, "udn":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "l":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "addDevice(): udn ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "location= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 598
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_4

    .line 600
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 602
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v9, ""

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 604
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 606
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    .line 607
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->performUpdatedDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 615
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v10

    const-string v11, "::"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v9, v10}, Lcom/iqiyi/android/dlna/sdk/controlpoint/TVGuoDescription;->construct(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "desXml":Ljava/lang/String;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v4

    .line 617
    .local v4, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v4, v0}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 618
    .local v6, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v6}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 619
    .local v5, "rootDev":Lorg/cybergarage/upnp/Device;
    if-nez v5, :cond_5

    .line 621
    sget-object v9, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    const-string v10, "device build failed"

    invoke-static {v9, v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 634
    .end local v0    # "desXml":Ljava/lang/String;
    .end local v4    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v6    # "rootNode":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v7, v9}, Lorg/cybergarage/upnp/ControlPoint;->onAddDeviceFailed(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 625
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "desXml":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/cybergarage/xml/Parser;
    .restart local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    .restart local v6    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_5
    :try_start_5
    invoke-virtual {v5, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 626
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiVersion()I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/cybergarage/upnp/Device;->setDeviceVersion(I)V

    .line 627
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiDeviceType()I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/cybergarage/upnp/Device;->setDeviceName(I)V

    .line 628
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiDeviceVersion()I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/cybergarage/upnp/Device;->setQiyiDeviceVersion(I)V

    .line 630
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "addDevice() devFriendlyname: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IQIYIDEVICE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 631
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getDeviceName()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IQIYIVERSION:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getDeviceVersion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "DEVICEVERSION:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 632
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getQiyiDeviceVersion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 630
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0, v5, v6}, Lorg/cybergarage/upnp/ControlPoint;->addDeviceByType(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/xml/Node;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method private addDevice(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 388
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method private addDeviceByType(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "rootDev"    # Lorg/cybergarage/upnp/Device;
    .param p2, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 457
    const-string v0, "addDeviceByType() "

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->addDeviceToAllDeviceList(Lorg/cybergarage/xml/Node;)V

    .line 463
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;)V

    .line 466
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V

    .line 469
    :cond_0
    return-void
.end method

.method private addDeviceToAllDeviceList(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 402
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private addFoundFailedDevice(Ljava/lang/String;)V
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mFoundFaiedDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method private addRouterDevice(Ljava/lang/String;)V
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mRouterDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method private addStandardDLNADevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .param p2, "udn"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->checkServerNameInBlackList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 475
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "device in black list,IGNORE!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lorg/cybergarage/upnp/ControlPoint;->LOG_TAG:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "Add standard DLNA device udn: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " device remote address: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceByAllDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 482
    .local v1, "devInAllDeviceList":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_5

    .line 484
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 485
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "friendName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 491
    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 492
    .local v6, "locationUrl":Ljava/net/URL;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v8

    .line 493
    .local v8, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v8, v6}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v11

    .line 494
    .local v11, "rootNode":Lorg/cybergarage/xml/Node;
    const-string v12, "device"

    invoke-virtual {v11, v12}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v12

    const-string v13, "friendlyName"

    invoke-virtual {v12, v13}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 502
    .end local v6    # "locationUrl":Ljava/net/URL;
    .end local v8    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 503
    .local v2, "device":Lorg/cybergarage/upnp/Device;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 504
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 503
    const/4 v5, 0x1

    .line 505
    .local v5, "isFriendNameChange":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 508
    if-eqz v5, :cond_3

    .line 510
    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    .line 513
    :cond_3
    if-eqz v5, :cond_0

    .line 515
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    .line 516
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->performUpdatedDeviceListener(Lorg/cybergarage/upnp/Device;)V

    goto/16 :goto_0

    .line 495
    .end local v2    # "device":Lorg/cybergarage/upnp/Device;
    .end local v5    # "isFriendNameChange":Z
    :catch_0
    move-exception v3

    .line 497
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 498
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 503
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "device":Lorg/cybergarage/upnp/Device;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 523
    .end local v2    # "device":Lorg/cybergarage/upnp/Device;
    .end local v4    # "friendName":Ljava/lang/String;
    :cond_5
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "addStandardDLNADevice location: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 524
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v6    # "locationUrl":Ljava/net/URL;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v8

    .line 526
    .restart local v8    # "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v8, v6}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v11

    .line 527
    .restart local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v11}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v10

    .line 528
    .local v10, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v10, :cond_0

    .line 531
    invoke-virtual {v10, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 532
    invoke-virtual {v10}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "InternetGatewayDevice"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 534
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addRouterDevice(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 555
    .end local v6    # "locationUrl":Ljava/net/URL;
    .end local v8    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v10    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    :catch_1
    move-exception v7

    .line 557
    .local v7, "me":Ljava/net/MalformedURLException;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 558
    invoke-static {v7}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 559
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v12}, Lorg/cybergarage/upnp/ControlPoint;->onAddDeviceFailed(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    .end local v7    # "me":Ljava/net/MalformedURLException;
    .restart local v6    # "locationUrl":Ljava/net/URL;
    .restart local v8    # "parser":Lorg/cybergarage/xml/Parser;
    .restart local v10    # "rootDev":Lorg/cybergarage/upnp/Device;
    .restart local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_6
    :try_start_2
    invoke-static {v10}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 540
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getFindDeviceType()Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    move-result-object v12

    sget-object v13, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_RENDERER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    if-ne v12, v13, :cond_8

    .line 543
    invoke-virtual {v10}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "urn:schemas-upnp-org:device:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MediaRenderer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 551
    :cond_7
    invoke-direct {p0, v11}, Lorg/cybergarage/upnp/ControlPoint;->addDeviceToAllDeviceList(Lorg/cybergarage/xml/Node;)V

    .line 552
    invoke-direct {p0, v11}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;)V

    .line 553
    sget v12, Lcom/iqiyi/android/dlna/sdk/DeviceName;->MEDIA_RENDERER:I

    invoke-virtual {v10, v12}, Lorg/cybergarage/upnp/Device;->setDeviceName(I)V

    .line 554
    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 560
    .end local v6    # "locationUrl":Ljava/net/URL;
    .end local v8    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v10    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    :catch_2
    move-exception v9

    .line 562
    .local v9, "pe":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v9}, Lorg/cybergarage/xml/ParserException;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v12}, Lorg/cybergarage/upnp/ControlPoint;->onAddDeviceFailed(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 564
    invoke-static {v9}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 545
    .end local v9    # "pe":Lorg/cybergarage/xml/ParserException;
    .restart local v6    # "locationUrl":Ljava/net/URL;
    .restart local v8    # "parser":Lorg/cybergarage/xml/Parser;
    .restart local v10    # "rootDev":Lorg/cybergarage/upnp/Device;
    .restart local v11    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getFindDeviceType()Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    move-result-object v12

    sget-object v13, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_SERVER:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    if-ne v12, v13, :cond_7

    .line 548
    invoke-virtual {v10}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "urn:schemas-upnp-org:device:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MediaServer"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    if-nez v12, :cond_7

    goto/16 :goto_0
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1257
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private getwhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    .line 256
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    const-string v1, "IQIYIDLNA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    const-string v1, "NewDLNA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->whiteList:Ljava/util/List;

    return-object v0
.end method

.method private isConnect(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 816
    const/4 v1, 0x0

    .line 819
    .local v1, "socket":Ljava/net/Socket;
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    .end local v1    # "socket":Ljava/net/Socket;
    .local v2, "socket":Ljava/net/Socket;
    :try_start_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x9c4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 831
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 837
    :goto_0
    const/4 v1, 0x0

    .line 839
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v1    # "socket":Ljava/net/Socket;
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 821
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 825
    const-string v3, "connect server failur,must be Expired!"

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 831
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 837
    :goto_3
    const/4 v1, 0x0

    .line 826
    const/4 v3, 0x0

    goto :goto_1

    .line 832
    :catch_1
    move-exception v0

    .line 835
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 831
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 837
    :goto_5
    const/4 v1, 0x0

    .line 838
    throw v3

    .line 832
    :catch_2
    move-exception v0

    .line 835
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 835
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v1    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 821
    .end local v1    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v1    # "socket":Ljava/net/Socket;
    goto :goto_2
.end method

.method private isInFoundFailedDeviceList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mFoundFaiedDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mFoundFaiedDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isInRouterDeviceList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mRouterDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mRouterDeviceList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isMediaRenderer(Lorg/cybergarage/upnp/Device;)Z
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 443
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isQIYIMediaRenderer(Lorg/cybergarage/upnp/Device;)Z
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 449
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IQIYI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private onAddDeviceFailed(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .param p2, "udn"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 1725
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->mAddDeviceFailedListener:Lorg/cybergarage/upnp/device/AddDeviceFailedListener;

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->isInFoundFailedDeviceList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    const-string v1, "udn=%s&isIQIYI=%s&server=%s&myName=%s&cause=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->mAddDeviceFailedListener:Lorg/cybergarage/upnp/device/AddDeviceFailedListener;

    invoke-interface {v1, v0}, Lorg/cybergarage/upnp/device/AddDeviceFailedListener;->onAddDeviceFailed(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->addFoundFailedDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "usn":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    :cond_0
    const-string v2, "++++20150615 removeDevice(SSDPPacket packet) usn == null || usn ==  "

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :goto_0
    monitor-exit p0

    return-void

    .line 795
    :cond_1
    :try_start_1
    invoke-static {v1}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "udn":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 798
    :cond_2
    const-string v2, "++++20150615 removeDevice(SSDPPacket packet) udn == null || udn ==  "

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    .end local v0    # "udn":Ljava/lang/String;
    .end local v1    # "usn":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 801
    .restart local v0    # "udn":Ljava/lang/String;
    .restart local v1    # "usn":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized removeDevice(Lorg/cybergarage/xml/Node;)V
    .locals 5
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 720
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 723
    .local v1, "service":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 725
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++removeDevice() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clear SID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 730
    .end local v1    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++removeDevice() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->hasDevice(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++removeDevice() skip! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 738
    :cond_2
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 740
    move-object v2, p1

    .line 742
    .local v2, "tempNode":Lorg/cybergarage/xml/Node;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++removeDevice() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v3, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 747
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    if-eqz v3, :cond_3

    .line 749
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 751
    :cond_3
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v2    # "tempNode":Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 755
    .restart local v0    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "!!!!!!!!!!!!!! removeDevice error dev"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dev.isRootDevice():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 756
    move-object v2, p1

    .line 757
    .restart local v2    # "tempNode":Lorg/cybergarage/xml/Node;
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v3, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 761
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    if-eqz v3, :cond_1

    .line 763
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 1038
    return-void
.end method

.method public addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/event/EventListener;

    .prologue
    .line 1221
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 1222
    return-void
.end method

.method public addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/NotifyListener;

    .prologue
    .line 964
    if-eqz p1, :cond_0

    .line 966
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_0
    return-void
.end method

.method public addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchResponseListener;

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 1003
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 236
    return-void
.end method

.method public getConstructionData(B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # B

    .prologue
    .line 308
    const-wide/16 v0, 0x0

    .line 312
    .local v0, "offset":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 669
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 670
    .local v3, "nRoots":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 682
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 672
    :cond_1
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 673
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 674
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_3

    .line 670
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 678
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 679
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 680
    goto :goto_1
.end method

.method protected getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;
    .locals 3
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    const/4 v1, 0x0

    .line 644
    if-nez p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-object v1

    .line 646
    :cond_1
    const-string v2, "device"

    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 647
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 649
    new-instance v1, Lorg/cybergarage/upnp/Device;

    invoke-direct {v1, p1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getDeviceByAllDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 691
    .local v3, "nRoots":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 703
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 693
    :cond_1
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 694
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 695
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_3

    .line 691
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_3
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 699
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 700
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 701
    goto :goto_1
.end method

.method public getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 6

    .prologue
    .line 654
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 655
    .local v1, "devList":Lorg/cybergarage/upnp/DeviceList;
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 656
    .local v3, "nRoots":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 664
    return-object v1

    .line 658
    :cond_0
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 659
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 660
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_1

    .line 656
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getEventSubURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .locals 2

    .prologue
    .line 943
    iget-wide v0, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getExternalApp()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mExternalGID:Z

    return v0
.end method

.method public getFindDeviceType()Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->findDeviceType:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1432
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1433
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1434
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 1441
    const/4 v4, 0x0

    :cond_0
    return-object v4

    .line 1436
    :cond_1
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1437
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1438
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    .line 297
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    move-result-object v0

    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->Save(Ljava/lang/String;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 11
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1188
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1192
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1194
    new-instance v7, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v7, p1}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1195
    .local v7, "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 1197
    .local v2, "seq":J
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getPropertyList()Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v10

    .line 1198
    .local v10, "props":Lorg/cybergarage/upnp/event/PropertyList;
    invoke-virtual {v10}, Lorg/cybergarage/upnp/event/PropertyList;->size()I

    move-result v9

    .line 1199
    .local v9, "propCnt":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-lt v6, v9, :cond_1

    .line 1206
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnOK()Z

    .line 1211
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "seq":J
    .end local v6    # "n":I
    .end local v7    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v9    # "propCnt":I
    .end local v10    # "props":Lorg/cybergarage/upnp/event/PropertyList;
    :goto_1
    return-void

    .line 1201
    .restart local v1    # "uuid":Ljava/lang/String;
    .restart local v2    # "seq":J
    .restart local v6    # "n":I
    .restart local v7    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .restart local v9    # "propCnt":I
    .restart local v10    # "props":Lorg/cybergarage/upnp/event/PropertyList;
    :cond_1
    invoke-virtual {v10, v6}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/Property;

    move-result-object v8

    .line 1202
    .local v8, "prop":Lorg/cybergarage/upnp/event/Property;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1203
    .local v4, "varName":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, "varValue":Ljava/lang/String;
    move-object v0, p0

    .line 1204
    invoke-virtual/range {v0 .. v5}, Lorg/cybergarage/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1199
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "seq":J
    .end local v4    # "varName":Ljava/lang/String;
    .end local v5    # "varValue":Ljava/lang/String;
    .end local v6    # "n":I
    .end local v7    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v8    # "prop":Lorg/cybergarage/upnp/event/Property;
    .end local v9    # "propCnt":I
    .end local v10    # "props":Lorg/cybergarage/upnp/event/PropertyList;
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_1
.end method

.method public isCurrentDeviceConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 844
    move-object v0, p0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    .line 847
    .local v0, "controlPoint":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getLastResponseTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v1

    .line 852
    :cond_1
    const-string v2, "test"

    invoke-virtual {v0, v2, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 854
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v2

    .line 270
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getwhiteList()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "mylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    return v0
.end method

.method public isSubscribed(Lorg/cybergarage/upnp/Service;)Z
    .locals 1
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1366
    if-nez p1, :cond_0

    .line 1367
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 325
    return-void
.end method

.method public notifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1122
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyReceived() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1125
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1131
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1132
    return-void

    .line 1126
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyReceived() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 8
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "++++20150615performAddDeviceListener() device number:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1050
    const-string v7, " deviceChange number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v7}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1049
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1051
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v6}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v4

    .line 1052
    .local v4, "nRoots":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 1059
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v6}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 1060
    .local v1, "listenerSize":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 1065
    return-void

    .line 1054
    .end local v1    # "listenerSize":I
    :cond_0
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v6, v3}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1055
    .local v5, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 1056
    .local v2, "mdev":Lorg/cybergarage/upnp/Device;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "++++20150615performAddDeviceListener() "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1057
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1056
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1052
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    .end local v2    # "mdev":Lorg/cybergarage/upnp/Device;
    .end local v5    # "rootNode":Lorg/cybergarage/xml/Node;
    .restart local v1    # "listenerSize":I
    :cond_1
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v6, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 1063
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lorg/cybergarage/upnp/Device;)V

    .line 1060
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1231
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v6

    .line 1232
    .local v6, "listenerSize":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-lt v7, v6, :cond_0

    .line 1237
    return-void

    .line 1234
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1, v7}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/event/EventListener;

    .local v0, "listener":Lorg/cybergarage/upnp/event/EventListener;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 1235
    invoke-interface/range {v0 .. v5}, Lorg/cybergarage/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1232
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 980
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 981
    .local v2, "listenerSize":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 992
    return-void

    .line 983
    :cond_0
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/NotifyListener;

    .line 986
    .local v1, "listener":Lorg/cybergarage/upnp/device/NotifyListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/NotifyListener;->deviceNotifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 987
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NotifyListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 8
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1096
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v6}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 1099
    .local v1, "listenerSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "++++20150615performRemoveDeviceListener() device number:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1100
    const-string v7, " deviceChange number:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v7}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1099
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1101
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v6}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v4

    .line 1102
    .local v4, "nRoots":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 1109
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_1

    .line 1114
    return-void

    .line 1104
    :cond_0
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v6, v3}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1105
    .local v5, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 1106
    .local v2, "mdev":Lorg/cybergarage/upnp/Device;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "++++20150615performRemoveDeviceListener() "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1107
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1111
    .end local v2    # "mdev":Lorg/cybergarage/upnp/Device;
    .end local v5    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_1
    iget-object v6, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v6, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 1112
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V

    .line 1109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1012
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 1013
    .local v2, "listenerSize":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 1024
    return-void

    .line 1015
    :cond_0
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/SearchResponseListener;

    .line 1018
    .local v1, "listener":Lorg/cybergarage/upnp/device/SearchResponseListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SearchResponseListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public performUpdatedDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1072
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 1073
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1078
    return-void

    .line 1075
    :cond_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 1076
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceUpdated(Lorg/cybergarage/upnp/Device;)V

    .line 1073
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public print()V
    .locals 8

    .prologue
    .line 1705
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1706
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1707
    .local v1, "devCnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Device Num = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1708
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1713
    return-void

    .line 1710
    :cond_0
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1711
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1708
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected removeDevice(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 779
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeDevice: device ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    goto :goto_0
.end method

.method protected removeDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 771
    if-nez p1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public removeDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 1043
    return-void
.end method

.method public removeEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/event/EventListener;

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 1227
    return-void
.end method

.method public removeExpiredDevices()V
    .locals 18

    .prologue
    .line 863
    const-string v14, "removeExpiredDevices: check expired devices..."

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v6

    .line 866
    .local v6, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v5

    .line 867
    .local v5, "devCnt":I
    new-array v4, v5, [Lorg/cybergarage/upnp/Device;

    .line 868
    .local v4, "dev":[Lorg/cybergarage/upnp/Device;
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_0
    if-lt v10, v5, :cond_0

    .line 871
    const/4 v10, 0x0

    :goto_1
    if-lt v10, v5, :cond_1

    .line 934
    return-void

    .line 869
    :cond_0
    invoke-virtual {v6, v10}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v14

    aput-object v14, v4, v10

    .line 868
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 874
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v14}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v14

    aget-object v15, v4, v10

    invoke-virtual {v15}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v15

    if-ne v14, v15, :cond_3

    .line 876
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Check current device connection before expiration check: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v15}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 876
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/ControlPoint;->isCurrentDeviceConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 884
    const/16 v14, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/ControlPoint;->getConstructionData(B)Ljava/lang/String;

    move-result-object v3

    .line 887
    .local v3, "data":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v14, v3}, Lorg/cybergarage/upnp/Device;->sendDataToHostTokeepAlive(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v3    # "data":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 888
    .restart local v3    # "data":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 890
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 896
    .end local v3    # "data":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    aget-object v14, v4, v10

    invoke-virtual {v14}, Lorg/cybergarage/upnp/Device;->isExpired()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 901
    :try_start_1
    aget-object v14, v4, v10

    invoke-virtual {v14}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v12

    .line 902
    .local v12, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {v12}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v8

    .line 903
    .local v8, "location":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 904
    .local v9, "locationUrl":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "adderss":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v11

    .line 906
    .local v11, "port":I
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "location:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " host:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " port:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lorg/cybergarage/upnp/ControlPoint;->isConnect(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 910
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Remove expired device: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v4, v10

    invoke-virtual {v15}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 911
    aget-object v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 926
    .end local v2    # "adderss":Ljava/lang/String;
    .end local v8    # "location":Ljava/lang/String;
    .end local v9    # "locationUrl":Ljava/net/URL;
    .end local v11    # "port":I
    .end local v12    # "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :catch_1
    move-exception v7

    .line 928
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 929
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Remove expired device: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v15, v4, v10

    invoke-virtual {v15}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 930
    aget-object v14, v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    goto/16 :goto_2

    .line 915
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "adderss":Ljava/lang/String;
    .restart local v8    # "location":Ljava/lang/String;
    .restart local v9    # "locationUrl":Ljava/net/URL;
    .restart local v11    # "port":I
    .restart local v12    # "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_4
    :try_start_2
    aget-object v14, v4, v10

    invoke-virtual {v14}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v13

    .line 916
    .local v13, "tempDev":Lorg/cybergarage/upnp/Device;
    if-eqz v13, :cond_2

    .line 918
    invoke-virtual {v13}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 921
    const-string v14, "device expired,but connected! update timestamp!\uff01"

    invoke-static {v14}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v13}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method public removeNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/NotifyListener;

    .prologue
    .line 972
    if-eqz p1, :cond_0

    .line 974
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 976
    :cond_0
    return-void
.end method

.method public removeSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchResponseListener;

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 1008
    return-void
.end method

.method public renewSubscriberService()V
    .locals 2

    .prologue
    .line 1485
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 1486
    return-void
.end method

.method public renewSubscriberService(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 1474
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1475
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1476
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1481
    return-void

    .line 1478
    :cond_0
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1479
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V
    .locals 10
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;
    .param p2, "timeout"    # J

    .prologue
    .line 1450
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v7

    .line 1451
    .local v7, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v6

    .line 1452
    .local v6, "serviceCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v6, :cond_0

    .line 1463
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1464
    .local v2, "cdevList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1465
    .local v1, "cdevCnt":I
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v1, :cond_3

    .line 1470
    return-void

    .line 1454
    .end local v1    # "cdevCnt":I
    .end local v2    # "cdevList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v5

    .line 1455
    .local v5, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1452
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1457
    :cond_2
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 1458
    .local v8, "sid":Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 1459
    .local v3, "isRenewed":Z
    if-nez v3, :cond_1

    .line 1460
    invoke-virtual {p0, v5, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->resubscribe(Lorg/cybergarage/upnp/Service;J)Z

    goto :goto_2

    .line 1467
    .end local v3    # "isRenewed":Z
    .end local v5    # "service":Lorg/cybergarage/upnp/Service;
    .end local v8    # "sid":Ljava/lang/String;
    .restart local v1    # "cdevCnt":I
    .restart local v2    # "cdevList":Lorg/cybergarage/upnp/DeviceList;
    :cond_3
    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1468
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 1465
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public resubscribe(Lorg/cybergarage/upnp/Service;J)Z
    .locals 6
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 1299
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1300
    .local v1, "rootDev":Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v4

    .line 1302
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, "ifAddress":Ljava/lang/String;
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 1304
    .local v2, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getExternalApp()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1306
    const-string v5, "sub: sub external for GUOAPP"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1307
    const-string v5, "external"

    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setGID(Ljava/lang/String;)V

    .line 1309
    :cond_2
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v5, p2, p3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 1310
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1311
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->print()V

    .line 1312
    :cond_3
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v3

    .line 1313
    .local v3, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1314
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1315
    :cond_4
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1317
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 1319
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized search()V
    .locals 2

    .prologue
    .line 1170
    monitor-enter p0

    :try_start_0
    const-string v0, "++++ControlPoint search"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1171
    const-string v0, "upnp:rootdevice"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 1172
    const-string v0, "----ControlPoint search"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    monitor-exit p0

    return-void

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1165
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 1166
    return-void
.end method

.method public search(Ljava/lang/String;I)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "mx"    # I

    .prologue
    .line 1158
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 1159
    .local v0, "msReq":Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    .line 1160
    .local v1, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    .line 1161
    return-void
.end method

.method public searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1137
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1138
    return-void
.end method

.method public setAddDeviceFailedListener(Lorg/cybergarage/upnp/device/AddDeviceFailedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/AddDeviceFailedListener;

    .prologue
    .line 1720
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->mAddDeviceFailedListener:Lorg/cybergarage/upnp/device/AddDeviceFailedListener;

    .line 1721
    return-void
.end method

.method public setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V
    .locals 0
    .param p1, "disposer"    # Lorg/cybergarage/upnp/device/Disposer;

    .prologue
    .line 948
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    .line 949
    return-void
.end method

.method public setEventSubURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1252
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 1253
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 938
    iput-wide p1, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 939
    return-void
.end method

.method public setExternalApp(Z)V
    .locals 0
    .param p1, "external"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/cybergarage/upnp/ControlPoint;->mExternalGID:Z

    .line 154
    return-void
.end method

.method public setExternalFilesDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "ExternalFilesDir"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->setExternalFilesDir(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->setExternalFilesDir(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setExternalFilesDir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setFindDeviceType(Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;)V
    .locals 0
    .param p1, "findDeviceType"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    sget-object p1, Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;->MEDIA_ALL:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 179
    :cond_0
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->findDeviceType:Lcom/iqiyi/android/dlna/sdk/controlpoint/DeviceType;

    .line 180
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 361
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 362
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    .line 373
    return-void
.end method

.method public setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V
    .locals 0
    .param p1, "sub"    # Lorg/cybergarage/upnp/control/RenewSubscriber;

    .prologue
    .line 1496
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    .line 1497
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 345
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 346
    return-void
.end method

.method public setSearchMx(I)V
    .locals 0
    .param p1, "mx"    # I

    .prologue
    .line 1153
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 1154
    return-void
.end method

.method public setSubscriberTimeout(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 163
    iput-wide p1, p0, Lorg/cybergarage/upnp/ControlPoint;->subTimeout:J

    .line 164
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1691
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 1692
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 1606
    const-string v0, "upnp:rootdevice"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1601
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "mx"    # I

    .prologue
    .line 1510
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MediaControlPoint start SDK VERSION: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 1517
    const/4 v6, 0x0

    .line 1518
    .local v6, "retryCnt":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    .line 1519
    .local v0, "bindPort":I
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v3

    .line 1520
    .local v3, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    :goto_0
    invoke-virtual {v3, v0}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1528
    invoke-virtual {v3, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 1529
    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 1535
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v7

    .line 1536
    .local v7, "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1537
    const/4 v10, 0x0

    .line 1596
    .end local v7    # "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    :goto_1
    return v10

    .line 1522
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 1523
    const/16 v10, 0x64

    if-ge v10, v6, :cond_1

    .line 1524
    const/4 v10, 0x0

    goto :goto_1

    .line 1525
    :cond_1
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 1526
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_0

    .line 1538
    .restart local v7    # "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    :cond_2
    invoke-virtual {v7, p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1539
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->start()V

    .line 1545
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v8

    .line 1546
    .local v8, "ssdpPort":I
    const/4 v6, 0x0

    .line 1547
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v9

    .line 1549
    .local v9, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    :goto_2
    invoke-virtual {v9, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1566
    invoke-virtual {v9, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1567
    invoke-virtual {v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->start()V

    .line 1572
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v10, 0x3

    if-lt v4, v10, :cond_6

    .line 1579
    new-instance v1, Lorg/cybergarage/upnp/device/Disposer;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/device/Disposer;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1580
    .local v1, "disposer":Lorg/cybergarage/upnp/device/Disposer;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1581
    const-string v10, "Disposer"

    invoke-virtual {v1, v10}, Lorg/cybergarage/upnp/device/Disposer;->start(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->isNMPRMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1589
    new-instance v5, Lorg/cybergarage/upnp/control/RenewSubscriber;

    invoke-direct {v5, p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1590
    .local v5, "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1591
    iget-wide v10, p0, Lorg/cybergarage/upnp/ControlPoint;->subTimeout:J

    invoke-virtual {v5, v10, v11}, Lorg/cybergarage/upnp/control/RenewSubscriber;->setSubscriberTimeout(J)V

    .line 1592
    const-string v10, "RenewSubscriber"

    invoke-virtual {v5, v10}, Lorg/cybergarage/upnp/control/RenewSubscriber;->start(Ljava/lang/String;)V

    .line 1595
    .end local v5    # "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MediaControlPoint start SDK VERSION [DONE]: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1596
    const/4 v10, 0x1

    goto :goto_1

    .line 1551
    .end local v1    # "disposer":Lorg/cybergarage/upnp/device/Disposer;
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 1554
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ssdpSearchResponseSocketList.open retry"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1560
    const/16 v10, 0x64

    if-ge v10, v6, :cond_5

    .line 1561
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1555
    :catch_0
    move-exception v2

    .line 1557
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 1563
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    add-int/lit8 v10, v8, 0xa

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 1564
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v8

    goto :goto_2

    .line 1573
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 1572
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public stop()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1611
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaControlPoint stop SDK VERSION: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v3

    .line 1614
    .local v3, "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 1615
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 1616
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 1618
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    .line 1619
    .local v4, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 1620
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 1621
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 1623
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 1624
    .local v1, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 1625
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 1626
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    .line 1628
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v5, :cond_0

    .line 1630
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->closeConnectHost()V

    .line 1637
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;

    move-result-object v0

    .line 1638
    .local v0, "disposer":Lorg/cybergarage/upnp/device/Disposer;
    if-eqz v0, :cond_1

    .line 1640
    const-string v5, "Stop Disposer Thread..."

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Disposer;->stop()V

    .line 1642
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1649
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;

    move-result-object v2

    .line 1650
    .local v2, "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    if-eqz v2, :cond_2

    .line 1652
    const-string v5, "Stop RenewSubscriber Thread..."

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v2}, Lorg/cybergarage/upnp/control/RenewSubscriber;->stop()V

    .line 1654
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1658
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe()V

    .line 1663
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    if-eqz v5, :cond_3

    .line 1665
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->allDevNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->clear()V

    .line 1671
    :cond_3
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    if-eqz v5, :cond_4

    .line 1673
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->clear()V

    .line 1676
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MediaControlPoint stop SDK VERSION [DONE]: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1678
    iput-object v7, p0, Lorg/cybergarage/upnp/ControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    .line 1680
    const/4 v5, 0x1

    return v5
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 2
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1330
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;J)Z
    .locals 8
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "timeout"    # J

    .prologue
    const/4 v5, 0x0

    .line 1262
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1264
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 1265
    .local v2, "sid":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 1294
    .end local v2    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 1268
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1269
    .local v1, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_0

    .line 1271
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "ifAddress":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 1273
    .local v3, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getExternalApp()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1275
    const-string v6, "sub: sub external for GUOAPP"

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1276
    const-string v6, "external"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setGID(Ljava/lang/String;)V

    .line 1278
    :cond_2
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v6, p2, p3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 1279
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1280
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->print()V

    .line 1281
    :cond_3
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 1282
    .local v4, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1283
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1284
    :cond_4
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1286
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 1288
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 1361
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 1335
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 1336
    .local v0, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getExternalApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1338
    const-string v2, "sub: renew sub external for GUOAPP"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1339
    const-string v2, "external"

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setGID(Ljava/lang/String;)V

    .line 1341
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setRenewRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 1342
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1343
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->print()V

    .line 1344
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1345
    .local v1, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1346
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1347
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1349
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 1351
    const/4 v2, 0x1

    .line 1356
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 330
    return-void
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 1417
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1418
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1419
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1424
    return-void

    .line 1421
    :cond_0
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1422
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 1419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Device;)V
    .locals 8
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1391
    if-nez p1, :cond_1

    .line 1393
    const-string v7, "[Error] unsubscribe dev == null"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1413
    :cond_0
    return-void

    .line 1397
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1398
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1399
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 1406
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1407
    .local v2, "childDevList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1408
    .local v1, "childDevCnt":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 1410
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1411
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 1408
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1401
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "childDevCnt":I
    .end local v2    # "childDevList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1402
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1403
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    .line 1399
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 3
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1373
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 1374
    .local v0, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getExternalApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    const-string v2, "sub: unsub external for GUOAPP"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1377
    const-string v2, "external"

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setGID(Ljava/lang/String;)V

    .line 1379
    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lorg/cybergarage/upnp/Service;)V

    .line 1380
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1381
    .local v1, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1383
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 1384
    const/4 v2, 0x1

    .line 1386
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
