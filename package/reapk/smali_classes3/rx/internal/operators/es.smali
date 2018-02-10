.class public final Lrx/internal/operators/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/es$a;
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
        "Lrx/i$a",
        "<TR;>;"
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

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/es;, "Lrx/internal/operators/es<TT;TR;>;"
    .local p1, "source":Lrx/i;, "Lrx/i<TT;>;"
    .local p2, "transformer":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/es;->a:Lrx/i;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/es;->b:Lrx/c/p;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/es;, "Lrx/internal/operators/es<TT;TR;>;"
    .local p1, "o":Lrx/k;, "Lrx/k<-TR;>;"
    new-instance v0, Lrx/internal/operators/es$a;

    iget-object v1, p0, Lrx/internal/operators/es;->b:Lrx/c/p;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/es$a;-><init>(Lrx/k;Lrx/c/p;)V

    .line 44
    .local v0, "parent":Lrx/internal/operators/es$a;, "Lrx/internal/operators/es$a<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 45
    iget-object v1, p0, Lrx/internal/operators/es;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 46
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/es;, "Lrx/internal/operators/es<TT;TR;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/es;->a(Lrx/k;)V

    return-void
.end method
