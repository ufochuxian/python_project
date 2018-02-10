.class Lrx/internal/operators/bl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/bl;-><init>(Lrx/e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<",
        "Lrx/e",
        "<+TTClosing;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/internal/operators/bl;


# direct methods
.method constructor <init>(Lrx/internal/operators/bl;Lrx/e;)V
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/bl$1;, "Lrx/internal/operators/bl.1;"
    iput-object p1, p0, Lrx/internal/operators/bl$1;->b:Lrx/internal/operators/bl;

    iput-object p2, p0, Lrx/internal/operators/bl$1;->a:Lrx/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<+TTClosing;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/bl$1;, "Lrx/internal/operators/bl.1;"
    iget-object v0, p0, Lrx/internal/operators/bl$1;->a:Lrx/e;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/bl$1;, "Lrx/internal/operators/bl.1;"
    invoke-virtual {p0}, Lrx/internal/operators/bl$1;->a()Lrx/e;

    move-result-object v0

    return-object v0
.end method
