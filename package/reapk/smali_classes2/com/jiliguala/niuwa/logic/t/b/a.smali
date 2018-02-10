.class public Lcom/jiliguala/niuwa/logic/t/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "DOWNLOAD_LOCKER"

.field private static c:Lcom/jiliguala/niuwa/logic/t/b/a;


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/jiliguala/niuwa/logic/t/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/t/b/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/t/b/a;->c:Lcom/jiliguala/niuwa/logic/t/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/t/b/a;->b:Ljava/util/Map;

    .line 22
    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/logic/t/b/a;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/jiliguala/niuwa/logic/t/b/a;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/t/b/a;->c:Lcom/jiliguala/niuwa/logic/t/b/a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/logic/t/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/t/b/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/t/b/a;->c:Lcom/jiliguala/niuwa/logic/t/b/a;

    .line 29
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/t/b/a;->c:Lcom/jiliguala/niuwa/logic/t/b/a;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 34
    const-class v2, Lcom/jiliguala/niuwa/logic/t/b/a;

    monitor-enter v2

    .line 35
    :try_start_0
    const-string v1, "DOWNLOAD_LOCKER"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "gain":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/b/a;->b:Ljava/util/Map;

    const-string v3, "DOWNLOAD_LOCKER"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v2

    .line 38
    return-void

    .line 37
    .end local v0    # "gain":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "gain":Z
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/b/a;->b:Ljava/util/Map;

    const-string v2, "DOWNLOAD_LOCKER"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/t/b/a;->b:Ljava/util/Map;

    const-string v2, "DOWNLOAD_LOCKER"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 52
    :cond_0
    const-string v1, "DOWNLOAD_LOCKER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/t/b/a;->b:Ljava/util/Map;

    const-string v1, "DOWNLOAD_LOCKER"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "DOWNLOAD_LOCKER"

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method
