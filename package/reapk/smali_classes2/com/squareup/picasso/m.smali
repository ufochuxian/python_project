.class Lcom/squareup/picasso/m;
.super Lcom/squareup/picasso/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/a",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field l:Lcom/squareup/picasso/e;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/v;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/e;)V
    .locals 0
    .param p1, "picasso"    # Lcom/squareup/picasso/Picasso;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "data"    # Lcom/squareup/picasso/v;
    .param p4, "skipCache"    # Z
    .param p5, "noFade"    # Z
    .param p6, "errorResId"    # I
    .param p7, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "tag"    # Ljava/lang/Object;
    .param p10, "callback"    # Lcom/squareup/picasso/e;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p9}, Lcom/squareup/picasso/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/v;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iput-object p10, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/squareup/picasso/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, "target":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget v1, p0, Lcom/squareup/picasso/m;->f:I

    if-eqz v1, :cond_3

    .line 60
    iget v1, p0, Lcom/squareup/picasso/m;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    invoke-interface {v1}, Lcom/squareup/picasso/e;->b()V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/m;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/squareup/picasso/m;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Attempted to complete action with no result!\n%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    .line 37
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/squareup/picasso/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, "target":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 45
    :cond_2
    iget-object v2, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v2, Lcom/squareup/picasso/Picasso;->d:Landroid/content/Context;

    .line 46
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/squareup/picasso/m;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v5, v2, Lcom/squareup/picasso/Picasso;->k:Z

    .line 47
    .local v5, "indicatorsEnabled":Z
    iget-boolean v4, p0, Lcom/squareup/picasso/m;->e:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/picasso/s;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    .line 49
    iget-object v2, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    invoke-interface {v2}, Lcom/squareup/picasso/e;->a()V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/squareup/picasso/a;->b()V

    .line 72
    iget-object v0, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/m;->l:Lcom/squareup/picasso/e;

    .line 75
    :cond_0
    return-void
.end method
