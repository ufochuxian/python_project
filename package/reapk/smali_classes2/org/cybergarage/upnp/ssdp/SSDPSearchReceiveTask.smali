.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mLocalAddress:Ljava/lang/String;

.field mSearchSock:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;Ljava/net/DatagramSocket;Ljava/lang/String;)V
    .locals 0
    .param p1, "searchSock"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    .param p2, "socket"    # Ljava/net/DatagramSocket;
    .param p3, "localAddress"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mSearchSock:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    .line 18
    iput-object p2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mSocket:Ljava/net/DatagramSocket;

    .line 19
    iput-object p3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mLocalAddress:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 57
    .local v1, "ssdvRecvBuf":[B
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 58
    .local v0, "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mLocalAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 68
    return-object v0

    .line 65
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket has already been closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 30
    const/4 v1, 0x0

    .line 34
    .local v1, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_start_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isDiscover()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "receive M-Search, sender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->mSearchSock:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->performSearchListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/cybergarage/upnp/ssdp/SSDPSearchReceiveTask;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Device receive M-Search Thread exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    return-void
.end method
