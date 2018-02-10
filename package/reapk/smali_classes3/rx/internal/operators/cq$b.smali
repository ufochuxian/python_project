.class final Lrx/internal/operators/cq$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final g:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final a:Lrx/internal/operators/cq$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cq$e",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Object;

.field final d:Ljava/util/concurrent/atomic/AtomicLong;

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>(Lrx/internal/operators/cq$e;Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cq$e",
            "<TT;>;",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    .local p1, "parent":Lrx/internal/operators/cq$e;, "Lrx/internal/operators/cq$e<TT;>;"
    .local p2, "child":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 667
    iput-object p1, p0, Lrx/internal/operators/cq$b;->a:Lrx/internal/operators/cq$e;

    .line 668
    iput-object p2, p0, Lrx/internal/operators/cq$b;->b:Lrx/l;

    .line 669
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 670
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/cq$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method a(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 721
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 722
    .local v0, "r":J
    add-long v2, v0, p1

    .line 723
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 724
    const-wide v2, 0x7fffffffffffffffL

    .line 726
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/cq$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 766
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 739
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 740
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v0

    .line 746
    .local v0, "r":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    .line 758
    :goto_0
    return-wide v2

    .line 750
    :cond_1
    sub-long v2, v0, p1

    .line 752
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 753
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 756
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/cq$b;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const-wide/16 v6, 0x0

    .line 675
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v0

    .line 685
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 689
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 693
    :cond_2
    add-long v2, v0, p1

    .line 695
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 697
    const-wide v2, 0x7fffffffffffffffL

    .line 700
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/cq$b;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 702
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/cq$b;->a(J)V

    .line 705
    iget-object v4, p0, Lrx/internal/operators/cq$b;->a:Lrx/internal/operators/cq$e;

    invoke-virtual {v4, p0}, Lrx/internal/operators/cq$e;->c(Lrx/internal/operators/cq$b;)V

    .line 707
    iget-object v4, p0, Lrx/internal/operators/cq$b;->a:Lrx/internal/operators/cq$e;

    iget-object v4, v4, Lrx/internal/operators/cq$e;->a:Lrx/internal/operators/cq$d;

    invoke-interface {v4, p0}, Lrx/internal/operators/cq$d;->replay(Lrx/internal/operators/cq$b;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/cq$b;, "Lrx/internal/operators/cq$b<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 770
    invoke-virtual {p0}, Lrx/internal/operators/cq$b;->get()J

    move-result-wide v0

    .line 772
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/cq$b;->getAndSet(J)J

    move-result-wide v0

    .line 779
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lrx/internal/operators/cq$b;->a:Lrx/internal/operators/cq$e;

    invoke-virtual {v2, p0}, Lrx/internal/operators/cq$e;->b(Lrx/internal/operators/cq$b;)V

    .line 786
    iget-object v2, p0, Lrx/internal/operators/cq$b;->a:Lrx/internal/operators/cq$e;

    invoke-virtual {v2, p0}, Lrx/internal/operators/cq$e;->c(Lrx/internal/operators/cq$b;)V

    .line 788
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/cq$b;->b:Lrx/l;

    .line 791
    :cond_0
    return-void
.end method
