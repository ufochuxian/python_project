.class Lrx/internal/util/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/k;->h(Lrx/h;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/c/b;",
        "Lrx/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h;

.field final synthetic b:Lrx/internal/util/k;


# direct methods
.method constructor <init>(Lrx/internal/util/k;Lrx/h;)V
    .locals 0

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/k$2;, "Lrx/internal/util/k.2;"
    iput-object p1, p0, Lrx/internal/util/k$2;->b:Lrx/internal/util/k;

    iput-object p2, p0, Lrx/internal/util/k$2;->a:Lrx/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/c/b;)Lrx/m;
    .locals 2
    .param p1, "a"    # Lrx/c/b;

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/util/k$2;, "Lrx/internal/util/k.2;"
    iget-object v1, p0, Lrx/internal/util/k$2;->a:Lrx/h;

    invoke-virtual {v1}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v0

    .line 110
    .local v0, "w":Lrx/h$a;
    new-instance v1, Lrx/internal/util/k$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/k$2$1;-><init>(Lrx/internal/util/k$2;Lrx/c/b;Lrx/h$a;)V

    invoke-virtual {v0, v1}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 120
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/util/k$2;, "Lrx/internal/util/k.2;"
    check-cast p1, Lrx/c/b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/k$2;->a(Lrx/c/b;)Lrx/m;

    move-result-object v0

    return-object v0
.end method
