.class public final Lrx/internal/operators/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ap$a;
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
        "Lrx/e$a",
        "<TR;>;"
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

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/ap;, "Lrx/internal/operators/ap<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "transformer":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/internal/operators/ap;->a:Lrx/e;

    .line 41
    iput-object p2, p0, Lrx/internal/operators/ap;->b:Lrx/c/p;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/ap;, "Lrx/internal/operators/ap<TT;TR;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-TR;>;"
    new-instance v0, Lrx/internal/operators/ap$a;

    iget-object v1, p0, Lrx/internal/operators/ap;->b:Lrx/c/p;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ap$a;-><init>(Lrx/l;Lrx/c/p;)V

    .line 47
    .local v0, "parent":Lrx/internal/operators/ap$a;, "Lrx/internal/operators/ap$a<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/ap;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 49
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/ap;, "Lrx/internal/operators/ap<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ap;->a(Lrx/l;)V

    return-void
.end method
