.class public abstract Lcom/bumptech/glide/load/resource/bitmap/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/e;->a:Lcom/bumptech/glide/load/engine/a/c;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;
    .locals 8
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    const/high16 v6, -0x80000000

    .line 47
    invoke-static {p2, p3}, Lcom/bumptech/glide/i/i;->a(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot apply transformation on width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 52
    .local v3, "toTransform":Landroid/graphics/Bitmap;
    if-ne p2, v6, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    .local v2, "targetWidth":I
    :goto_0
    if-ne p3, v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 54
    .local v1, "targetHeight":I
    :goto_1
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/e;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p0, v5, v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/e;->a(Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 57
    .local v4, "transformed":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    move-object v0, p1

    .line 63
    .local v0, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    :goto_2
    return-object v0

    .end local v0    # "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    .end local v1    # "targetHeight":I
    .end local v2    # "targetWidth":I
    .end local v4    # "transformed":Landroid/graphics/Bitmap;
    :cond_1
    move v2, p2

    .line 52
    goto :goto_0

    .restart local v2    # "targetWidth":I
    :cond_2
    move v1, p3

    .line 53
    goto :goto_1

    .line 60
    .restart local v1    # "targetHeight":I
    .restart local v4    # "transformed":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/bitmap/e;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/d;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v0

    .restart local v0    # "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    goto :goto_2
.end method
