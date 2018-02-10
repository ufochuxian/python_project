.class public Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "isDisplayed"    # Z

    .prologue
    .line 51
    instance-of v3, p0, Lcom/jiliguala/niuwa/logic/image/c;

    if-eqz v3, :cond_1

    .line 53
    check-cast p0, Lcom/jiliguala/niuwa/logic/image/c;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/logic/image/c;->a(Z)V

    .line 61
    :cond_0
    return-void

    .line 54
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 56
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 57
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 72
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 89
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/widget/RecyclingImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 90
    return-void
.end method
