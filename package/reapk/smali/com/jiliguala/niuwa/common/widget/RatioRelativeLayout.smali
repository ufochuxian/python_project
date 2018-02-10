.class public Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v2, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    .line 20
    sget-object v1, Lcom/jiliguala/niuwa/R$styleable;->RatioImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 31
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 32
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/RatioRelativeLayout;->a:F

    .line 42
    return-void
.end method
