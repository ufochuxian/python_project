.class final Lrx/e/h$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/e/h;->a(Lrx/f;)Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/f;


# direct methods
.method constructor <init>(Lrx/f;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lrx/e/h$1;->a:Lrx/f;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lrx/e/h$1;->a:Lrx/f;

    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lrx/e/h$1;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 61
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
    .line 65
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/e/h$1;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
