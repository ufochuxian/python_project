.class public Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mBanner:Landroid/widget/ImageView;

.field private mDesc:Landroid/widget/TextView;

.field private mDiscountPrice:Landroid/widget/TextView;

.field private mOriginPrice:Landroid/widget/TextView;

.field private mOriginTotalPriceContainer:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTotalPriceContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->initView()V

    .line 44
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01a0

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mBanner:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/a/a/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 50
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f0901ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDesc:Landroid/widget/TextView;

    .line 54
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f0903ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginPrice:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDiscountPrice:Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginTotalPriceContainer:Landroid/widget/LinearLayout;

    .line 57
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f0905a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTotalPriceContainer:Landroid/widget/LinearLayout;

    .line 58
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f09057a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTitle:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mRootView:Landroid/view/View;

    const v3, 0x7f090531

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mSubTitle:Landroid/widget/TextView;

    .line 60
    return-void
.end method


# virtual methods
.method public setDesc(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDesc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setDiscountPrice(Ljava/lang/String;)V
    .locals 1
    .param p1, "discountPrice"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDiscountPrice:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mDiscountPrice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setOriginPrice(Ljava/lang/String;)V
    .locals 1
    .param p1, "originPrice"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginPrice:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginPrice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "tilte"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method

.method public showBannerIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mBanner:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mBanner:Landroid/widget/ImageView;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/e/a;->n()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 99
    :cond_0
    return-void
.end method

.method public showOriginTotalPriceContainer(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginTotalPriceContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mOriginTotalPriceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public showTotalPriceContainer(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTotalPriceContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleHeaderView;->mTotalPriceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :cond_0
    return-void
.end method
