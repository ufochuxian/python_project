.class public abstract Lcom/bumptech/glide/g/b/f;
.super Lcom/bumptech/glide/g/b/n;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/g/b/n",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/g/a/c$a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 17
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g/b/n;-><init>(Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 48
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/f;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/f;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/g/a/c",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "glideAnimation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-TZ;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/g/a/c;->a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g/b/f;->a(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/f;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/f;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/g/b/f;, "Lcom/bumptech/glide/g/b/f<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/g/b/f;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method
