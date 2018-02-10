.class final Lrx/internal/operators/co$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/co;->a(Lrx/c/p;)Lrx/internal/operators/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/e",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;


# direct methods
.method constructor <init>(Lrx/c/p;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/co$1;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lrx/e;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/internal/operators/co$1;->a:Lrx/c/p;

    invoke-interface {v0, p1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/co$1;->a(Ljava/lang/Throwable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
