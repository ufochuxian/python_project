.class public final Lrx/internal/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V
    .locals 0
    .param p3, "onCompleted"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/util/b;, "Lrx/internal/util/b<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/util/b;->a:Lrx/c/c;

    .line 33
    iput-object p2, p0, Lrx/internal/util/b;->b:Lrx/c/c;

    .line 34
    iput-object p3, p0, Lrx/internal/util/b;->c:Lrx/c/b;

    .line 35
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/util/b;, "Lrx/internal/util/b<TT;>;"
    iget-object v0, p0, Lrx/internal/util/b;->c:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 50
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/util/b;, "Lrx/internal/util/b<TT;>;"
    iget-object v0, p0, Lrx/internal/util/b;->b:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 45
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
    .line 39
    .local p0, "this":Lrx/internal/util/b;, "Lrx/internal/util/b<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/util/b;->a:Lrx/c/c;

    invoke-interface {v0, p1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method
