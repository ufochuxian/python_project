.class public Lcom/jiliguala/niuwa/common/widget/RatioImageView;
.super Lcom/makeramen/roundedimageview/RoundedImageView;
.source "SourceFile"


# instance fields
.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->RatioImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->f:F

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->onMeasure(II)V

    .line 33
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->getMeasuredWidth()I

    move-result v1

    .line 35
    .local v1, "measuredWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->f:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 36
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->setMeasuredDimension(II)V

    .line 39
    .end local v0    # "height":I
    .end local v1    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RatioImageView;->f:F

    .line 43
    return-void
.end method
