.class public final Lrx/internal/operators/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/j$a;
    }
.end annotation


# instance fields
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Lrx/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "producer":Lrx/c/c;, "Lrx/c/c<Lrx/c;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/j;->a:Lrx/c/c;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "t"    # Lrx/d;

    .prologue
    .line 39
    new-instance v0, Lrx/internal/operators/j$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/j$a;-><init>(Lrx/d;)V

    .line 40
    .local v0, "emitter":Lrx/internal/operators/j$a;
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 43
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/j;->a:Lrx/c/c;

    invoke-interface {v2, v0}, Lrx/c/c;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {v0, v1}, Lrx/internal/operators/j$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/j;->a(Lrx/d;)V

    return-void
.end method
