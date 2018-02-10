.class public final Lrx/internal/operators/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b$a;"
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
            "<-TT;+",
            "Lrx/b;",
            ">;"
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
            "<-TT;+",
            "Lrx/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/i;, "Lrx/internal/operators/i<TT;>;"
    .local p1, "source":Lrx/i;, "Lrx/i<TT;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/i;->a:Lrx/i;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/i;->b:Lrx/c/p;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "t"    # Lrx/d;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/i;, "Lrx/internal/operators/i<TT;>;"
    new-instance v0, Lrx/internal/operators/i$a;

    iget-object v1, p0, Lrx/internal/operators/i;->b:Lrx/c/p;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/i$a;-><init>(Lrx/d;Lrx/c/p;)V

    .line 42
    .local v0, "parent":Lrx/internal/operators/i$a;, "Lrx/internal/operators/i$a<TT;>;"
    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 43
    iget-object v1, p0, Lrx/internal/operators/i;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 44
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/i;, "Lrx/internal/operators/i<TT;>;"
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/i;->a(Lrx/d;)V

    return-void
.end method
