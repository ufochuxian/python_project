.class public final Lrx/internal/operators/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
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


# direct methods
.method public constructor <init>(Lrx/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/fa;, "Lrx/internal/operators/fa<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/fa;->a:Lrx/i$a;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/fa;, "Lrx/internal/operators/fa<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/eo$a;

    invoke-direct {v0, p1}, Lrx/internal/operators/eo$a;-><init>(Lrx/l;)V

    .line 38
    .local v0, "parent":Lrx/internal/operators/eo$a;, "Lrx/internal/operators/eo$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 39
    iget-object v1, p0, Lrx/internal/operators/fa;->a:Lrx/i$a;

    invoke-interface {v1, v0}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/fa;, "Lrx/internal/operators/fa<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/fa;->a(Lrx/l;)V

    return-void
.end method
