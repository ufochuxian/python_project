.class public Lcom/bumptech/glide/load/resource/bitmap/l;
.super Lcom/bumptech/glide/load/resource/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/b/a",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .param p1, "drawable"    # Lcom/bumptech/glide/load/resource/bitmap/k;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/b/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 16
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/i/i;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->b:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/l;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/c;->a(Landroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
