.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
.super Lorg/cybergarage/upnp/Device;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;,
        Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x9ac4

.field public static final DEFAULT_HTTP_PORT_EXTRA:I = 0x9ad8

.field public static final DEVICE_IQIYIRENDERER_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:IQIYIMediaRenderer:1"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaRenderer:1"

.field public static final DMR_VERSION:Ljava/lang/String; = "DMR-1.50"

.field private static final notifyStateVar:Ljava/lang/String; = "A_ARG_TYPE_NOTIFYMSG"


# instance fields
.field private actionListener:Lorg/cybergarage/upnp/control/ActionListener;

.field private avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

.field private conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

.field private mLastChangeListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;

.field private notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

.field private privateServer:Lorg/cybergarage/upnp/Service;

.field private privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

.field private qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

.field private renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

.field private standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/Device;-><init>(II)V

    .line 46
    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 48
    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 91
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->mLastChangeListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;

    .line 101
    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    .line 116
    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 76
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->clear()V

    .line 77
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setDeviceType(Ljava/lang/String;)V

    .line 78
    const-string v0, "DMR-1.50"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setDLNADOC(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/Device;-><init>(II)V

    .line 46
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 48
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 91
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->mLastChangeListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;

    .line 101
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    .line 116
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 67
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->clear()V

    .line 68
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setDeviceType(Ljava/lang/String;)V

    .line 70
    const-string v0, "DMR-1.50"

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setDLNADOC(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "descriptionFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 46
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 48
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 91
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->mLastChangeListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;

    .line 101
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    .line 116
    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->initialize()V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->isAVTransportService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->isConnectionManagerService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->isRenderingControlService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isAVTransportService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isConnectionManagerService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string v0, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRenderingControlService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public NotifyMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "notifyMsg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 262
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    if-nez v4, :cond_3

    .line 264
    const-string v4, "urn:schemas-upnp-org:service:PrivateServer:1"

    invoke-virtual {p0, v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    iput-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 265
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 268
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 269
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 287
    .end local v0    # "n":I
    .end local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .end local v2    # "tableSize":I
    :cond_0
    :goto_1
    return-void

    .line 271
    .restart local v0    # "n":I
    .restart local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .restart local v2    # "tableSize":I
    :cond_1
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 273
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "A_ARG_TYPE_NOTIFYMSG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 275
    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NofityMessage sub send: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, p1, v6}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "n":I
    .end local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .end local v2    # "tableSize":I
    .end local v3    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_3
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    invoke-virtual {v4, p1, v6}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public NotifyMessage(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "notifyMsg"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .prologue
    .line 291
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    if-nez v4, :cond_3

    .line 293
    const-string v4, "urn:schemas-upnp-org:service:PrivateServer:1"

    invoke-virtual {p0, v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    iput-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 294
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 297
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 298
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 316
    .end local v0    # "n":I
    .end local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .end local v2    # "tableSize":I
    :cond_0
    :goto_1
    return-void

    .line 300
    .restart local v0    # "n":I
    .restart local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .restart local v2    # "tableSize":I
    :cond_1
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 302
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "A_ARG_TYPE_NOTIFYMSG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NofityMessage sub send: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, p1, p2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 298
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "n":I
    .end local v1    # "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    .end local v2    # "tableSize":I
    .end local v3    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_3
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->notifyStateVariable:Lorg/cybergarage/upnp/StateVariable;

    invoke-virtual {v4, p1, p2}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public getAVTransport()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    return-object v0
.end method

.method public getActionListener()Lorg/cybergarage/upnp/control/ActionListener;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->actionListener:Lorg/cybergarage/upnp/control/ActionListener;

    return-object v0
.end method

.method public getConnectionManager()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLastChangeListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->mLastChangeListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;

    return-object v0
.end method

.method public getPrivateService()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    return-object v0
.end method

.method public getQiyiDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    return-object v0
.end method

.method public getRenderingControl()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    return-object v0
.end method

.method public getStandardDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 131
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 132
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "firstIf":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setInterfaceAddress(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 135
    const v1, 0x9ad8

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setHTTPPort(I)V

    .line 139
    :goto_0
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    .line 140
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    .line 141
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getInstance(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    .line 143
    new-instance v1, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;-><init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    iput-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    .line 147
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->addService(Lorg/cybergarage/upnp/Service;)V

    .line 148
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->addService(Lorg/cybergarage/upnp/Service;)V

    .line 149
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->addService(Lorg/cybergarage/upnp/Service;)V

    .line 150
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->addService(Lorg/cybergarage/upnp/Service;)V

    .line 153
    return-void

    .line 137
    :cond_0
    const v1, 0x9ac4

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->setHTTPPort(I)V

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->actionListener:Lorg/cybergarage/upnp/control/ActionListener;

    .line 213
    return-void
.end method

.method public setDmrLogPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInforKeeper;->setLogPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setQiyiDLNAListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;)V
    .locals 0
    .param p1, "qiyiDLNAListener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 126
    return-void
.end method

.method public setStandardDLNAListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;)V
    .locals 0
    .param p1, "standardDLNAListener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->standardDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/StandardDLNAListener;

    .line 111
    return-void
.end method

.method public declared-synchronized start()Z
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaRenderer start SDK VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 227
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->start()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaRenderer stop SDK VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/SDKVersion;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->privateService:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->stopNotifyThreads()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->avTrans:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->stopNotifyThreads()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->conMan:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->stopNotifyThreads()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->renCon:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->stopNotifyThreads()V

    .line 252
    :cond_3
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
