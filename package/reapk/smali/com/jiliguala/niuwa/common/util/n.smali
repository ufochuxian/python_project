.class public Lcom/jiliguala/niuwa/common/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/jiliguala/niuwa/common/util/n;


# instance fields
.field public a:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/jiliguala/niuwa/common/util/n;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/jiliguala/niuwa/common/util/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/n;->b:Lcom/jiliguala/niuwa/common/util/n;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/jiliguala/niuwa/common/util/n;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/n;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/n;->b:Lcom/jiliguala/niuwa/common/util/n;

    .line 24
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/util/n;->b:Lcom/jiliguala/niuwa/common/util/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mask01"

    const-string v2, "PREFS_GUIDE_MASK"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PREFS_HAS_COMPLETE_SHOW_GUIDE"

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 32
    const-string v0, "PREFS_BABY_HOME_GUIDE_MASK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "PREFS_SONG_GUDIE_MASK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    const-string v1, "PREFS_SONG_GUDIE_MASK"

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 44
    const-string v0, "PREFS_PARENT_HOME_GUIDE_MASK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 48
    const-string v0, "PREFS_BABY_LESSON_GUIDE_MASK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 52
    const-string v0, "PREFS_PARENT_LESSON_GUIDE_MASK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "PREFS_GUIDE_MASK"

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method
