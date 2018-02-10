.class public Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getXFraction()F
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getWidth()I

    move-result v0

    .line 28
    .local v0, "width":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getX()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public getYFraction()F
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getHeight()I

    move-result v0

    .line 38
    .local v0, "height":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getY()F

    move-result v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public setXFraction(F)V
    .locals 2
    .param p1, "xFraction"    # F

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getWidth()I

    move-result v0

    .line 33
    .local v0, "width":I
    if-lez v0, :cond_0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->setX(F)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setYFraction(F)V
    .locals 2
    .param p1, "yFraction"    # F

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->getHeight()I

    move-result v0

    .line 43
    .local v0, "height":I
    if-lez v0, :cond_0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/views/SlideableRelativeLayout;->setY(F)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
