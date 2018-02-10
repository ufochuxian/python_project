.class public final Lrx/internal/operators/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/i$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/c/b;)V
    .locals 0
    .param p2, "onUnsubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/ej;, "Lrx/internal/operators/ej<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/ej;->a:Lrx/i$a;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/ej;->b:Lrx/c/b;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/ej;, "Lrx/internal/operators/ej<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ej;->b:Lrx/c/b;

    invoke-static {v0}, Lrx/i/f;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 42
    iget-object v0, p0, Lrx/internal/operators/ej;->a:Lrx/i$a;

    invoke-interface {v0, p1}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ej;, "Lrx/internal/operators/ej<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ej;->a(Lrx/k;)V

    return-void
.end method
