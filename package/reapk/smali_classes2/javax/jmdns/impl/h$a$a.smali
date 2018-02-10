.class public Ljavax/jmdns/impl/h$a$a;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isDaemon"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z

    .line 191
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isDaemon"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1}, Ljava/util/Timer;-><init>(Z)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z

    .line 182
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z

    .line 209
    invoke-super {p0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;J)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;JJ)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_1
    invoke-super/range {p0 .. p5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;
    .param p2, "firstTime"    # Ljava/util/Date;
    .param p3, "period"    # J

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/jmdns/impl/h$a$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
