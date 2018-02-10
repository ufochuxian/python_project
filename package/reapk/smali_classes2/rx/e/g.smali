.class public Lrx/e/g;
.super Lrx/l;
.source "SourceFile"


# annotations
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
.field private final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/e/g;, "Lrx/e/g<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/e/g;-><init>(Lrx/l;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lrx/l;Z)V
    .locals 1
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/e/g;, "Lrx/e/g<TT;>;"
    .local p1, "s":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/l;-><init>(Lrx/l;Z)V

    .line 54
    new-instance v0, Lrx/e/f;

    invoke-direct {v0, p1}, Lrx/e/f;-><init>(Lrx/f;)V

    iput-object v0, p0, Lrx/e/g;->a:Lrx/f;

    .line 55
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lrx/e/g;, "Lrx/e/g<TT;>;"
    iget-object v0, p0, Lrx/e/g;->a:Lrx/f;

    invoke-interface {v0}, Lrx/f;->onCompleted()V

    .line 65
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lrx/e/g;, "Lrx/e/g<TT;>;"
    iget-object v0, p0, Lrx/e/g;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    .line 79
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
    .line 94
    .local p0, "this":Lrx/e/g;, "Lrx/e/g<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/e/g;->a:Lrx/f;

    invoke-interface {v0, p1}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
