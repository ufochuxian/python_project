.class final Lrx/internal/operators/w$a;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/w;
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
.field private final a:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/internal/operators/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/w$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(JLrx/l;Lrx/internal/operators/w$b;)V
    .locals 1
    .param p1, "requested"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/internal/operators/w$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    .local p3, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    .local p4, "selection":Lrx/internal/operators/w$b;, "Lrx/internal/operators/w$b<TT;>;"
    invoke-direct {p0}, Lrx/l;-><init>()V

    .line 285
    iput-object p3, p0, Lrx/internal/operators/w$a;->a:Lrx/l;

    .line 286
    iput-object p4, p0, Lrx/internal/operators/w$a;->b:Lrx/internal/operators/w$b;

    .line 288
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/w$a;->request(J)V

    .line 289
    return-void
.end method

.method private a(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/w$a;->request(J)V

    .line 293
    return-void
.end method

.method static synthetic a(Lrx/internal/operators/w$a;J)V
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/w$a;
    .param p1, "x1"    # J

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/w$a;->a(J)V

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    const/4 v0, 0x1

    .line 317
    iget-boolean v1, p0, Lrx/internal/operators/w$a;->c:Z

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return v0

    .line 320
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/w$a;->b:Lrx/internal/operators/w$b;

    invoke-virtual {v1}, Lrx/internal/operators/w$b;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 322
    iput-boolean v0, p0, Lrx/internal/operators/w$a;->c:Z

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/w$a;->b:Lrx/internal/operators/w$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lrx/internal/operators/w$b;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lrx/internal/operators/w$a;->b:Lrx/internal/operators/w$b;

    invoke-virtual {v1, p0}, Lrx/internal/operators/w$b;->unsubscribeOthers(Lrx/internal/operators/w$a;)V

    .line 327
    iput-boolean v0, p0, Lrx/internal/operators/w$a;->c:Z

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/w$a;->b:Lrx/internal/operators/w$b;

    invoke-virtual {v0}, Lrx/internal/operators/w$b;->unsubscribeLosers()V

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/w$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lrx/internal/operators/w$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 307
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/w$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lrx/internal/operators/w$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 314
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/w$a;, "Lrx/internal/operators/w$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lrx/internal/operators/w$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lrx/internal/operators/w$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 300
    :cond_0
    return-void
.end method
