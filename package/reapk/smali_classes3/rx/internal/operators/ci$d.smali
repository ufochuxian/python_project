.class final Lrx/internal/operators/ci$d;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/g;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10da57706b0ad46fL


# instance fields
.field final a:Lrx/internal/operators/ci$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/ci$e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/ci$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/ci$e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/ci$d;, "Lrx/internal/operators/ci$d<TT;>;"
    .local p1, "subscriber":Lrx/internal/operators/ci$e;, "Lrx/internal/operators/ci$e<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 123
    iput-object p1, p0, Lrx/internal/operators/ci$d;->a:Lrx/internal/operators/ci$e;

    .line 124
    return-void
.end method


# virtual methods
.method public produced(I)J
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/ci$d;, "Lrx/internal/operators/ci$d<TT;>;"
    neg-int v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/ci$d;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/ci$d;, "Lrx/internal/operators/ci$d<TT;>;"
    const-wide/16 v2, 0x0

    .line 128
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lrx/internal/operators/ci$d;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {p0, p1, p2}, Lrx/internal/operators/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 133
    iget-object v0, p0, Lrx/internal/operators/ci$d;->a:Lrx/internal/operators/ci$e;

    invoke-virtual {v0}, Lrx/internal/operators/ci$e;->d()V

    goto :goto_0

    .line 135
    :cond_2
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
