.class final Lrx/internal/operators/cb$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/internal/operators/cb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/cb$c",
            "<*TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z

.field d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lrx/internal/operators/cb$c;I)V
    .locals 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/cb$c",
            "<*TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TT;>;"
    .local p1, "parent":Lrx/internal/operators/cb$c;, "Lrx/internal/operators/cb$c<*TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 285
    iput-object p1, p0, Lrx/internal/operators/cb$a;->a:Lrx/internal/operators/cb$c;

    .line 287
    invoke-static {}, Lrx/internal/util/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    new-instance v0, Lrx/internal/util/a/z;

    invoke-direct {v0, p2}, Lrx/internal/util/a/z;-><init>(I)V

    .line 292
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lrx/internal/operators/cb$a;->b:Ljava/util/Queue;

    .line 293
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/cb$a;->request(J)V

    .line 294
    return-void

    .line 290
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lrx/internal/util/atomic/d;

    invoke-direct {v0, p2}, Lrx/internal/util/atomic/d;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 316
    .local p0, "this":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/cb$a;->request(J)V

    .line 317
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cb$a;->c:Z

    .line 312
    iget-object v0, p0, Lrx/internal/operators/cb$a;->a:Lrx/internal/operators/cb$c;

    invoke-virtual {v0}, Lrx/internal/operators/cb$c;->c()V

    .line 313
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/cb$a;->d:Ljava/lang/Throwable;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/cb$a;->c:Z

    .line 306
    iget-object v0, p0, Lrx/internal/operators/cb$a;->a:Lrx/internal/operators/cb$c;

    invoke-virtual {v0}, Lrx/internal/operators/cb$c;->c()V

    .line 307
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/cb$a;, "Lrx/internal/operators/cb$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cb$a;->b:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lrx/internal/operators/cb$a;->a:Lrx/internal/operators/cb$c;

    invoke-virtual {v0}, Lrx/internal/operators/cb$c;->c()V

    .line 300
    return-void
.end method
