.class public final Lrx/internal/operators/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ew$a;
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
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/b;


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/b;)V
    .locals 0
    .param p2, "other"    # Lrx/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/ew;, "Lrx/internal/operators/ew<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/ew;->a:Lrx/i$a;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/ew;->b:Lrx/b;

    .line 40
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
    .line 44
    .local p0, "this":Lrx/internal/operators/ew;, "Lrx/internal/operators/ew<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/ew$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/ew$a;-><init>(Lrx/k;)V

    .line 45
    .local v0, "parent":Lrx/internal/operators/ew$a;, "Lrx/internal/operators/ew$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 47
    iget-object v1, p0, Lrx/internal/operators/ew;->b:Lrx/b;

    invoke-virtual {v1, v0}, Lrx/b;->b(Lrx/d;)V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/ew;->a:Lrx/i$a;

    invoke-interface {v1, v0}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/ew;, "Lrx/internal/operators/ew<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ew;->a(Lrx/k;)V

    return-void
.end method
