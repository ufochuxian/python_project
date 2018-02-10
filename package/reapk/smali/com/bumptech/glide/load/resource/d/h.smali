.class Lcom/bumptech/glide/load/resource/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Lcom/bumptech/glide/b/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/h;->a:Lcom/bumptech/glide/load/engine/a/c;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/engine/k;
    .locals 2
    .param p1, "source"    # Lcom/bumptech/glide/b/a;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b/a;",
            "II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/h;->a:Lcom/bumptech/glide/load/engine/a/c;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/d;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/k;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Lcom/bumptech/glide/b/a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/h;->a(Lcom/bumptech/glide/b/a;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method
