.class public Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;
.super Lorg/cybergarage/upnp/ControlPoint;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# static fields
.field private static final QIMOHTTPRETRYTIME:I = 0x5

.field private static mServerThread:Ljava/lang/Thread;

.field private static mStdIn:Ljava/io/PipedOutputStream;


# instance fields
.field private HTTPSTRING:Ljava/lang/String;

.field private final SUBSCRIBED_TIMEOUT:J

.field private deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

.field private isReceiveNotify:Z

.field public lastResponseTime:J

.field private mEventListener:Lorg/cybergarage/upnp/event/EventListener;

.field private mNotifyMessageListener:Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

.field private mQimoHttpServerPort:I

.field private privateServer:Lorg/cybergarage/upnp/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mStdIn:Ljava/io/PipedOutputStream;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 65
    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mNotifyMessageListener:Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    .line 67
    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isReceiveNotify:Z

    .line 70
    const-wide/16 v0, 0xb4

    iput-wide v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->SUBSCRIBED_TIMEOUT:J

    .line 74
    const/16 v0, 0x2382

    iput v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    .line 76
    const-string v0, "http://"

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->HTTPSTRING:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)V

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mEventListener:Lorg/cybergarage/upnp/event/EventListener;

    .line 116
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

    .line 117
    return-void
.end method

.method private QimoHttpServerPort(I)Z
    .locals 10
    .param p1, "port"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 738
    const/4 v4, 0x0

    .line 739
    .local v4, "serverSock":Ljava/net/ServerSocket;
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 741
    .local v1, "bindAddr":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 742
    .local v2, "bindPort":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_1

    :cond_0
    move v6, v7

    .line 768
    :goto_0
    return v6

    .line 744
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "++++QimoHttpServerPort addr: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 747
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 748
    move v2, p1

    .line 749
    new-instance v5, Ljava/net/ServerSocket;

    const/4 v8, 0x0

    invoke-direct {v5, v2, v8, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v4    # "serverSock":Ljava/net/ServerSocket;
    .local v5, "serverSock":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 759
    const/4 v4, 0x0

    .line 760
    .end local v5    # "serverSock":Ljava/net/ServerSocket;
    .restart local v4    # "serverSock":Ljava/net/ServerSocket;
    const/4 v1, 0x0

    .line 761
    const/4 v2, 0x0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v3

    .line 752
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v6, v7

    .line 753
    goto :goto_0

    .line 762
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "serverSock":Ljava/net/ServerSocket;
    .restart local v5    # "serverSock":Ljava/net/ServerSocket;
    :catch_1
    move-exception v3

    .line 764
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move-object v4, v5

    .end local v5    # "serverSock":Ljava/net/ServerSocket;
    .restart local v4    # "serverSock":Ljava/net/ServerSocket;
    move v6, v7

    .line 765
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mNotifyMessageListener:Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    return v0
.end method

.method private setIsRecevieNotifyMessage(Z)Z
    .locals 6
    .param p1, "isRecevied"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setIsRecevieNotifyMessage: isRecevied = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 641
    iput-boolean p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isReceiveNotify:Z

    .line 642
    iget-boolean v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isReceiveNotify:Z

    if-eqz v2, :cond_3

    .line 644
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v2

    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 647
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isSubscribed(Lorg/cybergarage/upnp/Service;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    const-wide/16 v4, 0xb4

    invoke-virtual {p0, v2, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 654
    const-string v1, "DMC set receive dmr message failure"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 657
    goto :goto_0

    :cond_2
    move v0, v1

    .line 659
    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v2

    iput-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 669
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isSubscribed(Lorg/cybergarage/upnp/Service;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 673
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 675
    const-string v1, "DMC set no receive dmr message"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 678
    goto :goto_0

    :cond_5
    move v0, v1

    .line 680
    goto :goto_0
.end method


# virtual methods
.method public GetQimoFileAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 901
    iget v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "Port":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 903
    .local v3, "mQimoFileAddress":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, "addr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "mFilePath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->HTTPSTRING:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 909
    .end local v2    # "mFilePath":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "++++GetQimoFileAddress"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 910
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public GetQimoFileAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "LocalWIFIIP"    # Ljava/lang/String;
    .param p2, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 888
    iget v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "Port":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 890
    .local v2, "mQimoFileAddress":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    .line 892
    invoke-virtual {p0, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "mFilePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->HTTPSTRING:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 895
    .end local v1    # "mFilePath":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++++GetQimoFileAddress"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public NotifyDmcSleep(Z)V
    .locals 2
    .param p1, "isSleep"    # Z

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifyDmcSleep: isSleep = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 236
    iput-boolean p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isAppSleep:Z

    .line 237
    return-void
.end method

.method public SetSendMessageForLongAsKeepLive(Z)V
    .locals 0
    .param p1, "isKeepAlive"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mLongforKeepAlive:Z

    .line 333
    return-void
.end method

.method public StartQimoWebServer()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 773
    const/4 v3, 0x0

    .line 774
    .local v3, "retryCnt":I
    iget v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    .line 776
    .local v1, "qimoPort":I
    iget v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    invoke-direct {p0, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->QimoHttpServerPort(I)Z

    move-result v2

    .line 777
    .local v2, "ret":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 786
    iput v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "++++StartQimoWebServer port: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 789
    iget v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 791
    const-string v5, "++++StartQimoWebServer failed"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 832
    :cond_0
    :goto_1
    return v4

    .line 779
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 780
    const/4 v5, 0x5

    if-lt v5, v3, :cond_0

    .line 782
    iget v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mQimoHttpServerPort:I

    add-int/lit8 v1, v5, 0x1

    .line 783
    invoke-direct {p0, v1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->QimoHttpServerPort(I)Z

    move-result v2

    .line 784
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "++++StartQimoWebServer try port: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_2
    new-instance v5, Ljava/io/PipedOutputStream;

    invoke-direct {v5}, Ljava/io/PipedOutputStream;-><init>()V

    sput-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mStdIn:Ljava/io/PipedOutputStream;

    .line 799
    :try_start_0
    new-instance v5, Ljava/io/PipedInputStream;

    sget-object v6, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mStdIn:Ljava/io/PipedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    invoke-static {v5}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 800
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$2;

    invoke-direct {v6, p0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$2;-><init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mServerThread:Ljava/lang/Thread;

    .line 823
    sget-object v5, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mServerThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 824
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    const-string v4, "----StartQimoWebServer"

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 832
    const/4 v4, 0x1

    goto :goto_1

    .line 825
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "----Exception in StartQimoWebServer"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public StopQimoWebServer()Z
    .locals 4

    .prologue
    .line 837
    const-string v1, "++++StopQimoWebServer"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 840
    :try_start_0
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mStdIn:Ljava/io/PipedOutputStream;

    if-eqz v1, :cond_0

    .line 842
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mStdIn:Ljava/io/PipedOutputStream;

    const-string v2, "\n\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->write([B)V

    .line 843
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mServerThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 844
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertFalse(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_0
    const-string v1, "----StopQimoWebServer"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 853
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 846
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "----Exception in StopQimoWebServer"

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lorg/cybergarage/upnp/Device;)V

    .line 153
    :cond_0
    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V

    .line 165
    :cond_0
    return-void
.end method

.method public deviceUpdated(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceUpdated(Lorg/cybergarage/upnp/Device;)V

    .line 177
    :cond_0
    return-void
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 861
    const-string v1, ""

    .line 862
    .local v1, "newUri":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "/ "

    const/4 v5, 0x1

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 863
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 883
    return-object v1

    .line 865
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "tok":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    goto :goto_0

    :cond_1
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    goto :goto_0

    .line 876
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ignored":Ljava/io/UnsupportedEncodingException;
    const-string v4, "++++encodeURL UnsupportedEncodingException"

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentControlDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, "addr":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    return-object v0
.end method

.method public getDeviceChangeListener()Lorg/cybergarage/upnp/device/DeviceChangeListener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    return-object v0
.end method

.method public getLastResponseTime()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->lastResponseTime:J

    return-wide v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 717
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 733
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 719
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 720
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 722
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 723
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 725
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 729
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 731
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkStatus()Lorg/cybergarage/upnp/NETWORK_STATUS;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lorg/cybergarage/upnp/NetworkMonitor;->getInstance()Lorg/cybergarage/upnp/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/NetworkMonitor;->getNetworkStatus()Lorg/cybergarage/upnp/NETWORK_STATUS;

    move-result-object v0

    return-object v0
.end method

.method public hostUnknownTimes(I)V
    .locals 2
    .param p1, "times"    # I

    .prologue
    .line 706
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostUnknownTimes() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/Byte;Z)Ljava/lang/String;
    .locals 3
    .param p1, "infor"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Byte;
    .param p3, "isNeedReply"    # Z

    .prologue
    const/4 v1, 0x0

    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getIsSuperQuicklySend()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    if-eqz p2, :cond_2

    .line 515
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-object v1

    .line 519
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 524
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 529
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized sendMessage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "infor"    # Ljava/lang/String;
    .param p2, "isNeedReply"    # Z

    .prologue
    const/4 v4, 0x0

    .line 348
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "do sendMesage ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :try_start_1
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v5, :cond_9

    .line 355
    invoke-static {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;->isStdDmrCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    new-instance v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v5, 0x0

    const-string v6, ""

    sget-object v7, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_NO_TARGET_DEVICE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v2, v5, v6, v7}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 365
    .local v2, "result":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :goto_0
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 436
    .end local v2    # "result":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 363
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-static {v5, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;->processFunctionContent(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v2

    .restart local v2    # "result":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    goto :goto_0

    .line 368
    .end local v2    # "result":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :cond_1
    iget-boolean v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mLongforKeepAlive:Z

    .line 370
    .local v1, "iskeepAlive":Z
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/Device;->getSendMessageAction(Z)Lorg/cybergarage/upnp/Action;

    move-result-object v3

    .line 371
    .local v3, "sendMessageAction":Lorg/cybergarage/upnp/Action;
    if-eqz v3, :cond_8

    .line 373
    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/Action;->setKeepAlive(Z)V

    .line 374
    const-string v5, "InstanceID"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v5, "Infor"

    invoke-virtual {v3, v5, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-eqz p2, :cond_5

    .line 378
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 381
    const-string v5, "Result"

    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->lastResponseTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 431
    .end local v1    # "iskeepAlive":Z
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    move-object v2, v4

    .line 436
    goto :goto_1

    .line 387
    .restart local v1    # "iskeepAlive":Z
    .restart local v3    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Action;->getStatus()Lorg/cybergarage/upnp/UPnPStatus;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v5

    if-nez v5, :cond_4

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendMesage ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail,retry..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 392
    const-string v5, "Result"

    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2    # "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->lastResponseTime:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 348
    .end local v1    # "iskeepAlive":Z
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 396
    .restart local v1    # "iskeepAlive":Z
    .restart local v3    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :cond_3
    :try_start_5
    const-string v5, "sendMesage retry failed."

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 400
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendMessage ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail, remove currentControlDevice..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 401
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 403
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    move-object v2, v4

    .line 404
    goto/16 :goto_1

    .line 409
    :cond_5
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Action;->postControlActionNoReply()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 411
    :try_start_6
    const-string v2, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 415
    :cond_6
    :try_start_7
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Action;->postControlActionNoReply()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-eqz v5, :cond_7

    .line 417
    :try_start_8
    const-string v2, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_7
    move-object v2, v4

    .line 420
    goto/16 :goto_1

    .line 424
    :cond_8
    :try_start_9
    const-string v5, "sendMesage error:sendMessageAction is null"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 429
    .end local v1    # "iskeepAlive":Z
    .end local v3    # "sendMessageAction":Lorg/cybergarage/upnp/Action;
    :cond_9
    const-string v5, "Warning! currentControlDevice == null"

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2
.end method

.method public sendMessage(B)Z
    .locals 5
    .param p1, "data"    # B

    .prologue
    .line 446
    :try_start_0
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v4, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getConstructionData(B)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "mydata":Ljava/lang/String;
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/Device;->quicklySendUDPMessage(Ljava/lang/String;)Z

    move-result v3

    .line 450
    .local v3, "udpsucce":Z
    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/Device;->quicklySendTCPMessage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 459
    .end local v1    # "mydata":Ljava/lang/String;
    .end local v3    # "udpsucce":Z
    :goto_0
    return v2

    .line 455
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendMessageBySingle(B)Z
    .locals 2
    .param p1, "data"    # B

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->quicklySendMessage(B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 492
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendUDPMessage(B)Z
    .locals 3
    .param p1, "data"    # B

    .prologue
    .line 469
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getConstructionData(B)Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "mydata":Ljava/lang/String;
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/Device;->quicklySendUDPMessage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 478
    .end local v1    # "mydata":Ljava/lang/String;
    :goto_0
    return v2

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setCurrentDevice(Lorg/cybergarage/upnp/Device;Z)V
    .locals 2
    .param p1, "currentDevice"    # Lorg/cybergarage/upnp/Device;
    .param p2, "isReceiveMsg"    # Z

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    const-string v0, "online setCurrentDevice()"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 291
    if-nez p1, :cond_1

    .line 293
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 296
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->clearSendMessageAction()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string v0, "currentControlDevice == currentDevice"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 310
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->clearSendMessageAction()V

    .line 313
    :cond_3
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    .line 314
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/Device;->setHostUnknownTimeListener(Lorg/cybergarage/http/HTTPRequest$HostUnknownTimeListener;)V

    .line 316
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getIsSuperQuicklySend()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    const-string v0, "online setCurrentDevice() p2"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->beforeHandConnectHost()V

    .line 325
    :cond_4
    invoke-direct {p0, p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setIsRecevieNotifyMessage(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .param p1, "deviceChangeListener"    # Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .prologue
    .line 131
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->removeDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 134
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-eqz p1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->deviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 140
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    goto :goto_0
.end method

.method public setMaxDelayTolerateTime(J)V
    .locals 3
    .param p1, "maxTimes"    # J

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01not use setMaxDelayTolerateTime: maxTimes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 225
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 226
    const-wide/16 p1, 0xa

    .line 227
    :cond_0
    sput-wide p1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->maxDelayTime:J

    .line 228
    return-void
.end method

.method public setOpenRealTimeFunction(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERROR\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01not use setOpenRealTimeFunction: isOpen = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 215
    sput-boolean p1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isOpenRealTime:Z

    .line 216
    return-void
.end method

.method public setReceiveNotifyMessageListener(Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;)V
    .locals 1
    .param p1, "notifyMessageListener"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mEventListener:Lorg/cybergarage/upnp/event/EventListener;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->removeEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mNotifyMessageListener:Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mNotifyMessageListener:Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    .line 700
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->mEventListener:Lorg/cybergarage/upnp/event/EventListener;

    invoke-virtual {p0, v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    goto :goto_0
.end method

.method public start()Z
    .locals 4

    .prologue
    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "ret":Z
    const-wide/16 v2, 0xb4

    invoke-virtual {p0, v2, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setSubscriberTimeout(J)V

    .line 918
    invoke-super {p0}, Lorg/cybergarage/upnp/ControlPoint;->start()Z

    move-result v0

    .line 919
    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 925
    invoke-super {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    move-result v0

    .line 926
    .local v0, "ret":Z
    return v0
.end method

.method public subscribePrivateService()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v3, :cond_0

    .line 608
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v3

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 609
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isSubscribed(Lorg/cybergarage/upnp/Service;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 613
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    const-wide/16 v4, 0xb4

    invoke-virtual {p0, v3, v4, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentDev uuid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 616
    const-string v3, " subscribePrivateService receive DMR message failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 619
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentDev uuid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 620
    const-string v4, " subscribePrivateService OK SID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 619
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    move v1, v2

    .line 621
    goto :goto_0

    .line 623
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentDev uuid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    const-string v4, "already subscribePrivateService. Current SID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 625
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribePrivateService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v3, :cond_2

    .line 545
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v3

    iput-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 546
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isSubscribed(Lorg/cybergarage/upnp/Service;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentdev uuid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 553
    const-string v4, " unsubscribePrivateService OK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 556
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "currentdev uuid: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    const-string v3, " unsubscribePrivateService failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 558
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 567
    goto :goto_0
.end method

.method public unsubscribePrivateService(Ljava/lang/String;)Z
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uuid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "udn":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 576
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_2

    .line 578
    :try_start_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v5

    iput-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    .line 579
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    if-eqz v5, :cond_2

    .line 581
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->isSubscribed(Lorg/cybergarage/upnp/Service;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unsub currentDev SID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {v6}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 584
    iget-object v5, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->privateServer:Lorg/cybergarage/upnp/Service;

    invoke-virtual {p0, v5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dev uuid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unsubscribePrivateService OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return v3

    .line 589
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "dev uuid: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " unsubscribePrivateService failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 590
    goto :goto_0

    .line 595
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 599
    goto :goto_0
.end method
