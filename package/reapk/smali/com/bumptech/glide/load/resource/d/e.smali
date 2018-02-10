.class public Lcom/bumptech/glide/load/resource/d/e;
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
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 0
    .param p2, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "wrapped":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/f;

    .line 20
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;
    .locals 7
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/d/b;

    .line 31
    .local v1, "drawable":Lcom/bumptech/glide/load/resource/d/b;
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    .local v2, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/d;

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/d/e;->b:Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0, v2, v5}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 33
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v5, v0, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    .line 34
    .local v3, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 35
    .local v4, "transformedFrame":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    new-instance p1, Lcom/bumptech/glide/load/resource/d/d;

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    new-instance v5, Lcom/bumptech/glide/load/resource/d/b;

    iget-object v6, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/f;

    invoke-direct {v5, v1, v4, v6}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;)V

    invoke-direct {p1, v5}, Lcom/bumptech/glide/load/resource/d/d;-><init>(Lcom/bumptech/glide/load/resource/d/b;)V

    .line 38
    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
