.class public final Lrx/internal/operators/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/eg$a;
    }
.end annotation

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
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/i;Lrx/c/b;)V
    .locals 0
    .param p2, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/eg;, "Lrx/internal/operators/eg<TT;>;"
    .local p1, "source":Lrx/i;, "Lrx/i<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/eg;->a:Lrx/i;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/eg;->b:Lrx/c/b;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/eg;, "Lrx/internal/operators/eg<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/eg$a;

    iget-object v1, p0, Lrx/internal/operators/eg;->b:Lrx/c/b;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/eg$a;-><init>(Lrx/k;Lrx/c/b;)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/eg$a;, "Lrx/internal/operators/eg$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 42
    iget-object v1, p0, Lrx/internal/operators/eg;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 43
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/eg;, "Lrx/internal/operators/eg<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/eg;->a(Lrx/k;)V

    return-void
.end method
