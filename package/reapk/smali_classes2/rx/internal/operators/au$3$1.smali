.class Lrx/internal/operators/au$3$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au$3;->a(Lrx/l;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/l;

.field final synthetic b:Lrx/internal/operators/au$3;


# direct methods
.method constructor <init>(Lrx/internal/operators/au$3;Lrx/l;Lrx/l;)V
    .locals 0

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    .local p2, "x0":Lrx/l;, "Lrx/l<*>;"
    iput-object p1, p0, Lrx/internal/operators/au$3$1;->b:Lrx/internal/operators/au$3;

    iput-object p3, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-direct {p0, p2}, Lrx/l;-><init>(Lrx/l;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/au$3$1;->b:Lrx/internal/operators/au$3;

    iget-object v0, v0, Lrx/internal/operators/au$3;->a:Lrx/internal/operators/au;

    iget-boolean v0, v0, Lrx/internal/operators/au;->b:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Lrx/Notification;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/internal/operators/au$3$1;->b:Lrx/internal/operators/au$3;

    iget-object v0, v0, Lrx/internal/operators/au$3;->a:Lrx/internal/operators/au;

    iget-boolean v0, v0, Lrx/internal/operators/au;->c:Z

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-virtual {p1}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    iget-object v0, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    iget-object v0, p0, Lrx/internal/operators/au$3$1;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/au$3$1;->a(Lrx/Notification;)V

    return-void
.end method

.method public setProducer(Lrx/g;)V
    .locals 2
    .param p1, "producer"    # Lrx/g;

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/au$3$1;, "Lrx/internal/operators/au$3.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/g;->request(J)V

    .line 309
    return-void
.end method
