.class public Lcom/jiliguala/niuwa/common/widget/LineWithTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/drawable/ShapeDrawable;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 27
    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a(Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 27
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    .line 40
    invoke-direct {p0, p2, v0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a(Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 27
    iput v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a(Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0, v4, v1, v4}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->setGravity(I)V

    .line 77
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 78
    .local v1, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 79
    .local v2, "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingTop()I

    move-result v5

    sub-int v3, v4, v5

    .line 80
    .local v3, "vspace":I
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int v0, v4, v5

    .line 82
    .local v0, "hspace":I
    int-to-float v4, v0

    sub-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 84
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getLeftPaddingOffset()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 88
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 87
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    sub-int/2addr v4, v5

    .line 94
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getRightPaddingOffset()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 93
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/R$styleable;->LineWithTextView:[I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->d:I

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    .line 57
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 58
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a()V

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a(Landroid/graphics/Canvas;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setLineColor(I)V
    .locals 2
    .param p1, "lineColor"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->d:I

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-void
.end method

.method public setLineHeight(I)V
    .locals 0
    .param p1, "lineHeight"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->b:I

    .line 107
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a()V

    .line 108
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "lineWidth"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a:I

    .line 112
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/LineWithTextView;->a()V

    .line 113
    return-void
.end method
