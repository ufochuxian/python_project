.class public Lcom/bumptech/glide/load/resource/f/e;
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
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/bitmap/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/f/e;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/f/e;->a:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/f/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;)Lcom/bumptech/glide/load/engine/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/k;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/f/e;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    .local v0, "drawable":Lcom/bumptech/glide/load/resource/bitmap/k;
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/l;

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/f/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/engine/a/c;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
