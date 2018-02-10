.class public Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;
.super Lorg/cybergarage/upnp/Service;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/ServiceInterface;
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# instance fields
.field private conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

.field private maxConnectionID:I

.field private mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 1
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;-><init>()V

    .line 51
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    .line 73
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->maxConnectionID:I

    .line 34
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V

    .line 35
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->initService()V

    .line 36
    invoke-virtual {p0, p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 37
    return-void
.end method

.method private getCurrentConnectionIDs(Lorg/cybergarage/upnp/Action;)Z
    .locals 6
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 177
    const-string v0, ""

    .line 178
    .local v0, "conIDs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 179
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->size()I

    move-result v3

    .line 180
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 187
    const-string v4, "ConnectionIDs"

    invoke-virtual {p1, v4}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 189
    const/4 v4, 0x1

    return v4

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v4, v2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->getConnectionInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    move-result-object v1

    .line 183
    .local v1, "info":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;
    if-lez v2, :cond_1

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getCurrentConnectionInfo(Lorg/cybergarage/upnp/Action;)Z
    .locals 5
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/4 v4, -0x1

    .line 194
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v0

    .line 195
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 196
    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->getConnectionInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    move-result-object v1

    .line 197
    .local v1, "info":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;
    if-eqz v1, :cond_0

    .line 199
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getRcsID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 200
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getAVTransportID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 201
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getPeerConnectionManager()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 202
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getPeerConnectionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 203
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 204
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 215
    const/4 v2, 0x1

    return v2

    .line 207
    :cond_0
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 208
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 209
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 210
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 211
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Output"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 212
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaRenderer(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 0
    .param p1, "render"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    .line 44
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 9
    .param p1, "action"    # Lorg/cybergarage/upnp/Action;

    .prologue
    const/16 v8, 0x191

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "isActionSuccess":Z
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "actionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1, v8}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    .line 131
    const/4 v6, 0x0

    .line 172
    :goto_0
    return v6

    .line 134
    :cond_0
    const-string v6, "GetProtocolInfo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Process CM actionControlReceived() action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 137
    const-string v5, "NOT_IMPLEMENTED"

    .line 138
    .local v5, "sourceProtocol":Ljava/lang/String;
    const-string v4, "http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVMED_PRO,http-get:*:video/x-ms-asf:DLNA.ORG_PN=MPEG4_P2_ASF_SP_G726,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVMED_FULL,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVMED_BASE,http-get:*:audio/L16;rate=44100;channels=1:DLNA.ORG_PN=LPCM,http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_PS_PAL,http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_PS_NTSC,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVHIGH_PRO,http-get:*:audio/L16;rate=44100;channels=2:DLNA.ORG_PN=LPCM,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM,http-get:*:video/x-ms-asf:DLNA.ORG_PN=VC1_ASF_AP_L1_WMA,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMDRM_WMABASE,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVHIGH_FULL,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAFULL,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMABASE,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPLL_BASE,http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_PS_NTSC_XAC3,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMDRM_WMVSPLL_BASE,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPML_BASE,http-get:*:video/x-ms-asf:DLNA.ORG_PN=MPEG4_P2_ASF_ASP_L5_SO_G726,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3,http-get:*:video/mpeg:DLNA.ORG_PN=MPEG_PS_PAL_XAC3,http-get:*:audio/x-ms-wma:DLNA.ORG_PN=WMAPRO,http-get:*:video/mpeg:DLNA.ORG_PN=MPEG1,http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_TN,http-get:*:video/x-ms-asf:DLNA.ORG_PN=MPEG4_P2_ASF_ASP_L4_SO_G726,http-get:*:audio/L16;rate=48000;channels=2:DLNA.ORG_PN=LPCM,http-get:*:audio/mpeg:DLNA.ORG_PN=MP3X,http-get:*:video/x-ms-wmv:DLNA.ORG_PN=WMVSPML_MP3,http-get:*:video/x-ms-wmv:*,http-get:*:image/png:*,http-get:*:audio/mp3:*,http-get:*:audio/mpeg:*,http-get:*:audio/mpeg3:*,http-get:*:video/mp4:*,http-get:*:video/avi:*"

    .line 139
    .local v4, "sinkProtocol":Ljava/lang/String;
    const-string v6, "Sink"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 140
    const-string v6, "Source"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x1

    .line 164
    .end local v4    # "sinkProtocol":Ljava/lang/String;
    .end local v5    # "sourceProtocol":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    move-result-object v1

    .line 165
    .local v1, "dmr":Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v3

    .line 168
    .local v3, "listener":Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v3, :cond_1

    .line 169
    invoke-interface {v3, p1}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    .end local v3    # "listener":Lorg/cybergarage/upnp/control/ActionListener;
    :cond_1
    move v6, v2

    .line 172
    goto :goto_0

    .line 142
    .end local v1    # "dmr":Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    :cond_2
    const-string v6, "GetCurrentConnectionIDs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Process CM actionControlReceived() action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->getCurrentConnectionIDs(Lorg/cybergarage/upnp/Action;)Z

    move-result v2

    .line 146
    const-string v6, "ConnectionIDs"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_3
    const-string v6, "GetCurrentConnectionInfo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Process CM actionControlReceived() action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->getCurrentConnectionInfo(Lorg/cybergarage/upnp/Action;)Z

    move-result v2

    .line 151
    const-string v6, "RcsID"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 152
    const-string v6, "AVTransportID"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 153
    const-string v6, "PeerConnectionManager"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 154
    const-string v6, "PeerConnectionID"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "-1"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 155
    const-string v6, "Direction"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "Input"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 156
    const-string v6, "Status"

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v6

    const-string v7, "Unknown"

    invoke-virtual {v6, v7}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown CM actionControlReceived() action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p1, v8}, Lorg/cybergarage/upnp/Action;->setStatus(I)V

    goto/16 :goto_1
.end method

.method public addConnectionInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 95
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 97
    return-void
.end method

.method public getConnectionInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 82
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->size()I

    move-result v2

    .line 83
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 89
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->getConnectionInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    move-result-object v0

    .line 86
    .local v0, "info":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getID()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getConnectionInfoList()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    return-object v0
.end method

.method public getMediaRenderer()Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->mediaRenderer:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    return-object v0
.end method

.method public getNextConnectionID()I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 68
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->maxConnectionID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->maxConnectionID:I

    .line 69
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 70
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->maxConnectionID:I

    return v0
.end method

.method public initService()V
    .locals 2

    .prologue
    .line 226
    const-string v1, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setServiceType(Ljava/lang/String;)V

    .line 227
    const-string v1, "urn:upnp-org:serviceId:ConnectionManager"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setServiceID(Ljava/lang/String;)V

    .line 228
    const-string v1, "_urn:schemas-upnp-org:service:ConnectionManager_scpd.xml"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setSCPDURL(Ljava/lang/String;)V

    .line 229
    const-string v1, "_urn:schemas-upnp-org:service:ConnectionManager_control"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setControlURL(Ljava/lang/String;)V

    .line 230
    const-string v1, "_urn:schemas-upnp-org:service:ConnectionManager_event"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->setEventSubURL(Ljava/lang/String;)V

    .line 233
    :try_start_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\r\n  <specVersion>\r\n    <major>1</major>\r\n    <minor>0</minor>\r\n  </specVersion>\r\n  <actionList>\r\n    <action>\r\n      <name>GetCurrentConnectionInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>ConnectionID</name>\r\n          <direction>in</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>RcsID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>AVTransportID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>ProtocolInfo</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PeerConnectionManager</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>PeerConnectionID</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Direction</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Status</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetProtocolInfo</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>Source</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n        <argument>\r\n          <name>Sink</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n    <action>\r\n      <name>GetCurrentConnectionIDs</name>\r\n      <argumentList>\r\n        <argument>\r\n          <name>ConnectionIDs</name>\r\n          <direction>out</direction>\r\n          <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\r\n        </argument>\r\n      </argumentList>\r\n    </action>\r\n  </actionList>\r\n  <serviceStateTable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionStatus</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>OK</allowedValue>\r\n        <allowedValue>ContentFormatMismatch</allowedValue>\r\n        <allowedValue>InsufficientBandwidth</allowedValue>\r\n        <allowedValue>UnreliableChannel</allowedValue>\r\n        <allowedValue>Unknown</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_AVTransportID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_RcsID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionID</name>\r\n      <dataType>i4</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_ConnectionManager</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>SourceProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>SinkProtocolInfo</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"no\">\r\n      <name>A_ARG_TYPE_Direction</name>\r\n      <dataType>string</dataType>\r\n      <allowedValueList>\r\n        <allowedValue>Input</allowedValue>\r\n        <allowedValue>Output</allowedValue>\r\n      </allowedValueList>\r\n    </stateVariable>\r\n    <stateVariable sendEvents=\"yes\">\r\n      <name>CurrentConnectionIDs</name>\r\n      <dataType>string</dataType>\r\n    </stateVariable>\r\n  </serviceStateTable>\r\n</scpd>"

    invoke-virtual {p0, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->loadSCPD(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/cybergarage/upnp/device/InvalidDescriptionException;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 56
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public removeConnectionInfo(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 102
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->size()I

    move-result v2

    .line 103
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 112
    :goto_1
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 113
    return-void

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->getConnectionInfo(I)Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;->getID()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 108
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v3, v0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeConnectionInfo(Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfo;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->lock()V

    .line 118
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->conInfoList:Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/infor/ConnectionInfoList;->remove(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->unlock()V

    .line 120
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 61
    return-void
.end method
