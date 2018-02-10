.class Lrx/i$10$1;
.super Lrx/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i$10;->a(Lrx/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/k",
        "<",
        "Lrx/i",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/k;

.field final synthetic b:Lrx/i$10;


# direct methods
.method constructor <init>(Lrx/i$10;Lrx/k;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lrx/i$10$1;->b:Lrx/i$10;

    iput-object p2, p0, Lrx/i$10$1;->a:Lrx/k;

    invoke-direct {p0}, Lrx/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 666
    check-cast p1, Lrx/i;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/i$10$1;->a(Lrx/i;)V

    return-void
.end method

.method public a(Lrx/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, "innerSingle":Lrx/i;, "Lrx/i<+TT;>;"
    iget-object v0, p0, Lrx/i$10$1;->a:Lrx/k;

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    .line 671
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 675
    iget-object v0, p0, Lrx/i$10$1;->a:Lrx/k;

    invoke-virtual {v0, p1}, Lrx/k;->onError(Ljava/lang/Throwable;)V

    .line 676
    return-void
.end method
