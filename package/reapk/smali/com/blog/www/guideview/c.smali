.class Lcom/blog/www/guideview/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentX"    # I
    .param p2, "parentY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 31
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 32
    .local v0, "loc":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 33
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .local v1, "rect":Landroid/graphics/Rect;
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    neg-int v2, p1

    neg-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 36
    return-object v1
.end method

.method static a(Landroid/view/LayoutInflater;Lcom/blog/www/guideview/d;)Landroid/view/View;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "c"    # Lcom/blog/www/guideview/d;

    .prologue
    const/4 v2, -0x2

    .line 16
    invoke-interface {p1, p0}, Lcom/blog/www/guideview/d;->getView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 17
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/blog/www/guideview/MaskView$b;

    invoke-direct {v0, v2, v2}, Lcom/blog/www/guideview/MaskView$b;-><init>(II)V

    .line 19
    .local v0, "lp":Lcom/blog/www/guideview/MaskView$b;
    invoke-interface {p1}, Lcom/blog/www/guideview/d;->getXOffset()I

    move-result v2

    iput v2, v0, Lcom/blog/www/guideview/MaskView$b;->m:I

    .line 20
    invoke-interface {p1}, Lcom/blog/www/guideview/d;->getYOffset()I

    move-result v2

    iput v2, v0, Lcom/blog/www/guideview/MaskView$b;->n:I

    .line 21
    invoke-interface {p1}, Lcom/blog/www/guideview/d;->getAnchor()I

    move-result v2

    iput v2, v0, Lcom/blog/www/guideview/MaskView$b;->k:I

    .line 22
    invoke-interface {p1}, Lcom/blog/www/guideview/d;->getFitPosition()I

    move-result v2

    iput v2, v0, Lcom/blog/www/guideview/MaskView$b;->l:I

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-object v1
.end method
