.class public Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->RatioImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->a:F

    .line 24
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 34
    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->a:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 36
    .local v1, "measuredWidth":I
    int-to-float v2, v1

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->a:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 37
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->setMeasuredDimension(II)V

    .line 40
    .end local v0    # "height":I
    .end local v1    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/RadioRelativeLayout;->a:F

    .line 44
    return-void
.end method
