.class final Lrx/internal/operators/cg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/cg;->a(Lrx/c/p;)Lrx/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<TT;",
        "Lrx/e",
        "<TU;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;


# direct methods
.method constructor <init>(Lrx/c/p;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/cg$1;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/cg$1;->a:Lrx/c/p;

    invoke-interface {v0, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lrx/internal/operators/cg$1;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
