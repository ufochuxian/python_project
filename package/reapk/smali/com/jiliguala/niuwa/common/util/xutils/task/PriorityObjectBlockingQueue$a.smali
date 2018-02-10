.class Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

.field private b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;)V
    .locals 1

    .prologue
    .line 535
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>.a;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 538
    :try_start_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 539
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 544
    return-void

    .line 542
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 543
    throw v0
.end method

.method private a(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;)",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>.a;"
    .local p1, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_0
    iget-object v0, p1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 553
    .local v0, "s":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    if-ne v0, p1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iget-object v0, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 556
    .end local v0    # "s":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :cond_0
    return-object v0

    .line 555
    .restart local v0    # "s":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 557
    move-object p1, v0

    .line 558
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 547
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>.a;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>.a;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-nez v1, :cond_0

    .line 565
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 573
    throw v1

    .line 566
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->d:Ljava/lang/Object;

    .line 567
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 568
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/task/a;)Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 569
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 570
    return-object v0

    .line 569
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->b()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 577
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue<TE;>.a;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    if-nez v3, :cond_0

    .line 578
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 579
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 582
    .local v0, "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->c:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .line 583
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    iget-object v2, v3, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v2, "trail":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    iget-object v1, v2, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;

    .local v1, "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 584
    if-ne v1, v0, :cond_2

    .line 585
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/jiliguala/niuwa/common/util/xutils/task/a;Lcom/jiliguala/niuwa/common/util/xutils/task/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 592
    return-void

    .line 583
    :cond_2
    move-object v2, v1

    :try_start_1
    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/xutils/task/a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    .end local v0    # "node":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v1    # "p":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    .end local v2    # "trail":Lcom/jiliguala/niuwa/common/util/xutils/task/a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/a<TE;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/util/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 591
    throw v3
.end method
