.class public final Lrx/internal/operators/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ey$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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

.field final b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/i",
            "<+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/ey;, "Lrx/internal/operators/ey<TT;TU;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    .local p2, "other":Lrx/i;, "Lrx/i<+TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/ey;->a:Lrx/i$a;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/ey;->b:Lrx/i;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lrx/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/ey;, "Lrx/internal/operators/ey<TT;TU;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/ey$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/ey$a;-><init>(Lrx/k;)V

    .line 46
    .local v0, "parent":Lrx/internal/operators/ey$a;, "Lrx/internal/operators/ey$a<TT;TU;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/ey;->b:Lrx/i;

    iget-object v2, v0, Lrx/internal/operators/ey$a;->c:Lrx/k;

    invoke-virtual {v1, v2}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 49
    iget-object v1, p0, Lrx/internal/operators/ey;->a:Lrx/i$a;

    invoke-interface {v1, v0}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/ey;, "Lrx/internal/operators/ey<TT;TU;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ey;->a(Lrx/k;)V

    return-void
.end method
