.class public final Lrx/internal/operators/OnSubscribeAutoConnect;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final connection:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;"
        }
    .end annotation
.end field

.field final numberOfSubscribers:I

.field final source:Lrx/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/d/c;ILrx/c/c;)V
    .locals 2
    .param p2, "numberOfSubscribers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/c",
            "<+TT;>;I",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "source":Lrx/d/c;, "Lrx/d/c<+TT;>;"
    .local p3, "connection":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 43
    if-gtz p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfSubscribers > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Lrx/d/c;

    .line 47
    iput p2, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->numberOfSubscribers:I

    .line 48
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->connection:Lrx/c/c;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeAutoConnect;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeAutoConnect;, "Lrx/internal/operators/OnSubscribeAutoConnect<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Lrx/d/c;

    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d/c;->a(Lrx/l;)Lrx/m;

    .line 54
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeAutoConnect;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->numberOfSubscribers:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->source:Lrx/d/c;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAutoConnect;->connection:Lrx/c/c;

    invoke-virtual {v0, v1}, Lrx/d/c;->h(Lrx/c/c;)V

    .line 57
    :cond_0
    return-void
.end method
