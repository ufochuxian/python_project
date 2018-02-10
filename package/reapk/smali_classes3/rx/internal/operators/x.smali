.class public final Lrx/internal/operators/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<TR;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/d",
            "<TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/o;Lrx/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/o",
            "<TR;>;",
            "Lrx/c/d",
            "<TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/x;, "Lrx/internal/operators/x<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "collectionFactory":Lrx/c/o;, "Lrx/c/o<TR;>;"
    .local p3, "collector":Lrx/c/d;, "Lrx/c/d<TR;-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/x;->a:Lrx/e;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/x;->b:Lrx/c/o;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/x;->c:Lrx/c/d;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/x;, "Lrx/internal/operators/x<TT;TR;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TR;>;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/x;->b:Lrx/c/o;

    invoke-interface {v2}, Lrx/c/o;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "initialValue":Ljava/lang/Object;, "TR;"
    new-instance v2, Lrx/internal/operators/x$a;

    iget-object v3, p0, Lrx/internal/operators/x;->c:Lrx/c/d;

    invoke-direct {v2, p1, v1, v3}, Lrx/internal/operators/x$a;-><init>(Lrx/l;Ljava/lang/Object;Lrx/c/d;)V

    iget-object v3, p0, Lrx/internal/operators/x;->a:Lrx/e;

    invoke-virtual {v2, v3}, Lrx/internal/operators/x$a;->a(Lrx/e;)V

    .line 51
    .end local v1    # "initialValue":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p1, v0}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/x;, "Lrx/internal/operators/x<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/x;->a(Lrx/l;)V

    return-void
.end method
