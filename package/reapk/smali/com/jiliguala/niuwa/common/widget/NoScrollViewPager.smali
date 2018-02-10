.class public Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->a:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->a:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 29
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 56
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 51
    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0
    .param p1, "noScroll"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/common/widget/NoScrollViewPager;->a:Z

    .line 24
    return-void
.end method
