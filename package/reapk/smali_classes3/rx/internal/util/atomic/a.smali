.class abstract Lrx/internal/util/atomic/a;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 28
    invoke-static {p1}, Lrx/internal/util/a/p;->a(I)I

    move-result v0

    .line 29
    .local v0, "actualCapacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lrx/internal/util/atomic/a;->b:I

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lrx/internal/util/atomic/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(J)I
    .locals 3
    .param p1, "index"    # J

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    long-to-int v0, p1

    iget v1, p0, Lrx/internal/util/atomic/a;->b:I

    and-int/2addr v0, v1

    return v0
.end method

.method protected final a(JI)I
    .locals 1
    .param p1, "index"    # J
    .param p3, "mask"    # I

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    long-to-int v0, p1

    and-int/2addr v0, p3

    return v0
.end method

.method protected final a(I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;I)TE;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/atomic/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;ITE;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method protected final b(I)Ljava/lang/Object;
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    iget-object v0, p0, Lrx/internal/util/atomic/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, v0, p1}, Lrx/internal/util/atomic/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 1
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;I)TE;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b(ILjava/lang/Object;)V
    .locals 1
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/util/atomic/a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected final b(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;ITE;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected final c(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;ITE;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    .local p1, "buffer":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/internal/util/atomic/a;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lrx/internal/util/atomic/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/util/atomic/a;, "Lrx/internal/util/atomic/a<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
