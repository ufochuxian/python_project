.class Lcom/bumptech/glide/load/engine/a/k$b;
.super Lcom/bumptech/glide/load/engine/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/a/b",
        "<",
        "Lcom/bumptech/glide/load/engine/a/k$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/a/k$a;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/bumptech/glide/load/engine/a/k$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/k$a;-><init>(Lcom/bumptech/glide/load/engine/a/k$b;)V

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/load/engine/a/k$a;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/k$b;->c()Lcom/bumptech/glide/load/engine/a/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/k$a;

    .line 110
    .local v0, "result":Lcom/bumptech/glide/load/engine/a/k$a;
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/k$a;->a(I)V

    .line 111
    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/a/h;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/k$b;->a()Lcom/bumptech/glide/load/engine/a/k$a;

    move-result-object v0

    return-object v0
.end method
