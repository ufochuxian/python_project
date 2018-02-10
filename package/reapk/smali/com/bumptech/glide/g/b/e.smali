.class public Lcom/bumptech/glide/g/b/e;
.super Lcom/bumptech/glide/g/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/b/f",
        "<",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:F = 0.05f


# instance fields
.field private d:I

.field private e:Lcom/bumptech/glide/load/resource/b/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 24
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/g/b/e;-><init>(Landroid/widget/ImageView;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "maxLoopCount"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bumptech/glide/g/b/f;-><init>(Landroid/widget/ImageView;)V

    .line 38
    iput p2, p0, Lcom/bumptech/glide/g/b/e;->d:I

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/resource/b/b;)V
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/b/b;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/g/b/e;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/resource/b/b;Lcom/bumptech/glide/g/a/c;)V
    .locals 7
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/b/b;",
            "Lcom/bumptech/glide/g/a/c",
            "<-",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animation":Lcom/bumptech/glide/g/a/c;, "Lcom/bumptech/glide/g/a/c<-Lcom/bumptech/glide/load/resource/b/b;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3d4ccccd    # 0.05f

    .line 52
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/b/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/bumptech/glide/g/b/e;->b:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/bumptech/glide/g/b/e;->b:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v4, v3

    .line 60
    .local v2, "viewRatio":F
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/b/b;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/b/b;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 61
    .local v0, "drawableRatio":F
    sub-float v3, v2, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    sub-float v3, v0, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 63
    new-instance v1, Lcom/bumptech/glide/g/b/l;

    iget-object v3, p0, Lcom/bumptech/glide/g/b/e;->b:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/bumptech/glide/g/b/l;-><init>(Lcom/bumptech/glide/load/resource/b/b;I)V

    .end local p1    # "resource":Lcom/bumptech/glide/load/resource/b/b;
    .local v1, "resource":Lcom/bumptech/glide/load/resource/b/b;
    move-object p1, v1

    .line 66
    .end local v0    # "drawableRatio":F
    .end local v1    # "resource":Lcom/bumptech/glide/load/resource/b/b;
    .end local v2    # "viewRatio":F
    .restart local p1    # "resource":Lcom/bumptech/glide/load/resource/b/b;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/g/b/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V

    .line 67
    iput-object p1, p0, Lcom/bumptech/glide/g/b/e;->e:Lcom/bumptech/glide/load/resource/b/b;

    .line 68
    iget v3, p0, Lcom/bumptech/glide/g/b/e;->d:I

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/load/resource/b/b;->a(I)V

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/b/b;->start()V

    .line 70
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/b/b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/g/b/e;->a(Lcom/bumptech/glide/load/resource/b/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/bumptech/glide/g/a/c;

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/resource/b/b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/g/b/e;->a(Lcom/bumptech/glide/load/resource/b/b;Lcom/bumptech/glide/g/a/c;)V

    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/g/b/e;->e:Lcom/bumptech/glide/load/resource/b/b;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/g/b/e;->e:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->start()V

    .line 88
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/g/b/e;->e:Lcom/bumptech/glide/load/resource/b/b;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/g/b/e;->e:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->stop()V

    .line 95
    :cond_0
    return-void
.end method
