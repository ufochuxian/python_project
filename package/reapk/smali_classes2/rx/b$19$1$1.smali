.class Lrx/b$19$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$19$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b$19$1;


# direct methods
.method constructor <init>(Lrx/b$19$1;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lrx/b$19$1$1;->a:Lrx/b$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lrx/b$19$1$1;->a:Lrx/b$19$1;

    iget-object v0, v0, Lrx/b$19$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 1763
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1767
    iget-object v0, p0, Lrx/b$19$1$1;->a:Lrx/b$19$1;

    iget-object v0, v0, Lrx/b$19$1;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 1768
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1772
    iget-object v0, p0, Lrx/b$19$1$1;->a:Lrx/b$19$1;

    iget-object v0, v0, Lrx/b$19$1;->b:Lrx/i/e;

    invoke-virtual {v0, p1}, Lrx/i/e;->a(Lrx/m;)V

    .line 1773
    return-void
.end method
