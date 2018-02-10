.class public final Lrx/internal/operators/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/dl;, "Lrx/internal/operators/dl<TT;>;"
    .local p1, "stopPredicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/dl;->a:Lrx/c/p;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/dl;, "Lrx/internal/operators/dl<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/dl$a;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/dl$a;-><init>(Lrx/internal/operators/dl;Lrx/l;)V

    .line 39
    .local v0, "parent":Lrx/internal/operators/dl$a;, "Lrx/internal/operators/dl<TT;>.a;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 40
    new-instance v1, Lrx/internal/operators/dl$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/dl$1;-><init>(Lrx/internal/operators/dl;Lrx/internal/operators/dl$a;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 47
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/dl;, "Lrx/internal/operators/dl<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dl;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
