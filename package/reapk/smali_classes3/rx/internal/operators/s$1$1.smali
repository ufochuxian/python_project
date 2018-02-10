.class Lrx/internal/operators/s$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/s$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/s$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/s$1;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    iget-object v0, v0, Lrx/internal/operators/s$1;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 79
    iget-object v0, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    iget-object v0, v0, Lrx/internal/operators/s$1;->c:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    iget-object v0, v0, Lrx/internal/operators/s$1;->b:Lrx/i/b;

    invoke-virtual {v0}, Lrx/i/b;->unsubscribe()V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    iget-object v0, v0, Lrx/internal/operators/s$1;->c:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 67
    iget-object v0, p0, Lrx/internal/operators/s$1$1;->a:Lrx/internal/operators/s$1;

    iget-object v0, v0, Lrx/internal/operators/s$1;->b:Lrx/i/b;

    invoke-virtual {v0, p1}, Lrx/i/b;->a(Lrx/m;)V

    .line 68
    return-void
.end method
