.class final Lrx/internal/operators/z$b;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/z$c",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field b:J


# direct methods
.method public constructor <init>(Lrx/internal/operators/z$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/z$c",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/z$b;, "Lrx/internal/operators/z$b<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/z$c;, "Lrx/internal/operators/z$c<TT;TR;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 324
    iput-object p1, p0, Lrx/internal/operators/z$b;->a:Lrx/internal/operators/z$c;

    .line 325
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 345
    .local p0, "this":Lrx/internal/operators/z$b;, "Lrx/internal/operators/z$b<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/z$b;->a:Lrx/internal/operators/z$c;

    iget-wide v2, p0, Lrx/internal/operators/z$b;->b:J

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/z$c;->b(J)V

    .line 346
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 340
    .local p0, "this":Lrx/internal/operators/z$b;, "Lrx/internal/operators/z$b<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/z$b;->a:Lrx/internal/operators/z$c;

    iget-wide v2, p0, Lrx/internal/operators/z$b;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lrx/internal/operators/z$c;->a(Ljava/lang/Throwable;J)V

    .line 341
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lrx/internal/operators/z$b;, "Lrx/internal/operators/z$b<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-wide v0, p0, Lrx/internal/operators/z$b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/z$b;->b:J

    .line 335
    iget-object v0, p0, Lrx/internal/operators/z$b;->a:Lrx/internal/operators/z$c;

    invoke-virtual {v0, p1}, Lrx/internal/operators/z$c;->a(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 1
    .param p1, "p"    # Lrx/g;

    .prologue
    .line 329
    .local p0, "this":Lrx/internal/operators/z$b;, "Lrx/internal/operators/z$b<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/z$b;->a:Lrx/internal/operators/z$c;

    iget-object v0, v0, Lrx/internal/operators/z$c;->d:Lrx/internal/producers/a;

    invoke-virtual {v0, p1}, Lrx/internal/producers/a;->a(Lrx/g;)V

    .line 330
    return-void
.end method
