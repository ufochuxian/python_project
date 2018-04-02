.class public Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;,
        Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;
    }
.end annotation


# instance fields
.field private mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mHandler:Landroid/os/Handler;

.field private mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

.field private mMultiVp:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 48
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->reportToAmplitude(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private reportToAmplitude(Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;)V
    .locals 3
    .param p1, "banner"    # Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "URL"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "Position"

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;->getPos()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Lesson Banner Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    return-void
.end method


# virtual methods
.method public fillView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "bannerBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/CourseRecommendTemplate$BannerBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->stopLoop()V

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->updateData(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    new-instance v1, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$ItemTouchListener;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->setOnItemTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;->getStartPageIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00ed

    invoke-static {v3, v4, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "mRootView":Landroid/view/View;
    const v3, 0x7f090378

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    .line 54
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$1;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/a/a/a;->a(Landroid/content/Context;)I

    move-result v2

    .line 79
    .local v2, "screenWidth":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v4, v2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v3, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;-><init>(Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    .line 83
    new-instance v3, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    .line 84
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mLooperAdapter:Lcom/jiliguala/niuwa/module/qualitycourse/adapter/ImageLooperAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->stopLoop()V

    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mMultiVp:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/af;)V

    .line 115
    :cond_0
    return-void
.end method

.method public startLoop()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->start()V

    .line 102
    :cond_0
    return-void
.end method

.method public stopLoop()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView;->mAutoRunnable:Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/QualityCourseLooperView$AutoRunnable;->stop()V

    .line 108
    :cond_0
    return-void
.end method
