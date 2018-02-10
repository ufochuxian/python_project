.class public Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private mEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSending:Z


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mSending:Z

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->restoreEvents()V

    .line 36
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->trySendEvents()V

    .line 37
    return-void
.end method

.method private canSendEvents()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 58
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 59
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private restoreEvents()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "iG"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "eventString":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->unstringify(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void
.end method

.method private saveEvents()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "iG"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;->stringify(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method private sendEventNow(Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    .prologue
    .line 126
    return-void
.end method


# virtual methods
.method public isSending()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mSending:Z

    return v0
.end method

.method public sendEvent(Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    .prologue
    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/helpers/FlavorHelper;->isTelemetryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->trySendEvents()V

    goto :goto_0
.end method

.method public setSending(Z)V
    .locals 0
    .param p1, "sending"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mSending:Z

    .line 144
    return-void
.end method

.method public trySendEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->isSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->setSending(Z)V

    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->saveEvents()V

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->canSendEvents()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->mEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;

    .line 80
    .local v0, "event":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->sendEventNow(Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;)V

    .line 89
    .end local v0    # "event":Lcom/jiliguala/niuwa/module/story/data/telemetry/TelemetryEvent;
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->setSending(Z)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/story/data/TelemetryManager;->setSending(Z)V

    goto :goto_0
.end method
