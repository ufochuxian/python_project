.class public final Lrx/internal/operators/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ep$a;
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

.field final b:Lrx/h;


# direct methods
.method public constructor <init>(Lrx/i$a;Lrx/h;)V
    .locals 0
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/ep;, "Lrx/internal/operators/ep<TT;>;"
    .local p1, "source":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/ep;->a:Lrx/i$a;

    .line 37
    iput-object p2, p0, Lrx/internal/operators/ep;->b:Lrx/h;

    .line 38
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
    .line 42
    .local p0, "this":Lrx/internal/operators/ep;, "Lrx/internal/operators/ep<TT;>;"
    .local p1, "t":Lrx/k;, "Lrx/k<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/ep;->b:Lrx/h;

    invoke-virtual {v2}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v1

    .line 44
    .local v1, "w":Lrx/h$a;
    new-instance v0, Lrx/internal/operators/ep$a;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/ep$a;-><init>(Lrx/k;Lrx/h$a;)V

    .line 46
    .local v0, "parent":Lrx/internal/operators/ep$a;, "Lrx/internal/operators/ep$a<TT;>;"
    invoke-virtual {p1, v1}, Lrx/k;->a(Lrx/m;)V

    .line 47
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 49
    iget-object v2, p0, Lrx/internal/operators/ep;->a:Lrx/i$a;

    invoke-interface {v2, v0}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/ep;, "Lrx/internal/operators/ep<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ep;->a(Lrx/k;)V

    return-void
.end method
