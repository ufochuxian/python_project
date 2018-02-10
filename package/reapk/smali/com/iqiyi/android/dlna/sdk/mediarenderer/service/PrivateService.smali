.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;
.super Lorg/cybergarage/upnp/Service;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/ServiceInterface;
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# instance fields
.field private mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 1
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 70
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->mutex:Lorg/cybergarage/util/Mutex;

    .line 33
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    .line 34
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->initService()V

    .line 35
    invoke-virtual {p0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 36
    return-void
.end method

.method private setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 0
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .line 59
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 10
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "actionName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 93
    const/4 v4, 0x0

    .line 125
    :cond_0
    :goto_0
    return v4

    .line 94
    :cond_1
    const/4 v4, 0x0

    .line 95
    .local v4, "isActionSuccess":Z
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    move-result-object v1

    .line 100
    .local v1, "dmr":Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    const-string v8, "SendMessage"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 102
    const-string v8, "InstanceID"

    invoke-virtual {p1, v8}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v3

    .line 103
    .local v3, "instanceID":I
    const-string v8, "Infor"

    invoke-virtual {p1, v8}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "infor":Ljava/lang/String;
    const/4 v4, 0x1

    .line 106
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v6, "outResult":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getQiyiDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    move-result-object v7

    .line 110
    .local v7, "qiyiDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;
    if-eqz v7, :cond_2

    .line 112
    invoke-interface {v7, v3, v2, v6}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;->onReceiveSendMessage(ILjava/lang/String;Ljava/lang/StringBuffer;)V

    .line 115
    .end local v7    # "qiyiDLNAListener":Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;
    :cond_2
    const-string v8, "Result"

    invoke-virtual {p1, v8}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 118
    .end local v2    # "infor":Ljava/lang/String;
    .end local v3    # "instanceID":I
    .end local v6    # "outResult":Ljava/lang/StringBuffer;
    :cond_3
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v5

    .line 121
    .local v5, "listener":Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v5, :cond_0

    .line 122
    invoke-interface {v5, p1}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    goto :goto_0
.end method

.method public getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    return-object v0
.end method

.method public getQiyiDLNAListener()Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    return-object v0
.end method

.method public initService()V
    .locals 2

    .prologue
    .line 142
    const-string v1, "urn:schemas-upnp-org:service:PrivateServer:1"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setServiceType(Ljava/lang/String;)V

    .line 143
    const-string v1, "urn:upnp-org:serviceId:PrivateServer"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setServiceID(Ljava/lang/String;)V

    .line 144
    const-string v1, "_urn:schemas-upnp-org:service:PrivateServer_control"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setControlURL(Ljava/lang/String;)V

    .line 145
    const-string v1, "_urn:schemas-upnp-org:service:PrivateServer_scpd.xml"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setSCPDURL(Ljava/lang/String;)V

    .line 146
    const-string v1, "_urn:schemas-upnp-org:service:PrivateServer_event"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->setEventSubURL(Ljava/lang/String;)V

    .line 150
    :try_start_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><scpd xmlns=\"urn:schemas-upnp-org:service-1-0\"><specVersion> <major>1</major><minor>0</minor></specVersion><serviceStateTable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_InstanceID</name><dataType>ui4</dataType></stateVariable><stateVariable sendEvents=\"yes\"><name>A_ARG_TYPE_NOTIFYMSG</name><dataType>string</dataType></stateVariable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_INFOR</name><dataType>string</dataType></stateVariable><stateVariable sendEvents=\"no\"><name>A_ARG_TYPE_SendMessage_Result</name><dataType>string</dataType></stateVariable></serviceStateTable><actionList><action><name>SendMessage</name><argumentList><argument><name>InstanceID</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable></argument><argument><name>Infor</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_INFOR</relatedStateVariable></argument><argument><name>Result</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_SendMessage_Result</relatedStateVariable></argument></argumentList></action><action><name>NotifyMessage</name><argumentList><argument><name>NotifyMsg</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_NOTIFYMSG</relatedStateVariable></argument></argumentList></action></actionList></scpd>"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->loadSCPD(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/cybergarage/upnp/device/InvalidDescriptionException;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;->printStackTrace()V

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 75
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public setQiyiDLNAListener(Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;)V
    .locals 0
    .param p1, "qiyiDLNAListener"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->qiyiDLNAListener:Lcom/iqiyi/android/dlna/sdk/mediarenderer/QiyiDLNAListener;

    .line 48
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/PrivateService;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 80
    return-void
.end method
