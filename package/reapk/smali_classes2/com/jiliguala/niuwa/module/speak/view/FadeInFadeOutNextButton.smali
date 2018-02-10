.class public Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mNextBtn:Landroid/widget/ImageView;

.field private mNextText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mUpdateBg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->initView()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mUpdateBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->doScaleBtnBg(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doScaleAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 72
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$1;-><init>(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void
.end method

.method private doScaleBtnBg(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const v2, 0x3fa66666    # 1.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 97
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton$2;-><init>(Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019b

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mRootView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mRootView:Landroid/view/View;

    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextText:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mRootView:Landroid/view/View;

    const v1, 0x7f090383

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mRootView:Landroid/view/View;

    const v1, 0x7f0905d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mUpdateBg:Landroid/widget/ImageView;

    .line 50
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public isFinishBtnClickable()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    goto :goto_0
.end method

.method public showCourseDoneBtn()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextText:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210\u5566"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->doScaleAnimation(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public showNextBtn()V
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextText:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->mNextBtn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/speak/view/FadeInFadeOutNextButton;->doScaleAnimation(Landroid/view/View;)V

    .line 58
    return-void
.end method
