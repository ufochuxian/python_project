.class public final Lrx/internal/operators/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/dz$b;,
        Lrx/internal/operators/dz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/e",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TU;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TU;+",
            "Lrx/e",
            "<+TV;>;>;"
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
            "<+TU;>;",
            "Lrx/c/p",
            "<-TU;+",
            "Lrx/e",
            "<+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/dz;, "Lrx/internal/operators/dz<TT;TU;TV;>;"
    .local p1, "windowOpenings":Lrx/e;, "Lrx/e<+TU;>;"
    .local p2, "windowClosingSelector":Lrx/c/p;, "Lrx/c/p<-TU;+Lrx/e<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/dz;->a:Lrx/e;

    .line 45
    iput-object p2, p0, Lrx/internal/operators/dz;->b:Lrx/c/p;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/dz;, "Lrx/internal/operators/dz<TT;TU;TV;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/e<TT;>;>;"
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    .line 51
    .local v0, "composite":Lrx/i/b;
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 53
    new-instance v2, Lrx/internal/operators/dz$b;

    invoke-direct {v2, p0, p1, v0}, Lrx/internal/operators/dz$b;-><init>(Lrx/internal/operators/dz;Lrx/l;Lrx/i/b;)V

    .line 55
    .local v2, "sub":Lrx/internal/operators/dz$b;, "Lrx/internal/operators/dz<TT;TU;TV;>.b;"
    new-instance v1, Lrx/internal/operators/dz$1;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/dz$1;-><init>(Lrx/internal/operators/dz;Lrx/internal/operators/dz$b;)V

    .line 78
    .local v1, "open":Lrx/l;, "Lrx/l<TU;>;"
    invoke-virtual {v0, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 79
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 81
    iget-object v3, p0, Lrx/internal/operators/dz;->a:Lrx/e;

    invoke-virtual {v3, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 83
    return-object v2
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/dz;, "Lrx/internal/operators/dz<TT;TU;TV;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/dz;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
