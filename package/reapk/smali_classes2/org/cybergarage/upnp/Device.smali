.class public Lorg/cybergarage/upnp/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;
.implements Lorg/cybergarage/upnp/device/SearchListener;


# static fields
.field public static final DEFAULT_DESCRIPTION_URI:Ljava/lang/String; = "/description.xml"

.field public static final DEFAULT_DISCOVERY_WAIT_TIME:I = 0x64

.field public static final DEFAULT_EXPIRED_DEVICE_TIME:I = 0xa

.field public static final DEFAULT_LEASE_TIME:I = 0x1e

.field public static final DEFAULT_STARTUP_WAIT_TIME:I = 0x3e8

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final DLNA_DOC:Ljava/lang/String; = "dlna:X_DLNADOC"

.field public static final DLNA_SEARCH_LEASE_TIME:I = 0x708

.field public static final ELEM_NAME:Ljava/lang/String; = "device"

.field private static final EXTERNAL_VALUE:Ljava/lang/String; = "external"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final HTTP_DEFAULT_PORT:I = 0xfa4

.field public static final IQIYI_DEVICE:Ljava/lang/String; = "IQIYI"

.field private static final MANUFACTURE:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURE_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field public static final UPNP_ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field private static final URLBASE_NAME:Ljava/lang/String; = "URLBase"

.field private static cal:Ljava/util/Calendar; = null

.field private static final presentationURL:Ljava/lang/String; = "presentationURL"


# instance fields
.field private final DEVICE_IQIYIDONGLERENDERER_TYPE:Ljava/lang/String;

.field private GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

.field private GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

.field public final UUID:Ljava/lang/String;

.field public bindssdpPort:I

.field private cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

.field private descriptionXmlContent:Ljava/lang/String;

.field private descriptionXmlMd5:Ljava/lang/String;

.field private devUUID:Ljava/lang/String;

.field private deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

.field private deviceNode:Lorg/cybergarage/xml/Node;

.field private dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/cybergarage/upnp/ssdp/SSDPPacket;",
            ">;"
        }
    .end annotation
.end field

.field private isSupperKeepAlive:Ljava/lang/Boolean;

.field private mDeviceName:I

.field private mDeviceVersion:I

.field private mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

.field private mIconPath:Ljava/lang/String;

.field private mSdkVersion:I

.field private mSdkVersionChanged:Z

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private privateServer:Lorg/cybergarage/upnp/Service;

.field private qiyiTCPPort:I

.field private qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

.field private qiyiUDPPort:I

.field private quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

.field private quicklySend:Z

.field private quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

.field private rootNode:Lorg/cybergarage/xml/Node;

.field private sendMessageAction:Lorg/cybergarage/upnp/Action;

.field private specVersionNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 2728
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0x4248

    iput v0, p0, Lorg/cybergarage/upnp/Device;->bindssdpPort:I

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    .line 197
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_BOX:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    .line 198
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->mSdkVersionChanged:Z

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    .line 203
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE_V1:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    .line 205
    const-string v0, "uuid:"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->UUID:Ljava/lang/String;

    .line 206
    const-string v0, "IQIYIDongleMediaRenderer"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->DEVICE_IQIYIDONGLERENDERER_TYPE:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->quicklySend:Z

    .line 234
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    .line 247
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 263
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 264
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    .line 266
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    .line 329
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    .line 330
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

    .line 367
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    .line 381
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    .line 408
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 423
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    .line 585
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlContent:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlMd5:Ljava/lang/String;

    .line 861
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    .line 1090
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    .line 2881
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3839
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 723
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/cybergarage/upnp/Device;->initDevice(II)V

    .line 724
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0x4248

    iput v0, p0, Lorg/cybergarage/upnp/Device;->bindssdpPort:I

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    .line 197
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_BOX:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    .line 198
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->mSdkVersionChanged:Z

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    .line 203
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE_V1:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    .line 205
    const-string v0, "uuid:"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->UUID:Ljava/lang/String;

    .line 206
    const-string v0, "IQIYIDongleMediaRenderer"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->DEVICE_IQIYIDONGLERENDERER_TYPE:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->quicklySend:Z

    .line 234
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    .line 247
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 263
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 264
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    .line 266
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    .line 329
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    .line 330
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

    .line 367
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    .line 381
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    .line 408
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 423
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    .line 585
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlContent:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlMd5:Ljava/lang/String;

    .line 861
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    .line 1090
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    .line 2881
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3839
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 731
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/Device;->initDevice(II)V

    .line 732
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "descriptionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 742
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/File;)Z

    .line 743
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 751
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/InputStream;)Z

    .line 752
    return-void
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
    .line 756
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 757
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 737
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 3
    .param p1, "root"    # Lorg/cybergarage/xml/Node;
    .param p2, "device"    # Lorg/cybergarage/xml/Node;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/16 v0, 0x4248

    iput v0, p0, Lorg/cybergarage/upnp/Device;->bindssdpPort:I

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    .line 197
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_BOX:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    .line 198
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->mSdkVersionChanged:Z

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    .line 203
    sget v0, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE_V1:I

    iput v0, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    .line 205
    const-string v0, "uuid:"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->UUID:Ljava/lang/String;

    .line 206
    const-string v0, "IQIYIDongleMediaRenderer"

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->DEVICE_IQIYIDONGLERENDERER_TYPE:Ljava/lang/String;

    .line 211
    iput-boolean v2, p0, Lorg/cybergarage/upnp/Device;->quicklySend:Z

    .line 234
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    .line 247
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 263
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 264
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    .line 266
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    .line 329
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    .line 330
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

    .line 367
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    .line 381
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    .line 408
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 423
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    .line 585
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlContent:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlMd5:Ljava/lang/String;

    .line 861
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    .line 1090
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    .line 2881
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3839
    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 710
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 711
    iput-object p2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setWirelessMode(Z)V

    .line 714
    return-void
.end method

.method private addRemoteDmcAddr(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 4
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 2885
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2887
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2893
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 2895
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 2898
    :cond_1
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2899
    :goto_0
    return-void

    .line 2887
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 2889
    .local v0, "temp":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2890
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method private contactURLString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "locationURLStr"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    .line 1153
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1155
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "absUrl":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1185
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 1160
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1177
    :goto_1
    invoke-static {p1, p2}, Lorg/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1181
    .restart local v2    # "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 1166
    .end local v0    # "absUrl":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "url":Ljava/net/URL;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .restart local v0    # "absUrl":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1170
    .restart local v2    # "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    .line 1171
    .end local v2    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 1173
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1182
    :catch_2
    move-exception v1

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1185
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 21
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ActionRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 3364
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 3365
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->print()V

    .line 3367
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v4

    .line 3369
    .local v4, "actionName":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3371
    :cond_1
    const-string v4, ""

    .line 3372
    const-string v17, "Failed to parse the action name...read it from origin data..."

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3373
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getSOAPAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "#"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3374
    .local v10, "tempStr":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 3376
    const/16 v17, 0x1

    aget-object v4, v10, v17

    .line 3380
    .end local v10    # "tempStr":[Ljava/lang/String;
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Action Name: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3381
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v2

    .line 3382
    .local v2, "action":Lorg/cybergarage/upnp/Action;
    if-nez v2, :cond_4

    .line 3384
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3484
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 3387
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v3

    .line 3388
    .local v3, "actionArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v9

    .line 3391
    .local v9, "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    if-eqz v9, :cond_5

    .line 3393
    const-string v17, "CurrentURI"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v12

    .line 3394
    .local v12, "tmpArg":Lorg/cybergarage/upnp/Argument;
    if-eqz v12, :cond_5

    .line 3396
    invoke-virtual {v12}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http://:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3399
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/cybergarage/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3400
    .local v8, "ip":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "http://:"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http:/"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 3401
    .local v11, "tmp":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Workaroud for QQ music...URI="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3402
    invoke-virtual {v12, v11}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3408
    .end local v8    # "ip":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    .end local v12    # "tmpArg":Lorg/cybergarage/upnp/Argument;
    :cond_5
    if-nez v9, :cond_6

    .line 3410
    const-string v17, "Failed to parse the action node...read it from origin data..."

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3411
    const-string v17, "SetAVTransportURI"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3413
    const-string v17, "And yes, this is SetAVTransportURI..."

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3415
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getContentString()Ljava/lang/String;

    move-result-object v6

    .line 3416
    .local v6, "content":Ljava/lang/String;
    const-string v17, "<CurrentURI>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 3417
    .local v13, "tmpStr1":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 3419
    const/16 v17, 0x1

    aget-object v17, v13, v17

    const-string v18, "</CurrentURI>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 3420
    .local v14, "tmpStr2":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 3422
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Add CurrentURI = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3423
    new-instance v9, Lorg/cybergarage/upnp/ArgumentList;

    .end local v9    # "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-direct {v9}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    .line 3424
    .restart local v9    # "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    new-instance v5, Lorg/cybergarage/upnp/Argument;

    invoke-direct {v5}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 3425
    .local v5, "arg":Lorg/cybergarage/upnp/Argument;
    const-string v17, "InstanceID"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 3426
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3427
    invoke-virtual {v9, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 3429
    new-instance v5, Lorg/cybergarage/upnp/Argument;

    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {v5}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 3430
    .restart local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    const-string v17, "CurrentURI"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 3431
    const/16 v17, 0x0

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3432
    invoke-virtual {v9, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 3434
    const-string v17, "<CurrentURIMetaData>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 3435
    .local v15, "tmpStr3":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 3437
    const/16 v17, 0x1

    aget-object v17, v15, v17

    const-string v18, "</CurrentURIMetaData>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 3438
    .local v16, "tmpStr4":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 3440
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Add CurrentURIMetaData = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3441
    new-instance v5, Lorg/cybergarage/upnp/Argument;

    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {v5}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 3442
    .restart local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    const-string v17, "CurrentURIMetaData"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 3443
    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {v9, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 3464
    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    .end local v6    # "content":Ljava/lang/String;
    .end local v13    # "tmpStr1":[Ljava/lang/String;
    .end local v14    # "tmpStr2":[Ljava/lang/String;
    .end local v15    # "tmpStr3":[Ljava/lang/String;
    .end local v16    # "tmpStr4":[Ljava/lang/String;
    :cond_6
    :goto_1
    if-nez v9, :cond_9

    .line 3466
    const-string v17, "[ERROR] deviceActionControlRecieved reqArgList == null"

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3467
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3364
    .end local v2    # "action":Lorg/cybergarage/upnp/Action;
    .end local v3    # "actionArgList":Lorg/cybergarage/upnp/ArgumentList;
    .end local v4    # "actionName":Ljava/lang/String;
    .end local v9    # "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 3447
    .restart local v2    # "action":Lorg/cybergarage/upnp/Action;
    .restart local v3    # "actionArgList":Lorg/cybergarage/upnp/ArgumentList;
    .restart local v4    # "actionName":Ljava/lang/String;
    .restart local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v9    # "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    .restart local v13    # "tmpStr1":[Ljava/lang/String;
    .restart local v14    # "tmpStr2":[Ljava/lang/String;
    .restart local v15    # "tmpStr3":[Ljava/lang/String;
    .restart local v16    # "tmpStr4":[Ljava/lang/String;
    :cond_7
    :try_start_2
    new-instance v5, Lorg/cybergarage/upnp/Argument;

    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {v5}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 3448
    .restart local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    const-string v17, "CurrentURIMetaData"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 3449
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {v9, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3454
    .end local v16    # "tmpStr4":[Ljava/lang/String;
    :cond_8
    new-instance v5, Lorg/cybergarage/upnp/Argument;

    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    invoke-direct {v5}, Lorg/cybergarage/upnp/Argument;-><init>()V

    .line 3455
    .restart local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    const-string v17, "CurrentURIMetaData"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 3456
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {v9, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3473
    .end local v5    # "arg":Lorg/cybergarage/upnp/Argument;
    .end local v6    # "content":Ljava/lang/String;
    .end local v13    # "tmpStr1":[Ljava/lang/String;
    .end local v14    # "tmpStr2":[Ljava/lang/String;
    .end local v15    # "tmpStr3":[Ljava/lang/String;
    :cond_9
    :try_start_3
    invoke-virtual {v3, v9}, Lorg/cybergarage/upnp/ArgumentList;->setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3482
    :try_start_4
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/Action;->performActionListener(Lorg/cybergarage/upnp/control/ActionRequest;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3483
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto/16 :goto_0

    .line 3474
    :catch_0
    move-exception v7

    .line 3476
    .local v7, "ex":Ljava/lang/Exception;
    const-string v17, "[ERROR] deviceActionControlRecieved setReqArgs Exception"

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3477
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 3478
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 1
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 3342
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3343
    new-instance v0, Lorg/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/QueryRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V

    .line 3346
    :goto_0
    return-void

    .line 3345
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V

    goto :goto_0
.end method

.method private deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 10
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    .line 3556
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 3559
    .local v0, "callback":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3566
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v8

    .line 3567
    .local v8, "timeOut":J
    invoke-static {}, Lorg/cybergarage/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v4

    .line 3569
    .local v4, "sid":Ljava/lang/String;
    new-instance v5, Lorg/cybergarage/upnp/event/Subscriber;

    invoke-direct {v5}, Lorg/cybergarage/upnp/event/Subscriber;-><init>()V

    .line 3570
    .local v5, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    invoke-virtual {v5, v0}, Lorg/cybergarage/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 3571
    invoke-virtual {v5, v8, v9}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 3572
    invoke-virtual {v5, v4}, Lorg/cybergarage/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 3573
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getGID()Ljava/lang/String;

    move-result-object v3

    .line 3574
    .local v3, "gid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3575
    .local v2, "external":Z
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3577
    const-string v7, "sub: subscribe received with external true"

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3578
    const/4 v2, 0x1

    .line 3580
    :cond_0
    invoke-virtual {p1, v5, v2}, Lorg/cybergarage/upnp/Service;->addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;Z)V

    .line 3582
    new-instance v6, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v6}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 3583
    .local v6, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v7, 0xc8

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 3584
    invoke-virtual {v6, v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 3585
    invoke-virtual {v6, v8, v9}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 3586
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3587
    invoke-virtual {v6}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 3588
    :cond_1
    invoke-virtual {p2, v6}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 3590
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3591
    invoke-virtual {v6}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 3593
    :cond_2
    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Service;->notifyAllStateVariables(Z)V

    .line 3594
    .end local v2    # "external":Z
    .end local v3    # "gid":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    .end local v6    # "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    .end local v8    # "timeOut":J
    :goto_0
    return-void

    .line 3560
    :catch_0
    move-exception v1

    .line 3562
    .local v1, "e":Ljava/lang/Exception;
    const/16 v7, 0x19c

    invoke-direct {p0, p2, v7}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 8
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    .line 3598
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 3599
    .local v2, "sid":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getGID()Ljava/lang/String;

    move-result-object v1

    .line 3600
    .local v1, "gid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3601
    .local v0, "external":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3603
    const-string v5, "sub: renew subscribe received with external true"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3604
    const/4 v0, 0x1

    .line 3606
    :cond_0
    invoke-virtual {p1, v2, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;Z)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v3

    .line 3608
    .local v3, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v3, :cond_2

    .line 3610
    const/16 v5, 0x19c

    invoke-direct {p0, p2, v5}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 3626
    :cond_1
    :goto_0
    return-void

    .line 3614
    :cond_2
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v6

    .line 3615
    .local v6, "timeOut":J
    invoke-virtual {v3, v6, v7}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 3616
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/Subscriber;->renew()V

    .line 3618
    new-instance v4, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 3619
    .local v4, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 3620
    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 3621
    invoke-virtual {v4, v6, v7}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 3622
    invoke-virtual {p2, v4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 3624
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3625
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 4
    .param p1, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    const/16 v3, 0x19c

    .line 3514
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 3515
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 3516
    .local v0, "service":Lorg/cybergarage/upnp/Service;
    if-nez v0, :cond_0

    .line 3518
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->returnBadRequest()Z

    .line 3552
    :goto_0
    return-void

    .line 3521
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3523
    invoke-direct {p0, p1, v3}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0

    .line 3528
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->isUnsubscribeRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3530
    const-string v2, "sub: receive unsub"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3531
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 3536
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3538
    const-string v2, "sub: receive sub"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3539
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 3544
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3546
    const-string v2, "sub: receive resub"

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3547
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 3551
    :cond_4
    invoke-direct {p0, p1, v3}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 6
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    .line 3630
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 3631
    .local v2, "sid":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getGID()Ljava/lang/String;

    move-result-object v1

    .line 3632
    .local v1, "gid":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3633
    .local v0, "external":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3635
    const-string v5, "sub: renew subscribe received with external true"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3636
    const/4 v0, 0x1

    .line 3638
    :cond_0
    invoke-virtual {p1, v2, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;Z)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v3

    .line 3640
    .local v3, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v3, :cond_2

    .line 3642
    const/16 v5, 0x19c

    invoke-direct {p0, p2, v5}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 3654
    :cond_1
    :goto_0
    return-void

    .line 3646
    :cond_2
    invoke-virtual {p1, v3, v0}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;Z)V

    .line 3648
    new-instance v4, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 3649
    .local v4, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 3650
    invoke-virtual {p2, v4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 3652
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3653
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 3
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/QueryRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 3488
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3489
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/QueryRequest;->print()V

    .line 3490
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v1

    .line 3491
    .local v1, "varName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3493
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    .line 3499
    :cond_1
    :goto_0
    return-void

    .line 3496
    :cond_2
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    .line 3497
    .local v0, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/cybergarage/upnp/StateVariable;->performQueryListener(Lorg/cybergarage/upnp/control/QueryRequest;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3498
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;
    .locals 1

    .prologue
    .line 3758
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 3200
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3201
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->updateURLBase(Ljava/lang/String;)V

    .line 3203
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v3, :cond_2

    .line 3205
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 3206
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 3207
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3217
    .end local v1    # "rootNode":Lorg/cybergarage/xml/Node;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 3209
    .restart local v1    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 3210
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3213
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionXmlContent(Ljava/lang/String;)V

    .line 3214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDescriptionData new description: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0

    .line 3217
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3200
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;
    .locals 2

    .prologue
    .line 1412
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1413
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .line 1414
    .local v1, "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    if-nez v1, :cond_0

    .line 1416
    new-instance v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/DeviceData;-><init>()V

    .line 1417
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 1418
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/DeviceData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 1420
    :cond_0
    return-object v1
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 3662
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2513
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2514
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 2515
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    goto :goto_0
.end method

.method private getNotifyDeviceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2527
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2521
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 2522
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    .locals 1

    .prologue
    .line 3667
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    move-result-object v0

    return-object v0
.end method

.method private getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/cybergarage/http/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPRequest;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    return-object v0
.end method

.method private getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 1

    .prologue
    .line 3748
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 10
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 3223
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v7

    .line 3224
    .local v7, "uri":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "httpGetRequestRecieved = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3225
    if-nez v7, :cond_0

    .line 3227
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 3299
    :goto_0
    return-void

    .line 3231
    :cond_0
    const-string v8, "/description.xml_urn:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3232
    const-string v8, "/description.xml_urn:"

    const-string v9, "/_urn:"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 3233
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "redirect uri = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3236
    :cond_1
    const/4 v8, 0x0

    new-array v2, v8, [B

    .line 3238
    .local v2, "fileByte":[B
    const/4 v3, 0x0

    .line 3241
    .local v3, "findObject":Ljava/lang/Object;
    :try_start_0
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3245
    .end local v3    # "findObject":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_2

    move-object v2, v3

    .line 3247
    check-cast v2, [B

    .line 3289
    :goto_2
    new-instance v4, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v4}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 3290
    .local v4, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-static {v7}, Lorg/cybergarage/util/FileUtil;->isXMLFileName(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3291
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {v4, v8}, Lorg/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 3294
    :goto_3
    const/16 v8, 0xc8

    invoke-virtual {v4, v8}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 3295
    invoke-virtual {v4, v2}, Lorg/cybergarage/http/HTTPResponse;->setContent([B)V

    .line 3296
    const-string v8, "close"

    invoke-virtual {v4, v8}, Lorg/cybergarage/http/HTTPResponse;->setConnection(Ljava/lang/String;)V

    .line 3298
    invoke-virtual {p1, v4}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 3255
    .end local v4    # "httpRes":Lorg/cybergarage/http/HTTPResponse;
    :cond_2
    invoke-direct {p0, v7}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3257
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v6

    .line 3258
    .local v6, "localAddr":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_4

    .line 3259
    :cond_3
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v6

    .line 3260
    :cond_4
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    .line 3261
    const-string v8, "httpGetRequestReceived fresh cacheMap"

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3262
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3265
    .end local v6    # "localAddr":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .local v0, "embDev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_6

    .line 3267
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v6

    .line 3268
    .restart local v6    # "localAddr":Ljava/lang/String;
    invoke-direct {v0, v6}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    .line 3269
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3272
    .end local v6    # "localAddr":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .local v1, "embService":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_7

    .line 3274
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uri:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->getSCPDData()[B

    move-result-object v2

    .line 3276
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3277
    :cond_7
    const-string v8, "icon"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3279
    iget-object v5, p0, Lorg/cybergarage/upnp/Device;->mIconPath:Ljava/lang/String;

    .line 3280
    .local v5, "iconpath":Ljava/lang/String;
    invoke-static {v5}, Lorg/cybergarage/util/FileUtil;->load(Ljava/lang/String;)[B

    move-result-object v2

    .line 3281
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3284
    .end local v5    # "iconpath":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto/16 :goto_0

    .line 3293
    .end local v0    # "embDev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "embService":Lorg/cybergarage/upnp/Service;
    .restart local v4    # "httpRes":Lorg/cybergarage/http/HTTPResponse;
    :cond_9
    const-string v8, "image/png"

    invoke-virtual {v4, v8}, Lorg/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3242
    .end local v4    # "httpRes":Lorg/cybergarage/http/HTTPResponse;
    .restart local v3    # "findObject":Ljava/lang/Object;
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method private httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 3303
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 3310
    :goto_0
    return-void

    .line 3309
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method private initializeLoadedDescription()Z
    .locals 1

    .prologue
    .line 1540
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 1541
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setLeaseTime(I)V

    .line 1542
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 1545
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->updateUDN()V

    .line 1548
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;

    .prologue
    .line 3350
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 3351
    .local v0, "actRes":Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 3352
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/control/ControlRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 3353
    return-void
.end method

.method private invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;

    .prologue
    .line 3357
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 3358
    .local v0, "actRes":Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 3359
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/control/ControlRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 3360
    return-void
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1449
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "descriptionURI":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 1451
    :cond_0
    const/4 v1, 0x0

    .line 1452
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isDeviceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 1557
    const-string v0, "device"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final notifyWait()V
    .locals 1

    .prologue
    .line 2537
    const/16 v0, 0x64

    invoke-static {v0}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 2538
    return-void
.end method

.method private setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V
    .locals 1
    .param p1, "adv"    # Lorg/cybergarage/upnp/device/Advertiser;

    .prologue
    .line 3753
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 3754
    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1429
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionFile(Ljava/io/File;)V

    .line 1430
    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1439
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionURI(Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method private setURLBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1678
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1680
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    const-string v3, "URLBase"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1681
    .local v1, "node":Lorg/cybergarage/xml/Node;
    if-eqz v1, :cond_1

    .line 1683
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1693
    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_0
    return-void

    .line 1686
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_1
    new-instance v1, Lorg/cybergarage/xml/Node;

    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    const-string v2, "URLBase"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1687
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1688
    const/4 v0, 0x1

    .line 1689
    .local v0, "index":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1690
    const/4 v0, 0x1

    .line 1691
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/cybergarage/xml/Node;->insertNode(Lorg/cybergarage/xml/Node;I)V

    goto :goto_0
.end method

.method private setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1268
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    .line 1269
    return-void
.end method

.method private soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .param p1, "soapReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 3325
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 3326
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 3327
    .local v1, "ctlService":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 3329
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 3330
    .local v0, "crlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/Device;->deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V

    .line 3334
    .end local v0    # "crlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    :goto_0
    return-void

    .line 3333
    :cond_0
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method private soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 2
    .param p1, "soapReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 3318
    new-instance v0, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v0}, Lorg/cybergarage/soap/SOAPResponse;-><init>()V

    .line 3319
    .local v0, "soapRes":Lorg/cybergarage/soap/SOAPResponse;
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/cybergarage/soap/SOAPResponse;->setStatusCode(I)V

    .line 3320
    invoke-virtual {p1, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 3321
    return-void
.end method

.method private stop(Z)Z
    .locals 7
    .param p1, "doByeBye"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1022
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 1023
    .local v0, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Advertiser;->stop()V

    .line 1026
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 1029
    :cond_0
    if-eqz p1, :cond_1

    .line 1030
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->byebye()V

    .line 1032
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 1033
    .local v1, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 1034
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 1035
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    .line 1040
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1042
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    move-result-object v2

    .line 1043
    .local v2, "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->stop()V

    .line 1044
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->close()V

    .line 1045
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->clear()V

    .line 1051
    .end local v2    # "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1053
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    if-eqz v4, :cond_3

    .line 1055
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    iget-object v5, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    invoke-virtual {v4, v5}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->removeControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V

    .line 1056
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->close()Z

    .line 1057
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->stop()Z

    .line 1058
    iput-object v6, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    .line 1062
    :cond_3
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v3

    .line 1063
    .local v3, "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->stop()V

    .line 1064
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->close()V

    .line 1065
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 1068
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1070
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 1073
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private updateUDN()V
    .locals 2

    .prologue
    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method private updateURLBase(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1697
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1698
    .local v0, "urlBase":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setURLBase(Ljava/lang/String;)V

    .line 1699
    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V
    .locals 1
    .param p1, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;
    .param p2, "code"    # I

    .prologue
    .line 3507
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 3508
    .local v0, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 3509
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 3510
    return-void
.end method


# virtual methods
.method public CheckDeviceDes()V
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 828
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    const-string v0, "IQIYI_TV"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    .line 832
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    const-string v0, "iqiyi"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setManufacture(Ljava/lang/String;)V

    .line 836
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getManufactureURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    const-string v0, "http://www.iqiyi.com"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setManufactureURL(Ljava/lang/String;)V

    .line 840
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    const-string v0, "IQIYI AV Media Renderer Device"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setModelName(Ljava/lang/String;)V

    .line 844
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 846
    const-string v0, "1234"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setModelNumber(Ljava/lang/String;)V

    .line 848
    :cond_5
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getModelURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 850
    const-string v0, "http://www.iqiyi.com"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setModelURL(Ljava/lang/String;)V

    .line 852
    :cond_6
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 854
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setPackageName(Ljava/lang/String;)V

    .line 856
    :cond_7
    return-void
.end method

.method public addDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 8
    .param p1, "d"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1381
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1382
    .local v1, "deviceNode":Lorg/cybergarage/xml/Node;
    const-string v6, "deviceList"

    invoke-virtual {v1, v6}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1383
    .local v0, "deviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "deviceListNode":Lorg/cybergarage/xml/Node;
    const-string v6, "deviceList"

    invoke-direct {v0, v6}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v0    # "deviceListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1388
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1389
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 1390
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1392
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v6, "root"

    invoke-direct {v4, v6}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v4, "root":Lorg/cybergarage/xml/Node;
    const-string v6, ""

    const-string v7, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v4, v6, v7}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    new-instance v5, Lorg/cybergarage/xml/Node;

    const-string v6, "specVersion"

    invoke-direct {v5, v6}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v5, "spec":Lorg/cybergarage/xml/Node;
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v6, "major"

    invoke-direct {v2, v6}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v2, "maj":Lorg/cybergarage/xml/Node;
    const-string v6, "1"

    invoke-virtual {v2, v6}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1397
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v6, "minor"

    invoke-direct {v3, v6}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v3, "min":Lorg/cybergarage/xml/Node;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1400
    invoke-virtual {v5, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1401
    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1402
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 1404
    .end local v2    # "maj":Lorg/cybergarage/xml/Node;
    .end local v3    # "min":Lorg/cybergarage/xml/Node;
    .end local v4    # "root":Lorg/cybergarage/xml/Node;
    .end local v5    # "spec":Lorg/cybergarage/xml/Node;
    :cond_1
    return-void
.end method

.method public addService(Lorg/cybergarage/upnp/Service;)V
    .locals 3
    .param p1, "s"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1357
    .local v0, "serviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 1359
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "serviceListNode":Lorg/cybergarage/xml/Node;
    const-string v1, "serviceList"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1360
    .restart local v0    # "serviceListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1362
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 1363
    return-void
.end method

.method public declared-synchronized announce()V
    .locals 8

    .prologue
    .line 2617
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 2618
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 2621
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 2623
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 2624
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-lt v2, v7, :cond_1

    .line 2637
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v7, :cond_3

    .line 2650
    monitor-exit p0

    return-void

    .line 2626
    .end local v3    # "j":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 2624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2630
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 2631
    .local v5, "nHostAddrs":I
    new-array v0, v5, [Ljava/lang/String;

    .line 2632
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_2
    if-ge v4, v5, :cond_0

    .line 2634
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 2632
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2639
    .end local v4    # "n":I
    .end local v5    # "nHostAddrs":I
    .restart local v3    # "j":I
    :cond_3
    aget-object v7, v0, v3

    if-eqz v7, :cond_4

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 2637
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2641
    :cond_5
    aget-object v7, v0, v3

    invoke-static {v7}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2643
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 2644
    .local v6, "ssdpCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v6, :cond_4

    .line 2646
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2644
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2617
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v1    # "binds":[Ljava/net/InetAddress;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v6    # "ssdpCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public announce(Ljava/lang/String;)V
    .locals 8
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 2545
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 2546
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "devLocation":Ljava/lang/String;
    new-instance v4, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v4, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 2549
    .local v4, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->openSendBroadcastSocket()Z

    .line 2551
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 2552
    .local v3, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 2554
    const-string v6, "ssdp:alive"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 2555
    const/16 v6, 0x1e

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 2557
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setMYNAME(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setFileMd5(Ljava/lang/String;)V

    .line 2560
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setConnect(Z)V

    .line 2561
    iget v6, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setIQIYIDEVICE(I)V

    .line 2562
    iget v6, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setIQIYIVERSION(I)V

    .line 2563
    iget v6, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setDEVICEVERSION(I)V

    .line 2565
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2567
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setIQIYIPORT(I)V

    .line 2568
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUdpQiyiHttpPort()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setIQIYIUDPPORT(I)V

    .line 2572
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2574
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v1

    .line 2575
    .local v1, "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v2

    .line 2576
    .local v2, "devUSN":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 2578
    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v6, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;I)Z

    .line 2582
    .end local v1    # "devNT":Ljava/lang/String;
    .end local v2    # "devUSN":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveBroadcastSocket()Z

    .line 2583
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveMulticastSocket()Z

    .line 2586
    iget-object v6, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2588
    iget-object v6, p0, Lorg/cybergarage/upnp/Device;->dmcAddrList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2613
    :cond_2
    return-void

    .line 2588
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .line 2590
    .local v5, "temp":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public beforeHandConnectHost()V
    .locals 11

    .prologue
    .line 477
    const-string v8, "online beforeHandConnectHost() "

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 481
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    if-eqz v8, :cond_0

    .line 483
    iget-object v8, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    invoke-virtual {v8}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 484
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    .line 486
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v3

    .line 487
    .local v3, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    if-eqz v3, :cond_1

    .line 489
    const-string v8, "online beforeHandConnectHost() p1 "

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v6

    .line 491
    .local v6, "port":I
    if-nez v6, :cond_2

    .line 510
    .end local v6    # "port":I
    :cond_1
    :goto_0
    return-void

    .line 493
    .restart local v6    # "port":I
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "host":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "location":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 499
    .local v5, "locationUrl":Ljava/net/URL;
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/Device;->getSendMessageAction(Z)Lorg/cybergarage/upnp/Action;

    move-result-object v7

    .line 500
    .local v7, "sendMessageAction":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/Action;->getActionRequest()Lorg/cybergarage/upnp/control/ActionRequest;

    move-result-object v0

    .line 501
    .local v0, "ctrlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v9, v10}, Lorg/cybergarage/upnp/control/ActionRequest;->connectHost(Ljava/lang/String;IZ)V

    .line 503
    const-string v8, "online beforeHandConnectHost() p2 "

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v3, v2, v6}, Lorg/cybergarage/http/HTTPRequest;->connectHostQuickly(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v0    # "ctrlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "locationUrl":Ljava/net/URL;
    .end local v7    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized byebye()V
    .locals 8

    .prologue
    .line 2695
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 2697
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_2

    .line 2699
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 2700
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-lt v2, v7, :cond_1

    .line 2714
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v7, :cond_3

    .line 2722
    monitor-exit p0

    return-void

    .line 2702
    .end local v3    # "j":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_1
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 2700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2706
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 2707
    .local v5, "nHostAddrs":I
    new-array v0, v5, [Ljava/lang/String;

    .line 2708
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_2
    if-ge v4, v5, :cond_0

    .line 2710
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 2708
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2716
    .end local v4    # "n":I
    .end local v5    # "nHostAddrs":I
    .restart local v3    # "j":I
    :cond_3
    aget-object v7, v0, v3

    if-eqz v7, :cond_4

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_5

    .line 2714
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2718
    :cond_5
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 2719
    .local v6, "ssdpCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v6, :cond_4

    .line 2720
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2719
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2695
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v1    # "binds":[Ljava/net/InetAddress;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v6    # "ssdpCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 6
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 2654
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "byebye:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 2655
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 2656
    .local v3, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->openSendBroadcastSocket()Z

    .line 2658
    new-instance v2, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 2659
    .local v2, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v4, "ssdp:byebye"

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2663
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v1

    .line 2665
    .local v1, "devUSN":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 2666
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 2667
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;I)Z

    .line 2671
    .end local v0    # "devNT":Ljava/lang/String;
    .end local v1    # "devUSN":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveBroadcastSocket()Z

    .line 2672
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->closeReceiveMulticastSocket()Z

    .line 2690
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1012
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    .line 1013
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionXmlContent(Ljava/lang/String;)V

    .line 1014
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionXmlMd5(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public declared-synchronized clearDLNAAction()V
    .locals 1

    .prologue
    .line 334
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSendMessageAction()V
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getActionRequest()Lorg/cybergarage/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/control/ActionRequest;->closeHostSocket()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklyHttpRequest:Lorg/cybergarage/http/HTTPRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeConnectHost()V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v0

    .line 564
    .local v0, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 568
    :cond_0
    return-void
.end method

.method public deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 2903
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->addRemoteDmcAddr(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 2904
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 2905
    return-void
.end method

.method public deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 19
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 2826
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v16

    .line 2828
    .local v16, "ssdpST":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2879
    :cond_0
    return-void

    .line 2831
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v10

    .line 2833
    .local v10, "isRootDevice":Z
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    .line 2834
    .local v9, "devUSN":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 2835
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "::upnp:rootdevice"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2837
    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2839
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v6

    .line 2840
    .local v6, "devNT":Ljava/lang/String;
    if-eqz v10, :cond_4

    const/4 v12, 0x3

    .line 2841
    .local v12, "repeatCnt":I
    :goto_0
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    if-lt v11, v12, :cond_5

    .line 2864
    .end local v6    # "devNT":Ljava/lang/String;
    .end local v11    # "n":I
    .end local v12    # "repeatCnt":I
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v15

    .line 2865
    .local v15, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v15}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v14

    .line 2866
    .local v14, "serviceCnt":I
    const/4 v11, 0x0

    .restart local v11    # "n":I
    :goto_3
    if-lt v11, v14, :cond_9

    .line 2872
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v5

    .line 2873
    .local v5, "childDeviceList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v4

    .line 2874
    .local v4, "childDeviceCnt":I
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_0

    .line 2876
    invoke-virtual {v5, v11}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 2877
    .local v3, "childDevice":Lorg/cybergarage/upnp/Device;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 2874
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2840
    .end local v3    # "childDevice":Lorg/cybergarage/upnp/Device;
    .end local v4    # "childDeviceCnt":I
    .end local v5    # "childDeviceList":Lorg/cybergarage/upnp/DeviceList;
    .end local v11    # "n":I
    .end local v14    # "serviceCnt":I
    .end local v15    # "serviceList":Lorg/cybergarage/upnp/ServiceList;
    .restart local v6    # "devNT":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x2

    goto :goto_0

    .line 2842
    .restart local v11    # "n":I
    .restart local v12    # "repeatCnt":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2841
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2843
    .end local v6    # "devNT":Ljava/lang/String;
    .end local v11    # "n":I
    .end local v12    # "repeatCnt":I
    :cond_6
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2845
    if-eqz v10, :cond_3

    .line 2846
    const-string v17, "upnp:rootdevice"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 2847
    :cond_7
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isUUIDDevice(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2849
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v8

    .line 2850
    .local v8, "devUDN":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 2852
    .end local v8    # "devUDN":Ljava/lang/String;
    :cond_8
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isURNDevice(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2854
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 2855
    .local v7, "devType":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2858
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2859
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2860
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponseSimple(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 2868
    .end local v7    # "devType":Ljava/lang/String;
    .restart local v11    # "n":I
    .restart local v14    # "serviceCnt":I
    .restart local v15    # "serviceList":Lorg/cybergarage/upnp/ServiceList;
    :cond_9
    invoke-virtual {v15, v11}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v13

    .line 2869
    .local v13, "service":Lorg/cybergarage/upnp/Service;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/Service;->serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z

    .line 2866
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, "baseURLStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1194
    .local v2, "locationURLStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 1195
    .local v3, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v3, :cond_0

    .line 1197
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 1200
    const-string v4, "/"

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1201
    .local v1, "find":I
    if-lez v1, :cond_0

    .line 1203
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1207
    .end local v1    # "find":I
    :cond_0
    invoke-virtual {p0, p1, v0, v2}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "baseURLStr"    # Ljava/lang/String;
    .param p3, "locationURLStr"    # Ljava/lang/String;

    .prologue
    .line 1108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1109
    const-string v4, ""

    .line 1148
    :cond_0
    :goto_0
    return-object v4

    .line 1113
    :cond_1
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1115
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1120
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1122
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1124
    invoke-direct {p0, p3, p1}, Lorg/cybergarage/upnp/Device;->contactURLString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1129
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 1130
    .local v5, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v5, :cond_3

    .line 1132
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "locationHost":Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 1135
    .local v3, "locationPort":I
    invoke-static {v2, v3}, Lorg/cybergarage/http/HTTP;->getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1139
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "locationHost":Ljava/lang/String;
    .end local v3    # "locationPort":I
    .end local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1141
    invoke-direct {p0, p2, p1}, Lorg/cybergarage/upnp/Device;->contactURLString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1142
    .restart local v4    # "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v4    # "result":Ljava/lang/String;
    :cond_4
    move-object v4, p1

    .line 1148
    goto :goto_0
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2382
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v11

    .line 2383
    .local v11, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v10

    .line 2384
    .local v10, "serviceCnt":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_0
    if-lt v8, v10, :cond_1

    .line 2400
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v6

    .line 2401
    .local v6, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v5

    .line 2402
    .local v5, "devCnt":I
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v5, :cond_5

    .line 2410
    const/4 v0, 0x0

    .end local v5    # "devCnt":I
    .end local v6    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    :goto_2
    return-object v0

    .line 2386
    :cond_1
    invoke-virtual {v11, v8}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v9

    .line 2387
    .local v9, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v9}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 2388
    .local v2, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v1

    .line 2389
    .local v1, "actionCnt":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-lt v7, v1, :cond_2

    .line 2384
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2391
    :cond_2
    invoke-virtual {v2, v7}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 2392
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2393
    .local v3, "actionName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 2389
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2395
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    .line 2404
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    .end local v1    # "actionCnt":I
    .end local v2    # "actionList":Lorg/cybergarage/upnp/ActionList;
    .end local v3    # "actionName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v5    # "devCnt":I
    .restart local v6    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_5
    invoke-virtual {v6, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 2405
    .local v4, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Device;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 2406
    .restart local v0    # "action":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_0

    .line 2402
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public getClientList()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2489
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    move-result-object v0

    .line 2490
    .local v0, "httpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->size()I

    move-result v2

    .line 2491
    .local v2, "nServers":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2499
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 2493
    :cond_0
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->getHTTPServer(I)Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;

    move-result-object v3

    .line 2494
    .local v3, "server":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;
    if-eqz v3, :cond_1

    .line 2496
    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServer;->getClientList()Ljava/util/Vector;

    move-result-object v4

    goto :goto_1

    .line 2491
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getControlPointConnectRendererListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    return-object v0
.end method

.method public getDLNADOC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1978
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1979
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1981
    const-string v1, "dlna:X_DLNADOC"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1983
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 1434
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1457
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 1458
    .local v0, "descriptionFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1459
    const-string v1, ""

    .line 1460
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getDescriptionXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlContent()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PrivateServer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 634
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 635
    .local v2, "rootNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 636
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local v2    # "rootNode":Lorg/cybergarage/xml/Node;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 640
    .restart local v2    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_1
    :try_start_1
    const-string v3, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;)V

    .line 641
    const-string v3, "dlna"

    const-string v4, "urn:schemas-dlna-org:device-1-0"

    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 644
    .local v1, "desc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->setDescriptionXmlContent(Ljava/lang/String;)V

    .line 650
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlContent()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 630
    .end local v0    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getDescriptionXmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionXmlMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2160
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 2161
    .local v3, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 2162
    .local v2, "devCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 2171
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 2164
    :cond_1
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 2165
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2167
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2168
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 2169
    goto :goto_1

    .line 2162
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2176
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 2177
    .local v3, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 2178
    .local v2, "devCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 2187
    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    .line 2180
    :cond_1
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 2181
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2183
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2184
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 2185
    goto :goto_1

    .line 2178
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getDeviceConnectStatusListener()Lorg/cybergarage/upnp/DeviceConnectStatusListener;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    return-object v0
.end method

.method public getDeviceIsSupperKeepAlive()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isSupperConnectKeepAlive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    .line 280
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->isSupperKeepAlive:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 8

    .prologue
    .line 2123
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 2125
    .local v1, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 2126
    .local v3, "deviceNode":Lorg/cybergarage/xml/Node;
    if-nez v3, :cond_1

    .line 2142
    :cond_0
    return-object v1

    .line 2129
    :cond_1
    const-string v7, "deviceList"

    invoke-virtual {v3, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 2130
    .local v2, "devListNode":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_0

    .line 2133
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v5

    .line 2134
    .local v5, "nNode":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 2136
    invoke-virtual {v2, v4}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 2137
    .local v6, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v6}, Lorg/cybergarage/upnp/Device;->isDeviceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2134
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2139
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, v6}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 2140
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDeviceName()I
    .locals 1

    .prologue
    .line 2960
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getQiyiDeviceType()I

    move-result v0

    return v0
.end method

.method public getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1731
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1732
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1734
    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1736
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDeviceVersion()I
    .locals 1

    .prologue
    .line 2974
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getQiyiVersion()I

    move-result v0

    return v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 1653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1778
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1779
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1781
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1783
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getGetPositionInfoAction()Lorg/cybergarage/upnp/Action;
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    if-nez v1, :cond_0

    .line 355
    const-string v1, "urn:upnp-org:serviceId:AVTransport"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 356
    .local v0, "AVTransport":Lorg/cybergarage/upnp/Service;
    if-eqz v0, :cond_0

    .line 358
    const-string v1, "GetPositionInfo"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    .line 361
    .end local v0    # "AVTransport":Lorg/cybergarage/upnp/Service;
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->GetPositionInfoAction:Lorg/cybergarage/upnp/Action;

    return-object v1
.end method

.method public declared-synchronized getGetTransportInfoAction()Lorg/cybergarage/upnp/Action;
    .locals 2

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

    if-nez v1, :cond_0

    .line 342
    const-string v1, "urn:upnp-org:serviceId:AVTransport"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 343
    .local v0, "AVTransport":Lorg/cybergarage/upnp/Service;
    if-eqz v0, :cond_0

    .line 345
    const-string v1, "GetTransportInfo"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;

    .line 348
    .end local v0    # "AVTransport":Lorg/cybergarage/upnp/Service;
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->GetTransportInfoAction:Lorg/cybergarage/upnp/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 3110
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 2918
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lorg/cybergarage/upnp/Icon;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 2458
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v0

    .line 2459
    .local v0, "iconList":Lorg/cybergarage/upnp/IconList;
    if-gez p1, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    .line 2460
    const/4 v1, 0x0

    .line 2461
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconList()Lorg/cybergarage/upnp/IconList;
    .locals 8

    .prologue
    .line 2440
    new-instance v1, Lorg/cybergarage/upnp/IconList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/IconList;-><init>()V

    .line 2441
    .local v1, "iconList":Lorg/cybergarage/upnp/IconList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "iconList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 2442
    .local v2, "iconListNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 2453
    :cond_0
    return-object v1

    .line 2444
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 2445
    .local v4, "nNode":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2447
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 2448
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Icon;->isIconNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2445
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2450
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Icon;

    invoke-direct {v0, v5}, Lorg/cybergarage/upnp/Icon;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 2451
    .local v0, "icon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1286
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v3

    .line 1287
    .local v3, "iconList":Lorg/cybergarage/upnp/IconList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1288
    const/4 v4, 0x0

    .line 1302
    :goto_0
    return-object v4

    .line 1289
    :cond_0
    invoke-virtual {v3, v8}, Lorg/cybergarage/upnp/IconList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Icon;

    .line 1290
    .local v1, "icon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1292
    .local v4, "iconUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceName()I

    move-result v6

    sget v7, Lcom/iqiyi/android/dlna/sdk/DeviceName;->IQIYI_DONGLE:I

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceName()I

    move-result v6

    sget v7, Lcom/iqiyi/android/dlna/sdk/DeviceName;->MEDIA_RENDERER:I

    if-eq v6, v7, :cond_1

    .line 1294
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getIconUrl: For box that has absolute path in url value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1299
    .local v5, "location":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "/description.xml"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "absPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1301
    .local v2, "iconAbsUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getIconUrl: For dongle: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    move-object v4, v2

    .line 1302
    goto :goto_0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3767
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 3768
    .local v0, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_0

    .line 3769
    const-string v1, ""

    .line 3770
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3882
    const/4 v0, 0x0

    .line 3885
    .local v0, "addr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3891
    :goto_0
    return-object v0

    .line 3887
    :catch_0
    move-exception v1

    .line 3889
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsSuperQuicklySend()Z
    .locals 1

    .prologue
    .line 3056
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v0

    if-nez v0, :cond_0

    .line 3057
    const/4 v0, 0x0

    .line 3059
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLeaseTime()I
    .locals 2

    .prologue
    .line 1633
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 1634
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 1635
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLeaseTime()I

    move-result v1

    .line 1636
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v1

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1610
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 1611
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 1613
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 2508
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1831
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1832
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1834
    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1836
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getManufactureURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1854
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1855
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1857
    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1859
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1789
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1790
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1792
    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1794
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1877
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1878
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1880
    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1882
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1900
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1901
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1903
    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1923
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1924
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1926
    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1928
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1946
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1947
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1949
    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1951
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3724
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3743
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2109
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2110
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2112
    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2114
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getParentDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 1339
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    const/4 v2, 0x0

    .line 1345
    :goto_0
    return-object v2

    .line 1341
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1342
    .local v1, "devNode":Lorg/cybergarage/xml/Node;
    const/4 v0, 0x0

    .line 1344
    .local v0, "aux":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1345
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2087
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2088
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2090
    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2092
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPrivateServer()Lorg/cybergarage/upnp/Service;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    if-nez v0, :cond_0

    .line 577
    const-string v0, "urn:upnp-org:serviceId:PrivateServer"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 579
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->privateServer:Lorg/cybergarage/upnp/Service;

    return-object v0
.end method

.method public getQiyiDeviceVersion()I
    .locals 1

    .prologue
    .line 2986
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getQiyiDeviceVersion()I

    move-result v0

    return v0
.end method

.method public getQiyiHTTPPort()I
    .locals 1

    .prologue
    .line 3082
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getQiyihttpPort()I

    move-result v0

    return v0
.end method

.method public getQiyiHTTPPortFromSSDP()I
    .locals 3

    .prologue
    .line 3011
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 3012
    .local v0, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 3014
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiHttpPort()I

    move-result v1

    .line 3015
    .local v1, "tmpPort":I
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->setQiyiHTTPPort(I)V

    .line 3017
    .end local v1    # "tmpPort":I
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v2

    return v2
.end method

.method public getQiyiHostFromSSDP()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3067
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 3068
    .local v2, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v2, :cond_0

    .line 3070
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 3071
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3074
    .end local v0    # "location":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getQiyiUDPHTTPPortFromSSDP()I
    .locals 3

    .prologue
    .line 3042
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 3043
    .local v0, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getQiyiUDPHttpPort()I

    move-result v1

    .line 3046
    .local v1, "tmpPort":I
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->setUdpQiyiHTTPPort(I)V

    .line 3048
    .end local v1    # "tmpPort":I
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUdpQiyiHttpPort()I

    move-result v2

    return v2
.end method

.method public getQuicklySendMessageListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1316
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1317
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-object v2

    .line 1319
    :cond_1
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1320
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1322
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 677
    :goto_0
    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 676
    const/4 v0, 0x0

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPAnnounceCount()I
    .locals 1

    .prologue
    .line 1255
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isWirelessMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    const/4 v0, 0x5

    .line 1257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 3705
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3120
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3130
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 3131
    return-void
.end method

.method public getSSDPIPv6MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3140
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv6MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3150
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 3151
    return-void
.end method

.method public getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 1

    .prologue
    .line 1594
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    const/4 v0, 0x0

    .line 1596
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 3686
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendMessageAction(Z)Lorg/cybergarage/upnp/Action;
    .locals 3
    .param p1, "iskeepalive"    # Z

    .prologue
    .line 303
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 305
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    if-nez v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 308
    .local v1, "privateService":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 310
    const-string v2, "SendMessage"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;

    .line 313
    .end local v1    # "privateService":Lorg/cybergarage/upnp/Service;
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->sendMessageAction:Lorg/cybergarage/upnp/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 318
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 319
    .restart local v1    # "privateService":Lorg/cybergarage/upnp/Service;
    const/4 v0, 0x0

    .line 320
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    if-eqz v1, :cond_1

    .line 322
    const-string v2, "SendMessage"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 303
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    .end local v1    # "privateService":Lorg/cybergarage/upnp/Service;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2001
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2002
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2004
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2007
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2214
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2215
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2216
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 2223
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2224
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2225
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    .line 2233
    const/4 v4, 0x0

    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    return-object v4

    .line 2218
    :cond_1
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2219
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2227
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2228
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2229
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 2225
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 8
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 2262
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2263
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2264
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 2271
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2272
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2273
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    .line 2281
    const/4 v4, 0x0

    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    return-object v4

    .line 2266
    :cond_1
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2267
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2275
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2276
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2277
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 2273
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 8
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 2286
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2287
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2288
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 2295
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2296
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2297
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    .line 2305
    const/4 v4, 0x0

    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    return-object v4

    .line 2290
    :cond_1
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2291
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2299
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2300
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2301
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 2297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 8
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 2238
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2239
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2240
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 2247
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2248
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2249
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    .line 2257
    const/4 v4, 0x0

    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    return-object v4

    .line 2242
    :cond_1
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2243
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2251
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2252
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2253
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 2249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getServiceList()Lorg/cybergarage/upnp/ServiceList;
    .locals 8

    .prologue
    .line 2196
    new-instance v4, Lorg/cybergarage/upnp/ServiceList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/ServiceList;-><init>()V

    .line 2197
    .local v4, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "serviceList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 2198
    .local v5, "serviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v5, :cond_1

    .line 2209
    :cond_0
    return-object v4

    .line 2200
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v1

    .line 2201
    .local v1, "nNode":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2203
    invoke-virtual {v5, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 2204
    .local v2, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v2}, Lorg/cybergarage/upnp/Service;->isServiceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2201
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2206
    :cond_2
    new-instance v3, Lorg/cybergarage/upnp/Service;

    invoke-direct {v3, v2}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 2207
    .local v3, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSmallestIcon()Lorg/cybergarage/upnp/Icon;
    .locals 7

    .prologue
    .line 2466
    const/4 v4, 0x0

    .line 2467
    .local v4, "smallestIcon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v2

    .line 2468
    .local v2, "iconList":Lorg/cybergarage/upnp/IconList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    .line 2469
    .local v1, "iconCount":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 2481
    return-object v4

    .line 2471
    :cond_0
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v0

    .line 2472
    .local v0, "icon":Lorg/cybergarage/upnp/Icon;
    if-nez v4, :cond_2

    .line 2474
    move-object v4, v0

    .line 2469
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2477
    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2478
    move-object v4, v0

    goto :goto_1
.end method

.method public getSpecVersionNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2373
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 10
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 2339
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move-object v7, v8

    .line 2368
    :cond_0
    :goto_0
    return-object v7

    .line 2342
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2343
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2344
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-lt v3, v5, :cond_2

    .line 2358
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2359
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2360
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v1, :cond_5

    move-object v7, v8

    .line 2368
    goto :goto_0

    .line 2346
    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2348
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    if-eqz p1, :cond_4

    .line 2350
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2344
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2353
    :cond_4
    invoke-virtual {v4, p2}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 2354
    .local v7, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-eqz v7, :cond_3

    goto :goto_0

    .line 2362
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .end local v7    # "stateVar":Lorg/cybergarage/upnp/StateVariable;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_5
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2363
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 2364
    .restart local v7    # "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-nez v7, :cond_0

    .line 2360
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 2310
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 2311
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 2312
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 2320
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2321
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2322
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    .line 2330
    const/4 v4, 0x0

    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_0
    return-object v4

    .line 2314
    :cond_1
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2315
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 2316
    .local v7, "sid":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2324
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .end local v7    # "sid":Ljava/lang/String;
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    :cond_2
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2325
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 2326
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 2322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getTimeStamp()J
    .locals 4

    .prologue
    .line 1645
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 1646
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getTimeStamp()J

    move-result-wide v2

    .line 1648
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2028
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2029
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2031
    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2061
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2062
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2064
    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2066
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1703
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1710
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1273
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 1274
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    .line 1280
    :cond_0
    :goto_0
    return-object v0

    .line 1275
    :cond_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    const-string v3, "UDN"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "udn":Ljava/lang/String;
    const-string v2, "uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1278
    const-string v2, "uuid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "uuid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    move-object v0, v1

    .line 1280
    goto :goto_0
.end method

.method public getUdpQiyiHttpPort()I
    .locals 1

    .prologue
    .line 3095
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getUdpqiyihttpPort()I

    move-result v0

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3848
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasUDN()Z
    .locals 1

    .prologue
    .line 2039
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 6
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    const/4 v5, 0x0

    .line 3156
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isQuicklyRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3158
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQuicklySendMessageListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3163
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getContent()[B

    move-result-object v0

    .line 3164
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 3168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SendMessageReceived done "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getContent()[B

    move-result-object v4

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3169
    iget-object v3, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getContent()[B

    move-result-object v4

    aget-byte v4, v4, v5

    invoke-interface {v3, v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;->onQuicklySendMessageRecieved(B)V

    .line 3193
    .end local v0    # "bArray":[B
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 3166
    .restart local v0    # "bArray":[B
    .restart local v1    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content byte ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 3164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3174
    .end local v0    # "bArray":[B
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isGetRequest()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3176
    :cond_3
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_1

    .line 3179
    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isPostRequest()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3181
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_1

    .line 3185
    :cond_5
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3187
    :cond_6
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v2, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 3188
    .local v2, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_1

    .line 3192
    .end local v2    # "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    :cond_7
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_1
.end method

.method public initDevice(II)V
    .locals 5
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 764
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v3, "root"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 765
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;)V

    .line 766
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "dlna"

    const-string v4, "urn:schemas-dlna-org:device-1-0"

    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v3, "specVersion"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    .line 770
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v2, "major"

    invoke-direct {v0, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "majorNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Node;->setValue(I)V

    .line 772
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v2, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 774
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v2, "minor"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 775
    .local v1, "minorNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, p2}, Lorg/cybergarage/xml/Node;->setValue(I)V

    .line 776
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 778
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    iget-object v3, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 780
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 781
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    iget-object v3, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 804
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->setWirelessMode(Z)V

    .line 806
    const-string v2, "/description.xml"

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public isDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return v0

    .line 2149
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2150
    goto :goto_0

    .line 2151
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 2152
    goto :goto_0

    .line 2153
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2154
    goto :goto_0
.end method

.method public isDeviceType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1742
    if-nez p1, :cond_0

    .line 1743
    const/4 v0, 0x0

    .line 1744
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 1667
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1231
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1232
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 1234
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuicklySend()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->quicklySend:Z

    return v0
.end method

.method public isRootDevice()Z
    .locals 4

    .prologue
    .line 1566
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1567
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    if-eqz v1, :cond_0

    .line 1569
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1570
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1572
    const-string v3, "UDN"

    invoke-virtual {v0, v3}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1573
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1575
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1580
    .end local v0    # "deviceNode":Lorg/cybergarage/xml/Node;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelessMode()Z
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 1518
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 1519
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 1520
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 1521
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1522
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 1523
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 1524
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1530
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1531
    const/4 v2, 0x0

    .line 1535
    :goto_0
    return v2

    .line 1533
    :cond_2
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 1535
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 1470
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 1471
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 1472
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 1473
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1474
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 1475
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 1476
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1482
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1483
    const/4 v2, 0x0

    .line 1487
    :goto_0
    return v2

    .line 1485
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 1487
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/lang/String;)Z
    .locals 4
    .param p1, "descString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 1494
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 1495
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 1496
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 1497
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1498
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 1499
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 1500
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1506
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1507
    const/4 v2, 0x0

    .line 1511
    :goto_0
    return v2

    .line 1509
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 1511
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 1095
    return-void
.end method

.method public postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .param p2, "st"    # Ljava/lang/String;
    .param p3, "usn"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2732
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 2733
    .local v1, "localAddr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    .line 2734
    .local v2, "remoteAddr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v3

    .line 2735
    .local v3, "remotePort":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 2736
    .local v4, "rootDev":Lorg/cybergarage/upnp/Device;
    if-nez v4, :cond_0

    .line 2738
    const-string v10, "Oops, rootDev null"

    invoke-static {v10}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 2779
    :goto_0
    return v9

    .line 2741
    :cond_0
    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2742
    .local v5, "rootDevLocation":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v9, v10

    .line 2743
    goto :goto_0

    .line 2745
    :cond_1
    new-instance v7, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    invoke-direct {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 2746
    .local v7, "ssdpRes":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v11

    invoke-virtual {v7, v11}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 2747
    sget-object v11, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setDate(Ljava/util/Calendar;)V

    .line 2748
    invoke-virtual {v7, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setST(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v7, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setUSN(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {v7, v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLocation(Ljava/lang/String;)V

    .line 2751
    const/16 v11, 0x708

    invoke-virtual {v7, v11}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 2753
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setMYNAME(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXmlMd5()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setFileMd5(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setConnect(Z)V

    .line 2756
    iget v9, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setIQIYIDEVICE(I)V

    .line 2757
    iget v9, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setIQIYIVERSION(I)V

    .line 2758
    iget v9, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setDEVICEVERSION(I)V

    .line 2759
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2761
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setIQIYIPORT(I)V

    .line 2762
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUdpQiyiHttpPort()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setIQIYIUDPPORT(I)V

    .line 2769
    :cond_2
    new-instance v8, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 2770
    .local v8, "ssdpResSock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2771
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->print()V

    .line 2772
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 2773
    .local v6, "ssdpCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v6, :cond_4

    move v9, v10

    .line 2779
    goto :goto_0

    .line 2775
    :cond_4
    invoke-virtual {v8, v2, v3, v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z

    .line 2773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public postSearchResponseSimple(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .param p2, "st"    # Ljava/lang/String;
    .param p3, "usn"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 2784
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 2785
    .local v1, "localAddr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    .line 2786
    .local v2, "remoteAddr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v3

    .line 2787
    .local v3, "remotePort":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 2788
    .local v4, "rootDev":Lorg/cybergarage/upnp/Device;
    if-nez v4, :cond_1

    .line 2790
    const-string v9, "Oops, rootDev null"

    invoke-static {v9}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 2791
    const/4 v9, 0x0

    .line 2821
    :cond_0
    return v9

    .line 2793
    :cond_1
    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2794
    .local v5, "rootDevLocation":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2797
    const/4 v7, 0x0

    .line 2799
    .local v7, "ssdpRes":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    new-instance v7, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    .end local v7    # "ssdpRes":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    invoke-direct {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 2800
    .restart local v7    # "ssdpRes":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    const/16 v10, 0x708

    invoke-virtual {v7, v10}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 2802
    sget-object v10, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setDate(Ljava/util/Calendar;)V

    .line 2803
    invoke-virtual {v7, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setST(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {v7, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setUSN(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {v7, v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLocation(Ljava/lang/String;)V

    .line 2811
    new-instance v8, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 2812
    .local v8, "ssdpResSock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2813
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->print()V

    .line 2814
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 2815
    .local v6, "ssdpCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 2817
    invoke-virtual {v8, v2, v3, v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z

    .line 2815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public quicklySendMessage(B)Z
    .locals 5
    .param p1, "data"    # B

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 460
    .local v1, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v2

    .line 463
    .local v2, "port":I
    if-nez v2, :cond_1

    .line 469
    .end local v2    # "port":I
    :cond_0
    :goto_0
    return v3

    .line 465
    .restart local v2    # "port":I
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "host":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++++++quicklySendMessage host "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v0, v2, p1}, Lorg/cybergarage/http/HTTPRequest;->quicklyPost(Ljava/lang/String;IB)Z

    move-result v3

    goto :goto_0
.end method

.method public quicklySendTCPMessage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 386
    .local v1, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v2

    .line 389
    .local v2, "port":I
    iget v4, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    if-eq v2, v4, :cond_0

    .line 392
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 393
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 395
    const-string v4, "port change!!!"

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 397
    :cond_0
    if-nez v2, :cond_2

    .line 405
    .end local v2    # "port":I
    :cond_1
    :goto_0
    return v3

    .line 399
    .restart local v2    # "port":I
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "host":Ljava/lang/String;
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiTCPPort:I

    .line 403
    invoke-virtual {v1, v0, v2, p1}, Lorg/cybergarage/http/HTTPRequest;->quicklyTCPPost(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public quicklySendUDPMessage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 429
    .local v1, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    if-eqz v4, :cond_0

    .line 431
    iget-object v4, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    invoke-virtual {v1, v4}, Lorg/cybergarage/http/HTTPRequest;->setHostUnknownTimeListener(Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;)V

    .line 434
    :cond_0
    if-eqz v1, :cond_2

    .line 436
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiUDPHTTPPortFromSSDP()I

    move-result v2

    .line 437
    .local v2, "port":I
    iget v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    if-eq v4, v2, :cond_1

    .line 440
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 441
    const/4 v1, 0x0

    .line 442
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 443
    const-string v4, "port change!!!"

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 445
    :cond_1
    if-nez v2, :cond_3

    .line 451
    .end local v2    # "port":I
    :cond_2
    :goto_0
    return v3

    .line 447
    .restart local v2    # "port":I
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "host":Ljava/lang/String;
    iput v2, p0, Lorg/cybergarage/upnp/Device;->qiyiUDPPort:I

    .line 449
    invoke-virtual {v1, v0, v2, p1}, Lorg/cybergarage/http/HTTPRequest;->quicklyUDPPost(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public reconnectQuicklyHost()V
    .locals 5

    .prologue
    .line 517
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v2

    .line 518
    .local v2, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    const/4 v0, 0x0

    .line 519
    .local v0, "data":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 521
    const-string v4, "online reconnectQuicklyHost() p1 "

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v3

    .line 523
    .local v3, "port":I
    if-nez v3, :cond_1

    .line 536
    .end local v3    # "port":I
    :cond_0
    :goto_0
    return-void

    .line 525
    .restart local v3    # "port":I
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "host":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPRequest;->closeHostQuickly()V

    .line 529
    const-string v4, "online reconnectQuicklyHost() p2 "

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v2, v1, v3, v0}, Lorg/cybergarage/http/HTTPRequest;->reconnectHostQuickly(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public sendDataToHostTokeepAlive(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getQuicklyHttpRequest()Lorg/cybergarage/http/HTTPRequest;

    move-result-object v1

    .line 541
    .local v1, "httpRequest":Lorg/cybergarage/http/HTTPRequest;
    if-eqz v1, :cond_0

    .line 543
    const-string v3, "online sendUrgentData p1 "

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPortFromSSDP()I

    move-result v2

    .line 545
    .local v2, "port":I
    if-nez v2, :cond_1

    .line 559
    .end local v2    # "port":I
    :cond_0
    :goto_0
    return-void

    .line 547
    .restart local v2    # "port":I
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getQiyiHostFromSSDP()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 552
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "online sendUrgentData p2 data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1, v0, v2, p1}, Lorg/cybergarage/http/HTTPRequest;->reconnectHostQuickly(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 3779
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 3780
    .local v3, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v1

    .line 3781
    .local v1, "nServices":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3786
    return-void

    .line 3783
    :cond_0
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 3784
    .local v2, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 3781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V
    .locals 5
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;
    .param p2, "includeSubDevices"    # Z

    .prologue
    .line 3806
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 3807
    if-eqz p2, :cond_0

    .line 3809
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 3810
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 3811
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 3817
    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .end local v3    # "n":I
    :cond_0
    return-void

    .line 3813
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .restart local v3    # "n":I
    :cond_1
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 3814
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V

    .line 3811
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V
    .locals 0
    .param p1, "controlPointConnectRendererListener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .prologue
    .line 256
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    .line 257
    return-void
.end method

.method public setDLNADOC(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1959
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1960
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1962
    const-string v2, "dlna:X_DLNADOC"

    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1963
    .local v1, "node":Lorg/cybergarage/xml/Node;
    if-eqz v1, :cond_1

    .line 1965
    const-string v2, "dlna"

    const-string v3, "urn:schemas-dlna-org:device-1-0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1974
    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_0
    return-void

    .line 1969
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_1
    new-instance v1, Lorg/cybergarage/xml/Node;

    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    const-string v2, "dlna:X_DLNADOC"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1970
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    const-string v2, "dlna"

    const-string v3, "urn:schemas-dlna-org:device-1-0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public setDONGLEVERSION(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 2946
    iput p1, p0, Lorg/cybergarage/upnp/Device;->mDeviceVersion:I

    .line 2947
    return-void
.end method

.method public setDescriptionXmlContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionXmlContent"    # Ljava/lang/String;

    .prologue
    .line 606
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlContent:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setDescriptionXmlMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "descriptionXmlMd5"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->descriptionXmlMd5:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setDeviceConnectStatusListener(Lorg/cybergarage/upnp/DeviceConnectStatusListener;)V
    .locals 0
    .param p1, "deviceConnectStatusListener"    # Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    .prologue
    .line 594
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->deviceConnectStatusListener:Lorg/cybergarage/upnp/DeviceConnectStatusListener;

    .line 595
    return-void
.end method

.method public setDeviceName(I)V
    .locals 1
    .param p1, "deviceName"    # I

    .prologue
    .line 2953
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setQiyiDeviceType(I)V

    .line 2954
    return-void
.end method

.method public setDeviceNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 692
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 693
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1721
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1722
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1724
    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public setDeviceVersion(I)V
    .locals 1
    .param p1, "deviceVersion"    # I

    .prologue
    .line 2967
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setQiyiVersion(I)V

    .line 2968
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1756
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setInternalFriendlyName(Ljava/lang/String;)Z

    move-result v0

    .line 1758
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 1760
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1762
    iget-object v1, p0, Lorg/cybergarage/upnp/Device;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->byebye()V

    .line 1767
    const/4 v1, 0x1

    .line 1771
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 3105
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 3106
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 2913
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPPort(I)V

    .line 2914
    return-void
.end method

.method public setHostUnknownTimeListener(Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .prologue
    .line 412
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->mHostUnknownTimeListener:Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;

    .line 413
    return-void
.end method

.method public setIQIYIDEVICE(I)V
    .locals 0
    .param p1, "deviceName"    # I

    .prologue
    .line 2924
    iput p1, p0, Lorg/cybergarage/upnp/Device;->mDeviceName:I

    .line 2925
    return-void
.end method

.method public setIconList(Lorg/cybergarage/upnp/IconList;)V
    .locals 6
    .param p1, "iconList"    # Lorg/cybergarage/upnp/IconList;

    .prologue
    .line 2419
    if-nez p1, :cond_1

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    const-string v5, "iconList"

    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 2422
    .local v3, "iconListNode":Lorg/cybergarage/xml/Node;
    if-nez v3, :cond_2

    .line 2424
    new-instance v3, Lorg/cybergarage/xml/Node;

    .end local v3    # "iconListNode":Lorg/cybergarage/xml/Node;
    const-string v4, "iconList"

    invoke-direct {v3, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 2426
    .restart local v3    # "iconListNode":Lorg/cybergarage/xml/Node;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 2431
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2432
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2434
    invoke-virtual {v0, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0

    .line 2428
    .end local v0    # "deviceNode":Lorg/cybergarage/xml/Node;
    :cond_3
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v2

    .line 2429
    .local v2, "icon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Icon;->getIconNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 2426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->mIconPath:Ljava/lang/String;

    .line 229
    return-void
.end method

.method setInternalFriendlyName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return v1

    .line 1804
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1805
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1807
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setLeaseTime(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1622
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLeaseTime(I)V

    .line 1623
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 1624
    .local v0, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 1627
    const-string v1, "Advertiser"

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/device/Advertiser;->restart(Ljava/lang/String;)V

    .line 1629
    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1605
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLocation(Ljava/lang/String;)V

    .line 1606
    return-void
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1821
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1822
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1824
    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :cond_0
    return-void
.end method

.method public setManufactureURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1844
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1845
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1847
    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :cond_0
    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1867
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1868
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1870
    const-string v1, "modelDescription"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :cond_0
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1890
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1891
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1893
    const-string v1, "modelName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_0
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1913
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1914
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1916
    const-string v1, "modelNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    :cond_0
    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1936
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1937
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1939
    const-string v1, "modelURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    :cond_0
    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3715
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 3716
    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 3734
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 3735
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1216
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1217
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1219
    :cond_0
    if-eqz p1, :cond_1

    .line 1221
    const-string v1, "INMPR03"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0

    .line 1225
    :cond_1
    const-string v1, "INMPR03"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2100
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2101
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2103
    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :cond_0
    return-void
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2077
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2078
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2080
    const-string v1, "presentationURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :cond_0
    return-void
.end method

.method public setQiyiDeviceVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 2980
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setQiyiDeviceVersion(I)V

    .line 2981
    return-void
.end method

.method public setQiyiHTTPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 3087
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setQiyihttpPort(I)V

    .line 3088
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 3790
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 3791
    .local v3, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v1

    .line 3792
    .local v1, "nServices":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3797
    return-void

    .line 3794
    :cond_0
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 3795
    .local v2, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 3792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V
    .locals 5
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/QueryListener;
    .param p2, "includeSubDevices"    # Z

    .prologue
    .line 3822
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 3823
    if-eqz p2, :cond_0

    .line 3825
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 3826
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 3827
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 3833
    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .end local v3    # "n":I
    :cond_0
    return-void

    .line 3829
    .restart local v1    # "devCnt":I
    .restart local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .restart local v3    # "n":I
    :cond_1
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 3830
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V

    .line 3827
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setQuicklySend(Z)V
    .locals 0
    .param p1, "quicklySend"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lorg/cybergarage/upnp/Device;->quicklySend:Z

    .line 224
    return-void
.end method

.method public setQuicklySendMessageListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;)V
    .locals 0
    .param p1, "quicklySendMessageListener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->quicklySendMessageListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QuicklySendMessageListener;

    .line 244
    return-void
.end method

.method public setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 687
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 688
    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 3696
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPBindAddress([Ljava/net/InetAddress;)V

    .line 3697
    return-void
.end method

.method public setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1589
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1590
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 3677
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPort(I)V

    .line 3678
    return-void
.end method

.method public setSdkVersion(I)Z
    .locals 3
    .param p1, "deviceVersion"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2929
    iget-boolean v2, p0, Lorg/cybergarage/upnp/Device;->mSdkVersionChanged:Z

    if-eqz v2, :cond_0

    .line 2931
    const-string v1, "SDKVersion only can be set once!"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 2940
    :goto_0
    return v0

    .line 2933
    :cond_0
    if-gez p1, :cond_1

    .line 2935
    const-string v1, "SDKVersion can not be less than 0!"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 2938
    :cond_1
    iput p1, p0, Lorg/cybergarage/upnp/Device;->mSdkVersion:I

    .line 2939
    iput-boolean v1, p0, Lorg/cybergarage/upnp/Device;->mSdkVersionChanged:Z

    move v0, v1

    .line 2940
    goto :goto_0
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1991
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 1992
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 1994
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    :cond_0
    return-void
.end method

.method public setServerIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverIP"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->setServerIp(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public setSpecVersionNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "specVersionNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 668
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->specVersionNode:Lorg/cybergarage/xml/Node;

    .line 669
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2014
    const-string v1, "uuid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uuid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2018
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2019
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_1

    .line 2021
    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :cond_1
    return-void
.end method

.method public setUPC(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2051
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 2052
    .local v0, "deviceNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 2054
    const-string v1, "UPC"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    :cond_0
    return-void
.end method

.method public setUdpQiyiHTTPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 3100
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setUdpqiyihttpPort(I)V

    .line 3101
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 3843
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 3844
    return-void
.end method

.method public setWirelessMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1245
    iput-boolean p1, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    .line 1246
    return-void
.end method

.method public start()Z
    .locals 19

    .prologue
    .line 866
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    .line 871
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "++++device.start getPackageName = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->getDmrInfor(Ljava/lang/String;)Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    move-result-object v7

    .line 873
    .local v7, "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getUuid()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 875
    :cond_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v16

    .line 876
    .local v16, "uuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 877
    new-instance v7, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    .end local v7    # "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    invoke-direct {v7}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;-><init>()V

    .line 878
    .restart local v7    # "dmrInfor":Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->setUuid(Ljava/lang/String;)V

    .line 879
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->SaveDmrInfor(Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;Ljava/lang/String;)V

    .line 885
    .end local v16    # "uuid":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->CheckDeviceDes()V

    .line 892
    const/4 v14, 0x0

    .line 893
    .local v14, "retryCnt":I
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v5

    .line 894
    .local v5, "bindPort":I
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v8

    .line 895
    .local v8, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    :goto_1
    invoke-virtual {v8, v5}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 905
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 906
    invoke-virtual {v8}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 912
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDescriptionXml()Ljava/lang/String;

    move-result-object v6

    .line 914
    .local v6, "desStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static/range {v17 .. v18}, Lorg/cybergarage/util/MD5Util;->getMd5([BI)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setDescriptionXmlMd5(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 921
    const/4 v14, 0x0

    .line 922
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getQiyiHttpServerList()Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;

    move-result-object v12

    .line 923
    .local v12, "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v13

    .line 924
    .local v13, "qiyibindPort":I
    :goto_2
    invoke-virtual {v12, v13}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->open(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 934
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->addControlPointConnectListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V

    .line 936
    invoke-virtual {v12}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;->start()V

    .line 942
    .end local v12    # "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    .end local v13    # "qiyibindPort":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isQuicklySend()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 946
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    invoke-direct/range {v17 .. v17}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    .line 948
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setUdpQiyiHTTPPort(I)V

    .line 950
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUdpQiyiHttpPort()I

    move-result v2

    .line 951
    .local v2, "UDPqiyibindPort":I
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v11

    .line 952
    .local v11, "nHostAddrs":I
    new-array v4, v11, [Ljava/lang/String;

    .line 953
    .local v4, "bindAddresses":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_3
    if-lt v10, v11, :cond_8

    .line 959
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v9, v0, :cond_9

    .line 986
    .end local v2    # "UDPqiyibindPort":I
    .end local v4    # "bindAddresses":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "n":I
    .end local v11    # "nHostAddrs":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v15

    .line 987
    .local v15, "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v15}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v17

    if-nez v17, :cond_d

    .line 989
    const-string v17, "ssdpSearchSocketlist is not opening"

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 990
    const/16 v17, 0x0

    .line 1007
    .end local v6    # "desStr":Ljava/lang/String;
    .end local v15    # "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    :goto_5
    return v17

    .line 882
    .end local v5    # "bindPort":I
    .end local v8    # "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    .end local v14    # "retryCnt":I
    :cond_3
    invoke-virtual {v7}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getUuid()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    .restart local v5    # "bindPort":I
    .restart local v8    # "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    .restart local v14    # "retryCnt":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 898
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ge v0, v14, :cond_5

    .line 900
    const/16 v17, 0x0

    goto :goto_5

    .line 902
    :cond_5
    add-int/lit8 v17, v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v5

    goto/16 :goto_1

    .line 926
    .restart local v6    # "desStr":Ljava/lang/String;
    .restart local v12    # "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    .restart local v13    # "qiyibindPort":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 927
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ge v0, v14, :cond_7

    .line 929
    const/16 v17, 0x0

    goto :goto_5

    .line 931
    :cond_7
    add-int/lit8 v17, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setQiyiHTTPPort(I)V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getQiyiHTTPPort()I

    move-result v13

    goto/16 :goto_2

    .line 955
    .end local v12    # "qiyiHttpServerList":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiHttpServerList;
    .end local v13    # "qiyibindPort":I
    .restart local v2    # "UDPqiyibindPort":I
    .restart local v4    # "bindAddresses":[Ljava/lang/String;
    .restart local v10    # "n":I
    .restart local v11    # "nHostAddrs":I
    :cond_8
    invoke-static {v10}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v4, v10

    .line 953
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 961
    .restart local v9    # "i":I
    :cond_9
    aget-object v17, v4, v9

    invoke-static/range {v17 .. v17}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 959
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 963
    :cond_a
    const/4 v14, 0x0

    .line 964
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    move-object/from16 v17, v0

    aget-object v18, v4, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->open(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->controlPointConnectRendererListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->addControlPointConnectRendererListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/ControlPointConnectRendererListener;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cybergarage/upnp/Device;->qiyiUDPHttpServer:Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/QiyiUDPHttpServer;->start()Z

    goto :goto_6

    .line 966
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 967
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 969
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 971
    :cond_c
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/Device;->setUdpQiyiHTTPPort(I)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUdpQiyiHttpPort()I

    move-result v2

    goto :goto_7

    .line 992
    .end local v2    # "UDPqiyibindPort":I
    .end local v4    # "bindAddresses":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "n":I
    .end local v11    # "nHostAddrs":I
    .restart local v15    # "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V

    .line 993
    invoke-virtual {v15}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->start()V

    .line 998
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 1003
    new-instance v3, Lorg/cybergarage/upnp/device/Advertiser;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/cybergarage/upnp/device/Advertiser;-><init>(Lorg/cybergarage/upnp/Device;)V

    .line 1004
    .local v3, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 1005
    const-string v17, "Advertiser"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/device/Advertiser;->start(Ljava/lang/String;)V

    .line 1007
    const/16 v17, 0x1

    goto/16 :goto_5
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 1078
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 1100
    return-void
.end method
