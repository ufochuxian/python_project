.class Lcom/bumptech/glide/load/engine/a/j$b;
.super Lcom/bumptech/glide/load/engine/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/a/b",
        "<",
        "Lcom/bumptech/glide/load/engine/a/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/a/j$a;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/bumptech/glide/load/engine/a/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/j$a;-><init>(Lcom/bumptech/glide/load/engine/a/j$b;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/a/j$a;
    .locals 1
    .param p1, "size"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/j$b;->c()Lcom/bumptech/glide/load/engine/a/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a/j$a;

    .line 161
    .local v0, "result":Lcom/bumptech/glide/load/engine/a/j$a;
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/a/j$a;->a(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/a/h;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a/j$b;->a()Lcom/bumptech/glide/load/engine/a/j$a;

    move-result-object v0

    return-object v0
.end method
