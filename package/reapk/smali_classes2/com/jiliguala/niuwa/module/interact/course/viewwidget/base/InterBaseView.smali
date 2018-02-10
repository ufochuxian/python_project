.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InterViewAction;


# static fields
.field private static final MAX_PROGRESS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->addTimeOutProgress()V

    .line 36
    return-void
.end method

.method private addTimeOutProgress()V
    .locals 4

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 43
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setRightBarColor(I)V

    .line 45
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const-string v2, "#ffffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setLeftBarColor(I)V

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const-string v2, "#2FCA89"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setBgBarColor(I)V

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setBgBarHeight(F)V

    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setFrontBarHeight(F)V

    .line 49
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setMax(I)V

    .line 50
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "fl":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getLoadingProgress()Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    return-object v0
.end method

.method public hideTimeOutProgress()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setVisibility(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onInteractTimeOut()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 99
    return-void
.end method

.method public onMatchResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "jumpId"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 105
    return-void
.end method

.method public resetTimeOutProgress()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public showTimeOutProgress()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setVisibility(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public updateTimeOutProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/base/InterBaseView;->mLoadingProgress:Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/common/widget/numberprogress/TwoWayLoadingProgress;->setProgress(I)V

    .line 67
    :cond_0
    return-void
.end method
