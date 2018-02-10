.class public final Lrx/internal/operators/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/bn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TOpening:",
        "Ljava/lang/Object;",
        "TClosing:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TTOpening;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TTOpening;+",
            "Lrx/e",
            "<+TTClosing;>;>;"
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
            "<+TTOpening;>;",
            "Lrx/c/p",
            "<-TTOpening;+",
            "Lrx/e",
            "<+TTClosing;>;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/bn;, "Lrx/internal/operators/bn<TT;TTOpening;TTClosing;>;"
    .local p1, "bufferOpenings":Lrx/e;, "Lrx/e<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lrx/c/p;, "Lrx/c/p<-TTOpening;+Lrx/e<+TTClosing;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lrx/internal/operators/bn;->a:Lrx/e;

    .line 64
    iput-object p2, p0, Lrx/internal/operators/bn;->b:Lrx/c/p;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/bn;, "Lrx/internal/operators/bn<TT;TTOpening;TTClosing;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Ljava/util/List<TT;>;>;"
    new-instance v1, Lrx/internal/operators/bn$a;

    new-instance v2, Lrx/e/g;

    invoke-direct {v2, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/bn$a;-><init>(Lrx/internal/operators/bn;Lrx/l;)V

    .line 72
    .local v1, "s":Lrx/internal/operators/bn$a;, "Lrx/internal/operators/bn<TT;TTOpening;TTClosing;>.a;"
    new-instance v0, Lrx/internal/operators/bn$1;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/bn$1;-><init>(Lrx/internal/operators/bn;Lrx/internal/operators/bn$a;)V

    .line 90
    .local v0, "openSubscriber":Lrx/l;, "Lrx/l<TTOpening;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 91
    invoke-virtual {p1, v1}, Lrx/l;->add(Lrx/m;)V

    .line 93
    iget-object v2, p0, Lrx/internal/operators/bn;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 95
    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/bn;, "Lrx/internal/operators/bn<TT;TTOpening;TTClosing;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/bn;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
