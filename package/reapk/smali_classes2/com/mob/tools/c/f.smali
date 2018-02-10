.class public Lcom/mob/tools/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/FileOutputStream;

.field private b:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "onLock"    # Ljava/lang/Runnable;
    .param p2, "block"    # Z

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mob/tools/c/f;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 40
    :try_start_2
    iget-object v1, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 41
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized a(Z)Z
    .locals 3
    .param p1, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 59
    :cond_1
    if-eqz p1, :cond_3

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    .line 67
    :try_start_5
    iget-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    :goto_2
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, p0, Lcom/mob/tools/c/f;->b:Ljava/nio/channels/FileLock;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 54
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 68
    .restart local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mob/tools/c/f;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    iget-object v0, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/c/f;->a:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
