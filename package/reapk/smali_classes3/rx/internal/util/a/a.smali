.class abstract Lrx/internal/util/a/a;
.super Lrx/internal/util/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/a/b",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/n;
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:J

.field m:J

.field n:J

.field o:J

.field p:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/util/a/a;, "Lrx/internal/util/a/a<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/a/a;, "Lrx/internal/util/a/a<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/a;->a()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    invoke-virtual {p0}, Lrx/internal/util/a/a;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/util/a/a;, "Lrx/internal/util/a/a<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 5

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/util/a/a;, "Lrx/internal/util/a/a<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/a;->a()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v0

    .line 104
    .local v0, "chaserNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/a/a;->c()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v2

    .line 105
    .local v2, "producerNode":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    const/4 v3, 0x0

    .line 107
    .local v3, "size":I
    :goto_0
    if-eq v0, v2, :cond_1

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v0}, Lrx/internal/util/atomic/LinkedQueueNode;->lvNext()Lrx/internal/util/atomic/LinkedQueueNode;

    move-result-object v1

    .local v1, "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    if-eqz v1, :cond_0

    .line 110
    move-object v0, v1

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    goto :goto_0

    .line 113
    .end local v1    # "next":Lrx/internal/util/atomic/LinkedQueueNode;, "Lrx/internal/util/atomic/LinkedQueueNode<TE;>;"
    :cond_1
    return v3
.end method
