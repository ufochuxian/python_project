.class public Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 46
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 47
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 48
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 50
    .local v5, "textWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;->getCompoundDrawablePadding()I

    move-result v2

    .line 51
    .local v2, "drawablePadding":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 52
    .local v3, "drawableWidth":I
    int-to-float v6, v3

    add-float/2addr v6, v5

    int-to-float v7, v2

    add-float v0, v6, v7

    .line 53
    .local v0, "bodyWidth":F
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/DrawableCenterTextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    .end local v0    # "bodyWidth":F
    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawablePadding":I
    .end local v3    # "drawableWidth":I
    .end local v5    # "textWidth":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    return-void
.end method
