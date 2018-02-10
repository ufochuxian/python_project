.class public Lcom/bumptech/glide/load/resource/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/f/f",
        "<",
        "Lcom/bumptech/glide/load/resource/e/a;",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/f/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "bitmapDrawableResourceTranscoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/resource/bitmap/k;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/f/c;->a:Lcom/bumptech/glide/load/resource/f/f;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/e/a;

    .line 27
    .local v1, "gifBitmap":Lcom/bumptech/glide/load/resource/e/a;
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 30
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 31
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/f/c;->a:Lcom/bumptech/glide/load/resource/f/f;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/resource/f/f;->a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v2

    .line 36
    .local v2, "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<+Lcom/bumptech/glide/load/resource/b/b;>;"
    :goto_0
    return-object v2

    .line 33
    .end local v2    # "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<+Lcom/bumptech/glide/load/resource/b/b;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/engine/k;

    move-result-object v2

    .restart local v2    # "result":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<+Lcom/bumptech/glide/load/resource/b/b;>;"
    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
