.class public Lorg/cybergarage/upnp/NetworkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BAD_QUEUE_LENGTH:I = 0x1

.field public static final BAD_RESPONSE_TIME:J = 0x7d0L

.field private static final GOOD_RESPONSE_TIME:J = 0xc8L

.field private static final NORMAL_QUEUE_LENGTH:I = 0x1

.field private static final NORMAL_RESPONSE_TIME:J = 0x3e8L

.field public static final SUPER_BAD_RESPONSE_TIME:J = 0xfa0L

.field private static sInstance:Lorg/cybergarage/upnp/NetworkMonitor;


# instance fields
.field private mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponseTime:J

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/cybergarage/upnp/NetworkStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

.field private mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lorg/cybergarage/upnp/NetworkMonitor;->sInstance:Lorg/cybergarage/upnp/NetworkMonitor;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    iput-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    sget-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->OK:Lorg/cybergarage/upnp/NETWORK_STATUS;

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

    .line 22
    iput-wide v2, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mLastResponseTime:J

    .line 23
    iput-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    .line 38
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    .line 46
    :goto_0
    sget-object v0, Lorg/cybergarage/upnp/NETWORK_STATUS;->OK:Lorg/cybergarage/upnp/NETWORK_STATUS;

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

    .line 47
    iput-wide v2, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mLastResponseTime:J

    .line 49
    invoke-direct {p0}, Lorg/cybergarage/upnp/NetworkMonitor;->checkQueuesAvailable()V

    .line 50
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method private checkQueuesAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/cybergarage/upnp/NetworkMonitor;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/cybergarage/upnp/NetworkMonitor;->sInstance:Lorg/cybergarage/upnp/NetworkMonitor;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/cybergarage/upnp/NetworkMonitor;

    invoke-direct {v0}, Lorg/cybergarage/upnp/NetworkMonitor;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/NetworkMonitor;->sInstance:Lorg/cybergarage/upnp/NetworkMonitor;

    .line 32
    :cond_0
    sget-object v0, Lorg/cybergarage/upnp/NetworkMonitor;->sInstance:Lorg/cybergarage/upnp/NetworkMonitor;

    return-object v0
.end method

.method private notifyBad(J)V
    .locals 5
    .param p1, "responseTime"    # J

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/cybergarage/upnp/NetworkMonitor;->checkQueuesAvailable()V

    .line 147
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    .local v0, "offerResult":Z
    if-eqz v0, :cond_0

    const-wide/16 v2, 0xfa0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 152
    sget-object v1, Lorg/cybergarage/upnp/NETWORK_STATUS;->BAD:Lorg/cybergarage/upnp/NETWORK_STATUS;

    invoke-direct {p0, v1, p1, p2}, Lorg/cybergarage/upnp/NetworkMonitor;->setStatus(Lorg/cybergarage/upnp/NETWORK_STATUS;J)V

    .line 154
    :cond_1
    return-void
.end method

.method private notifyNotBad(J)V
    .locals 5
    .param p1, "responseTime"    # J

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/cybergarage/upnp/NetworkMonitor;->checkQueuesAvailable()V

    .line 134
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "offerResult":Z
    if-eqz v0, :cond_0

    const-wide/16 v2, 0xc8

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 139
    sget-object v1, Lorg/cybergarage/upnp/NETWORK_STATUS;->OK:Lorg/cybergarage/upnp/NETWORK_STATUS;

    invoke-direct {p0, v1, p1, p2}, Lorg/cybergarage/upnp/NetworkMonitor;->setStatus(Lorg/cybergarage/upnp/NETWORK_STATUS;J)V

    .line 141
    :cond_1
    return-void
.end method

.method private notifyOther(J)V
    .locals 0
    .param p1, "responseTime"    # J

    .prologue
    .line 159
    return-void
.end method

.method private setStatus(Lorg/cybergarage/upnp/NETWORK_STATUS;J)V
    .locals 3
    .param p1, "status"    # Lorg/cybergarage/upnp/NETWORK_STATUS;
    .param p2, "responseTime"    # J

    .prologue
    .line 164
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

    if-ne p1, v1, :cond_1

    .line 178
    :cond_0
    return-void

    .line 169
    :cond_1
    iput-object p1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

    .line 171
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/NetworkStatusListener;

    .line 175
    .local v0, "listener":Lorg/cybergarage/upnp/NetworkStatusListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/NetworkStatusListener;->OnNetworkStatusChanged(Lorg/cybergarage/upnp/NETWORK_STATUS;)V

    goto :goto_0
.end method


# virtual methods
.method public addNetworkStatusListener(Lorg/cybergarage/upnp/NetworkStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/NetworkStatusListener;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getLastResponseTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mLastResponseTime:J

    return-wide v0
.end method

.method public getNetworkStatus()Lorg/cybergarage/upnp/NETWORK_STATUS;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNetStatus:Lorg/cybergarage/upnp/NETWORK_STATUS;

    return-object v0
.end method

.method notifyResponseTime(J)V
    .locals 5
    .param p1, "responseTime"    # J

    .prologue
    .line 103
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 108
    :cond_0
    iput-wide p1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mLastResponseTime:J

    .line 110
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    :cond_1
    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyNotBad(J)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/NetworkStatusListener;

    .line 114
    .local v0, "listener":Lorg/cybergarage/upnp/NetworkStatusListener;
    invoke-interface {v0, p1, p2}, Lorg/cybergarage/upnp/NetworkStatusListener;->OnResponseTimeGot(J)V

    goto :goto_1

    .line 121
    .end local v0    # "listener":Lorg/cybergarage/upnp/NetworkStatusListener;
    :cond_3
    const-wide/16 v2, 0x7d0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_4

    .line 123
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyBad(J)V

    goto :goto_0

    .line 126
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyOther(J)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 81
    iput-object v2, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 87
    iput-object v2, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mNotBadQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 93
    iput-object v2, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    .line 96
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mLastResponseTime:J

    .line 98
    sput-object v2, Lorg/cybergarage/upnp/NetworkMonitor;->sInstance:Lorg/cybergarage/upnp/NetworkMonitor;

    .line 99
    return-void
.end method

.method public removeNetworkStatusListener(Lorg/cybergarage/upnp/NetworkStatusListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/NetworkStatusListener;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/NetworkMonitor;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
