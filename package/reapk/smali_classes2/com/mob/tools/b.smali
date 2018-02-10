.class public Lcom/mob/tools/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/b;->b:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/b;->a:I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/b;->b:I

    .line 22
    iput p1, p0, Lcom/mob/tools/b;->a:I

    .line 23
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/mob/tools/b;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 58
    :cond_0
    monitor-enter p0

    .line 59
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/b;->c:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    goto :goto_1

    .line 65
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/mob/tools/b;->c:Landroid/os/Looper;

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v0

    .line 77
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/mob/tools/b;->b:I

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/b;->b:I

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/b;->c:Landroid/os/Looper;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget v0, p0, Lcom/mob/tools/b;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    invoke-virtual {p0}, Lcom/mob/tools/b;->a()V

    .line 42
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/mob/tools/b;->b:I

    .line 44
    return-void

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
