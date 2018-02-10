.class public final Lrx/internal/operators/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/k$a;
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<",
            "Lrx/b;",
            ">;"
        }
    .end annotation
.end field

.field final b:I


# direct methods
.method public constructor <init>(Lrx/e;I)V
    .locals 0
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/k;->a:Lrx/e;

    .line 35
    iput p2, p0, Lrx/internal/operators/k;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/k$a;

    iget v1, p0, Lrx/internal/operators/k;->b:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/k$a;-><init>(Lrx/d;I)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/k$a;
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 42
    iget-object v1, p0, Lrx/internal/operators/k;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/k;->a(Lrx/d;)V

    return-void
.end method
