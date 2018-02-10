.class public Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field private static final KEEP_ALIVE_TIME:I = 0x258

.field private static final MAX_POOL_SIZE:I = 0xc

.field private static mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mInstance:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;


# instance fields
.field private mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0xc

    const-wide/16 v4, 0x258

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    return-void
.end method

.method public static getInstance()Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mInstance:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mInstance:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    .line 31
    :cond_0
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mInstance:Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 38
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0xc

    const-wide/16 v4, 0x258

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    :cond_0
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/cybergarage/upnp/ssdp/SSDPPacketReceiveThreadPool;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    :cond_0
    return-void
.end method
