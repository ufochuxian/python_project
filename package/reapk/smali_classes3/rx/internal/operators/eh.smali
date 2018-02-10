.class public final Lrx/internal/operators/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/eh$a;
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
.field final a:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/eh;, "Lrx/internal/operators/eh<TT;>;"
    .local p1, "source":Lrx/i;, "Lrx/i<TT;>;"
    .local p2, "onSuccess":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p3, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/eh;->a:Lrx/i;

    .line 32
    iput-object p2, p0, Lrx/internal/operators/eh;->b:Lrx/c/c;

    .line 33
    iput-object p3, p0, Lrx/internal/operators/eh;->c:Lrx/c/c;

    .line 34
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
    .line 38
    .local p0, "this":Lrx/internal/operators/eh;, "Lrx/internal/operators/eh<TT;>;"
    .local p1, "actual":Lrx/k;, "Lrx/k<-TT;>;"
    new-instance v0, Lrx/internal/operators/eh$a;

    iget-object v1, p0, Lrx/internal/operators/eh;->b:Lrx/c/c;

    iget-object v2, p0, Lrx/internal/operators/eh;->c:Lrx/c/c;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/eh$a;-><init>(Lrx/k;Lrx/c/c;Lrx/c/c;)V

    .line 39
    .local v0, "parent":Lrx/internal/operators/eh$a;, "Lrx/internal/operators/eh$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/k;->a(Lrx/m;)V

    .line 40
    iget-object v1, p0, Lrx/internal/operators/eh;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 41
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/operators/eh;, "Lrx/internal/operators/eh<TT;>;"
    check-cast p1, Lrx/k;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/eh;->a(Lrx/k;)V

    return-void
.end method
