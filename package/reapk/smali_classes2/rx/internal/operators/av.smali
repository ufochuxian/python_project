.class public final Lrx/internal/operators/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/av$a;
    }
.end annotation

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
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/q",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/av;, "Lrx/internal/operators/av<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "reducer":Lrx/c/q;, "Lrx/c/q<TT;TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/av;->a:Lrx/e;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/av;->b:Lrx/c/q;

    .line 36
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
    .line 40
    .local p0, "this":Lrx/internal/operators/av;, "Lrx/internal/operators/av<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/av$a;

    iget-object v1, p0, Lrx/internal/operators/av;->b:Lrx/c/q;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/av$a;-><init>(Lrx/l;Lrx/c/q;)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/av$a;, "Lrx/internal/operators/av$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 42
    new-instance v1, Lrx/internal/operators/av$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/av$1;-><init>(Lrx/internal/operators/av;Lrx/internal/operators/av$a;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/av;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 49
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/av;, "Lrx/internal/operators/av<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/av;->a(Lrx/l;)V

    return-void
.end method
