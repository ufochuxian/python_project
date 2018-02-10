.class public final Lcom/jiliguala/niuwa/logic/downloader/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/jiliguala/niuwa/logic/downloader/a/a;


# instance fields
.field private b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

.field private c:Lcom/jiliguala/niuwa/logic/downloader/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-direct {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/downloader/a/a;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/jiliguala/niuwa/logic/downloader/a/a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/downloader/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    .line 39
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->a:Lcom/jiliguala/niuwa/logic/downloader/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a()V

    .line 140
    return-void
.end method

.method public declared-synchronized a(Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/TaskInfo;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->b:Lcom/jiliguala/niuwa/logic/downloader/b/b;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/b;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->b(Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/downloader/entities/DLInfo;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/downloader/entities/ThreadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/downloader/a/a;->c:Lcom/jiliguala/niuwa/logic/downloader/b/c;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/logic/downloader/b/c;->d(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
