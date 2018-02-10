.class Lrx/internal/util/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/p;

.field final synthetic b:Lrx/internal/util/k;


# direct methods
.method constructor <init>(Lrx/internal/util/k;Lrx/c/p;)V
    .locals 0

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/k$3;, "Lrx/internal/util/k.3;"
    iput-object p1, p0, Lrx/internal/util/k$3;->b:Lrx/internal/util/k;

    iput-object p2, p0, Lrx/internal/util/k$3;->a:Lrx/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lrx/internal/util/k$3;, "Lrx/internal/util/k.3;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    iget-object v1, p0, Lrx/internal/util/k$3;->a:Lrx/c/p;

    iget-object v2, p0, Lrx/internal/util/k$3;->b:Lrx/internal/util/k;

    iget-object v2, v2, Lrx/internal/util/k;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    .line 232
    .local v0, "o":Lrx/e;, "Lrx/e<+TR;>;"
    instance-of v1, v0, Lrx/internal/util/k;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Lrx/internal/util/k;

    .end local v0    # "o":Lrx/e;, "Lrx/e<+TR;>;"
    iget-object v1, v0, Lrx/internal/util/k;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lrx/internal/util/k;->a(Lrx/l;Ljava/lang/Object;)Lrx/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 237
    :goto_0
    return-void

    .line 235
    .restart local v0    # "o":Lrx/e;, "Lrx/e<+TR;>;"
    :cond_0
    invoke-static {p1}, Lrx/e/h;->a(Lrx/l;)Lrx/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 228
    .local p0, "this":Lrx/internal/util/k$3;, "Lrx/internal/util/k.3;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/k$3;->a(Lrx/l;)V

    return-void
.end method
