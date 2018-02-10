.class public final Lrx/internal/operators/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cg$b;,
        Lrx/internal/operators/cg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/e",
        "<+TR;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/cg;, "Lrx/internal/operators/cg<TT;TU;TR;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TU;>;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/cg;->a:Lrx/c/p;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/cg;->b:Lrx/c/q;

    .line 62
    return-void
.end method

.method public static a(Lrx/c/p;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;)",
            "Lrx/c/p",
            "<TT;",
            "Lrx/e",
            "<TU;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "selector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    new-instance v0, Lrx/internal/operators/cg$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/cg$1;-><init>(Lrx/c/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/cg;, "Lrx/internal/operators/cg<TT;TU;TR;>;"
    .local p1, "o":Lrx/l;, "Lrx/l<-Lrx/e<+TR;>;>;"
    new-instance v0, Lrx/internal/operators/cg$a;

    iget-object v1, p0, Lrx/internal/operators/cg;->a:Lrx/c/p;

    iget-object v2, p0, Lrx/internal/operators/cg;->b:Lrx/c/q;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/cg$a;-><init>(Lrx/l;Lrx/c/p;Lrx/c/q;)V

    .line 67
    .local v0, "parent":Lrx/internal/operators/cg$a;, "Lrx/internal/operators/cg$a<TT;TU;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 68
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/cg;, "Lrx/internal/operators/cg<TT;TU;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cg;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
