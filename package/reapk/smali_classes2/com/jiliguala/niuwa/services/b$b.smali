.class Lcom/jiliguala/niuwa/services/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/services/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/services/b;

.field private final b:[B

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/jiliguala/niuwa/services/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/services/b;)V
    .locals 1

    .prologue
    .line 437
    iput-object p1, p0, Lcom/jiliguala/niuwa/services/b$b;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    .line 439
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    .line 440
    return-void
.end method


# virtual methods
.method public a()Lcom/jiliguala/niuwa/services/c;
    .locals 8

    .prologue
    .line 449
    iget-object v5, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v5

    .line 450
    const/4 v3, 0x0

    .line 451
    .local v3, "task":Lcom/jiliguala/niuwa/services/c;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b$b;->a:Lcom/jiliguala/niuwa/services/b;

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/b;->c(Lcom/jiliguala/niuwa/services/b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/jiliguala/niuwa/services/c;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 453
    :cond_0
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 458
    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3
.end method

.method public a(I)Lcom/jiliguala/niuwa/services/c;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 463
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v1

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/services/b$b;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 465
    const/4 v0, 0x0

    monitor-exit v1

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/services/c;

    monitor-exit v1

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/jiliguala/niuwa/services/c;)V
    .locals 2
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 443
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 445
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 472
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 479
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/services/b$b;->a(I)Lcom/jiliguala/niuwa/services/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/jiliguala/niuwa/services/c;)Z
    .locals 2
    .param p1, "task"    # Lcom/jiliguala/niuwa/services/c;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$b;->b:[B

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/services/b$b;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
