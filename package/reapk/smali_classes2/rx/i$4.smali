.class Lrx/i$4;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i;->a(Lrx/f;)Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/f;

.field final synthetic b:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/f;)V
    .locals 0

    .prologue
    .line 1767
    .local p0, "this":Lrx/i$4;, "Lrx/i.4;"
    iput-object p1, p0, Lrx/i$4;->b:Lrx/i;

    iput-object p2, p0, Lrx/i$4;->a:Lrx/f;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1770
    .local p0, "this":Lrx/i$4;, "Lrx/i.4;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/i$4;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 1771
    iget-object v0, p0, Lrx/i$4;->a:Lrx/f;

    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 1772
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1775
    .local p0, "this":Lrx/i$4;, "Lrx/i.4;"
    iget-object v0, p0, Lrx/i$4;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 1776
    return-void
.end method
