.class public Lcom/bumptech/glide/load/resource/e/f;
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
        "Lcom/bumptech/glide/load/resource/e/a;",
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

.field private final b:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V
    .locals 1
    .param p1, "bitmapPool"    # Lcom/bumptech/glide/load/engine/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "bitmapTransformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/d/e;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/load/resource/d/e;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "bitmapTransformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    .local p2, "gifDataTransformation":Lcom/bumptech/glide/load/f;, "Lcom/bumptech/glide/load/f<Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/f;

    .line 26
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/f;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    .line 32
    .local v0, "bitmapResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/engine/k;

    move-result-object v2

    .line 33
    .local v2, "gifResource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/f;

    if-eqz v5, :cond_1

    .line 34
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v5, v0, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    .line 35
    .local v3, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    new-instance v1, Lcom/bumptech/glide/load/resource/e/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/engine/k;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/k;)V

    .line 37
    .local v1, "gifBitmap":Lcom/bumptech/glide/load/resource/e/a;
    new-instance p1, Lcom/bumptech/glide/load/resource/e/b;

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    .line 46
    .end local v1    # "gifBitmap":Lcom/bumptech/glide/load/resource/e/a;
    .end local v3    # "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Landroid/graphics/Bitmap;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 39
    .restart local p1    # "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    :cond_1
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/f;

    if-eqz v5, :cond_0

    .line 40
    iget-object v5, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/f;

    invoke-interface {v5, v2, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/k;II)Lcom/bumptech/glide/load/engine/k;

    move-result-object v4

    .line 41
    .local v4, "transformed":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/d/b;>;"
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    new-instance v1, Lcom/bumptech/glide/load/resource/e/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/k;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/engine/k;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/k;)V

    .line 43
    .restart local v1    # "gifBitmap":Lcom/bumptech/glide/load/resource/e/a;
    new-instance p1, Lcom/bumptech/glide/load/resource/e/b;

    .end local p1    # "resource":Lcom/bumptech/glide/load/engine/k;, "Lcom/bumptech/glide/load/engine/k<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
