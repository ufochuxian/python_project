.class public final Lrx/internal/operators/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ag$a;
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

.field final b:Lrx/c/p;
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
.method public constructor <init>(Lrx/e;Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/ag;, "Lrx/internal/operators/ag<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/internal/operators/ag;->a:Lrx/e;

    .line 38
    iput-object p2, p0, Lrx/internal/operators/ag;->b:Lrx/c/p;

    .line 39
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
    .line 43
    .local p0, "this":Lrx/internal/operators/ag;, "Lrx/internal/operators/ag<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/ag$a;

    iget-object v1, p0, Lrx/internal/operators/ag;->b:Lrx/c/p;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ag$a;-><init>(Lrx/l;Lrx/c/p;)V

    .line 44
    .local v0, "parent":Lrx/internal/operators/ag$a;, "Lrx/internal/operators/ag$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 45
    iget-object v1, p0, Lrx/internal/operators/ag;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 46
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/ag;, "Lrx/internal/operators/ag<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ag;->a(Lrx/l;)V

    return-void
.end method