.class public Lcom/bumptech/glide/f;
.super Lcom/bumptech/glide/h;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/a;
.implements Lcom/bumptech/glide/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/h",
        "<TModelType;",
        "Lcom/bumptech/glide/load/b/g;",
        "Lcom/bumptech/glide/load/resource/e/a;",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;",
        "Lcom/bumptech/glide/a;",
        "Lcom/bumptech/glide/e;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "glide"    # Lcom/bumptech/glide/l;
    .param p5, "requestTracker"    # Lcom/bumptech/glide/d/m;
    .param p6, "lifecycle"    # Lcom/bumptech/glide/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/d/m;",
            "Lcom/bumptech/glide/d/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModelType;>;"
    .local p3, "loadProvider":Lcom/bumptech/glide/f/f;, "Lcom/bumptech/glide/f/f<TModelType;Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/resource/e/a;Lcom/bumptech/glide/load/resource/b/b;>;"
    const-class v4, Lcom/bumptech/glide/load/resource/b/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->f()Lcom/bumptech/glide/f;

    .line 51
    return-void
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->d(F)Lcom/bumptech/glide/h;

    .line 98
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 329
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/h;

    .line 311
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;

    .line 143
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f",
            "<*>;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<*>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    .line 79
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "animator"    # Lcom/bumptech/glide/g/a/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/h$a;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/h;

    .line 291
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "requestListener":Lcom/bumptech/glide/g/f;, "Lcom/bumptech/glide/g/f<-TModelType;Lcom/bumptech/glide/load/resource/b/b;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;

    .line 369
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<***",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "thumbnailRequest":Lcom/bumptech/glide/h;, "Lcom/bumptech/glide/h<***Lcom/bumptech/glide/load/resource/b/b;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    .line 89
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "sourceEncoder":Lcom/bumptech/glide/load/a;, "Lcom/bumptech/glide/load/a<Lcom/bumptech/glide/load/b/g;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;

    .line 405
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "signature"    # Lcom/bumptech/glide/load/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;

    .line 420
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/bumptech/glide/load/b/g;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "decoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Lcom/bumptech/glide/load/b/g;Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 116
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "encoder":Lcom/bumptech/glide/load/e;, "Lcom/bumptech/glide/load/e<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;

    .line 134
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "strategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;

    .line 378
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/f/f",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "transcoder":Lcom/bumptech/glide/load/resource/f/f;, "Lcom/bumptech/glide/load/resource/f/f<Lcom/bumptech/glide/load/resource/e/a;Lcom/bumptech/glide/load/resource/b/b;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/h;

    .line 239
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    .line 426
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "skip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b(Z)Lcom/bumptech/glide/h;

    .line 387
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "bitmapTransformations":[Lcom/bumptech/glide/load/f;, "[Lcom/bumptech/glide/load/f<Landroid/graphics/Bitmap;>;"
    array-length v2, p1

    new-array v1, v2, [Lcom/bumptech/glide/load/resource/e/f;

    .line 211
    .local v1, "transformations":[Lcom/bumptech/glide/load/resource/e/f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 212
    new-instance v2, Lcom/bumptech/glide/load/resource/e/f;

    iget-object v3, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v3}, Lcom/bumptech/glide/l;->c()Lcom/bumptech/glide/load/engine/a/c;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/f;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v2

    return-object v2
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/e;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1, "transformations"    # [Lcom/bumptech/glide/load/resource/bitmap/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/e;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/g/b/m",
            "<",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->e()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->b(I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/view/animation/Animation;
    .param p2, "x1"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->b(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "sizeMultiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->c(F)Lcom/bumptech/glide/h;

    .line 107
    return-object p0
.end method

.method public b(I)Lcom/bumptech/glide/f;
    .locals 1
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g/a/a;-><init>(I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    .line 255
    return-object p0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 335
    return-object p0
.end method

.method public b(Landroid/view/animation/Animation;I)Lcom/bumptech/glide/f;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/a;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/g/a/a;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    .line 264
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "cacheDecoder":Lcom/bumptech/glide/load/d;, "Lcom/bumptech/glide/load/d<Ljava/io/File;Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    .line 125
    return-object p0
.end method

.method public synthetic b()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->d()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->e(II)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/animation/Animation;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/view/animation/Animation;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/view/animation/Animation;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/g/a/h$a;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g/a/h$a;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/g/f;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/h;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/a;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/b;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/e;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/resource/f/f;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/resource/f/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Z)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # [Lcom/bumptech/glide/load/f;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "animationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->h(I)Lcom/bumptech/glide/h;

    .line 300
    return-object p0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;

    .line 359
    return-object p0
.end method

.method public varargs c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    .local p1, "transformation":[Lcom/bumptech/glide/load/f;, "[Lcom/bumptech/glide/load/f<Lcom/bumptech/glide/load/resource/e/a;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/h;

    .line 229
    return-object p0
.end method

.method public synthetic c()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->f()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(F)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->b(F)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(II)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f;->d(II)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->i()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/l;->g()Lcom/bumptech/glide/load/resource/e/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->g(I)Lcom/bumptech/glide/h;

    .line 320
    return-object p0
.end method

.method public d(II)Lcom/bumptech/glide/f;
    .locals 2
    .param p1, "animationId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/a;

    iget-object v1, p0, Lcom/bumptech/glide/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/g/a/a;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    .line 273
    return-object p0
.end method

.method public synthetic d(F)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(F)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/l;

    invoke-virtual {v2}, Lcom/bumptech/glide/l;->h()Lcom/bumptech/glide/load/resource/e/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f;->c([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public e(II)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h;->b(II)Lcom/bumptech/glide/h;

    .line 396
    return-object p0
.end method

.method public synthetic e(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->j(I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/d;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    new-instance v0, Lcom/bumptech/glide/g/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/h;

    .line 247
    return-object p0
.end method

.method public synthetic f(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->i(I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/load/d;

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->n()Lcom/bumptech/glide/h;

    .line 282
    return-object p0
.end method

.method public synthetic g(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->d(I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->o()Lcom/bumptech/glide/h;

    .line 414
    return-object p0
.end method

.method public synthetic h(I)Lcom/bumptech/glide/h;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->c(I)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0}, Lcom/bumptech/glide/h;->m()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public i(I)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->f(I)Lcom/bumptech/glide/h;

    .line 341
    return-object p0
.end method

.method public j(I)Lcom/bumptech/glide/f;
    .locals 0
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/f",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->e(I)Lcom/bumptech/glide/h;

    .line 350
    return-object p0
.end method

.method k()V
    .locals 0

    .prologue
    .line 453
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->e()Lcom/bumptech/glide/f;

    .line 454
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 458
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->d()Lcom/bumptech/glide/f;

    .line 459
    return-void
.end method

.method public synthetic m()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->i()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/bumptech/glide/h;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/f;, "Lcom/bumptech/glide/f<TModelType;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/f;->h()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method
