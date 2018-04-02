.class public Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/c/a/a/a/c$b;
.implements Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;
.implements Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;
.implements Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/BaseMvpActivity",
        "<",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/c/a/a/a/c$b;",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;",
        "Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INDEX:I = -0x2

.field public static final FIRST_ROADMAP_POS:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;",
            ">;"
        }
    .end annotation
.end field

.field public mBuyAll:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0900e6
    .end annotation
.end field

.field public mBuyOneVOne:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0900e5
    .end annotation
.end field

.field public mCiteBearIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09013a
    .end annotation
.end field

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

.field private mCreateTime:J

.field public mCurrentCourse:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090188
    .end annotation
.end field

.field private mCurrentPos:I

.field protected mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mEnableAutoShowPage:Z

.field private mEnableShowOneVOnePurchasePage:Z

.field private mLV:Ljava/lang/String;

.field public mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

.field private mLastServerLv:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field public mLeftBabyIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902bd
    .end annotation
.end field

.field public mLeftFindCurrent:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902c1
    .end annotation
.end field

.field public mLessonTypeTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902ce
    .end annotation
.end field

.field public mLevel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902cf
    .end annotation
.end field

.field public mListenTv:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902e0
    .end annotation
.end field

.field public mLoadingProgressContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902ee
    .end annotation
.end field

.field public mNewRoadMapRoot:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090386
    .end annotation
.end field

.field protected mOneVOnePos:I

.field public mPhonicsContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e3
    .end annotation
.end field

.field public mPhonicsIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e5
    .end annotation
.end field

.field public mPhonicsTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903ec
    .end annotation
.end field

.field public mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090407
    .end annotation
.end field

.field private mRealScreenHeight:I

.field private mRealScreenWidth:I

.field public mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09043e
    .end annotation
.end field

.field public mRightBabyIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090468
    .end annotation
.end field

.field public mRightFindCurrent:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09046d
    .end annotation
.end field

.field protected mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

.field public mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09047b
    .end annotation
.end field

.field private mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

.field public mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09047c
    .end annotation
.end field

.field private mRoadmapTotalWidth:I

.field private mServerLV:Ljava/lang/String;

.field public mSpeakContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090516
    .end annotation
.end field

.field public mSpeakIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090517
    .end annotation
.end field

.field public mSpeakText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090518
    .end annotation
.end field

.field public mStatusContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09052b
    .end annotation
.end field

.field public mTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090580
    .end annotation
.end field

.field public mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090584
    .end annotation
.end field

.field public mTopContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0905a0
    .end annotation
.end field

.field public mTotalCourse:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0905b1
    .end annotation
.end field

.field protected mType:Ljava/lang/String;

.field public mWordContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090622
    .end annotation
.end field

.field public mWordIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090624
    .end annotation
.end field

.field public mWordText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09062a
    .end annotation
.end field

.field public mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

.field public reviewTv:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090461
    .end annotation
.end field

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private scrollXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mEnableAutoShowPage:Z

    .line 190
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 203
    const/4 v0, -0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mOneVOnePos:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
    .param p1, "x1"    # F

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollFrontScene(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->showFindCurrent()V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->enableShowOneVOneCoursePayPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->dismissGuideView()V

    return-void
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollToCurrent(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->showAnim(Landroid/view/View;)V

    return-void
.end method

.method private addEventObserver()V
    .locals 3

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 454
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$4;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    .line 455
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 453
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 474
    return-void
.end method

.method private addFootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 400
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    if-eqz v2, :cond_1

    .line 401
    const v2, 0x7f0b01a6

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 402
    .local v1, "footView":Landroid/view/View;
    const v2, 0x7f0902d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    .local v0, "changeLevel":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    sget-object v2, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->roadsign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 406
    :cond_0
    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$3;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v2, v1, v4, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setFooterView(Landroid/view/View;II)I

    .line 414
    .end local v0    # "changeLevel":Landroid/widget/ImageView;
    .end local v1    # "footView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private addHeaderData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 390
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;-><init>()V

    .line 391
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 392
    .local v0, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 394
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 396
    .end local v1    # "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 397
    return-void
.end method

.method private checkShowAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .local v0, "showWord":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "showWord":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$7;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1035
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1037
    :cond_0
    return-void
.end method

.method private dismissGuideView()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->dismissGuideView()V

    .line 481
    :cond_0
    return-void
.end method

.method private enableShowOneVOneCoursePayPage()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mEnableShowOneVOnePurchasePage:Z

    .line 485
    return-void
.end method

.method private getCurrentPos()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 673
    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    move v0, v3

    .line 688
    :goto_0
    return v0

    .line 675
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 676
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 678
    .local v1, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 684
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    .line 685
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 675
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    .end local v1    # "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_4
    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    move v0, v3

    goto :goto_0
.end method

.method private getScrollX(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method private getStatusBarHeight()I
    .locals 7

    .prologue
    .line 1155
    const/4 v2, -0x1

    .line 1157
    .local v2, "statusBarHeight":I
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1158
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1165
    .end local v1    # "resourceId":I
    :cond_0
    :goto_0
    return v2

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTypeString()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isPH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "L1PH1v1"

    .line 897
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private goSwitchLvPage(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f010020

    const v5, 0x7f01001f

    .line 596
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 597
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 598
    .local v3, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 600
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 601
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "type"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "server_lv"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, "SOURCE"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 606
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 608
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 614
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 615
    const v4, 0x7f090386

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 616
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 620
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 621
    return-void

    .line 611
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V
    .locals 7
    .param p1, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 1079
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1080
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1081
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "mcteplete"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1082
    const-string v5, "id"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v5, "modle_bean"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1084
    const-string v5, "type"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isPH()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1087
    if-le p2, v2, :cond_1

    .line 1091
    .local v2, "enablePostOneVOnePurchaseEvent":Z
    :goto_0
    const-string v5, "flag"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1092
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1093
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1094
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1096
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1101
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    .line 1103
    .local v4, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1104
    const v5, 0x7f090386

    sget-object v6, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1105
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1109
    :goto_2
    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 1110
    return-void

    .line 1087
    .end local v2    # "enablePostOneVOnePurchaseEvent":Z
    .end local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1089
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "enablePostOneVOnePurchaseEvent":Z
    goto :goto_0

    .line 1099
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1107
    .restart local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_4
    invoke-virtual {v4, v3}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_2
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 505
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    .line 507
    const-string v1, "server_lv"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    .line 509
    :cond_0
    return-void
.end method

.method private hideTip()V
    .locals 2

    .prologue
    .line 569
    const-string v0, "SHOW_ROADMAP_LEVEL_TIPS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    :cond_0
    return-void
.end method

.method private initBgAdapter()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 322
    return-void
.end method

.method private initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 5
    .param p1, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    .line 517
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    .line 518
    .local v2, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 529
    :cond_0
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 520
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 521
    .local v3, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const/4 v1, 0x0

    .line 522
    .local v1, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .end local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v4, 0x2

    invoke-direct {v1, v4, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 527
    .restart local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_2
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .end local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .restart local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    goto :goto_1
.end method

.method private initMCRoadmapBgData()V
    .locals 3

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 326
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080336

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080337

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080338

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080339

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033d

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080330

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080331

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080332

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080333

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080334

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080335

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method private initPHRoadmapBgData()V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033e

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080345

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080346

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080347

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080348

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080349

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080340

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080341

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080342

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080343

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080344

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method private initScrollWidth()V
    .locals 10

    .prologue
    const/high16 v9, 0x42280000    # 42.0f

    const v8, 0x3e8f5c29    # 0.28f

    const/4 v7, 0x1

    .line 823
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    if-nez v5, :cond_0

    .line 876
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 827
    const/4 v4, 0x0

    .line 828
    .local v4, "width":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v2

    .line 829
    .local v2, "mRealScreenWidth":I
    const/4 v3, 0x0

    .line 853
    .local v3, "totalWidth":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 855
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 856
    .local v1, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 857
    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v4, v5

    .line 858
    if-ne v0, v7, :cond_1

    .line 859
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 871
    :cond_1
    :goto_2
    add-int/2addr v3, v4

    .line 872
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 861
    :cond_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 862
    int-to-float v5, v2

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 863
    if-ne v0, v7, :cond_1

    .line 864
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_2

    .line 866
    :cond_3
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 867
    int-to-float v5, v2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    goto :goto_2

    .line 868
    :cond_4
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 869
    int-to-float v5, v2

    mul-float/2addr v5, v8

    float-to-int v4, v5

    goto :goto_2

    .line 874
    .end local v1    # "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_5
    const/high16 v5, 0x43aa0000    # 340.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    add-int/2addr v3, v5

    .line 875
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private isFragmentShow()Z
    .locals 3

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1115
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
    const/4 v1, 0x1

    .line 1118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMc()Z
    .locals 2

    .prologue
    .line 927
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPH()Z
    .locals 2

    .prologue
    .line 932
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private readyShowAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isFragmentShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->showAnim(Landroid/view/View;)V

    .line 1016
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerPurchasedReceiver()V
    .locals 2

    .prologue
    .line 1190
    new-instance v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    .line 1191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1192
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1194
    return-void
.end method

.method private reportAmplitude()V
    .locals 4

    .prologue
    .line 488
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 489
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "MC"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "MC View"

    .line 491
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 492
    return-void

    .line 490
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    const-string v0, "Phonics View"

    goto :goto_0
.end method

.method private reportFindCurrentAmp()V
    .locals 3

    .prologue
    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 665
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Restoration Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 669
    return-void
.end method

.method private reportIdentifyAmplitude()V
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Money Sign"

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void

    .line 880
    :cond_0
    const-string v0, "B"

    goto :goto_0
.end method

.method private reportListen()V
    .locals 3

    .prologue
    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "B1MC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Listen Roadmap Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1319
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;->requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private scrollFrontScene(F)V
    .locals 4
    .param p1, "dx"    # F

    .prologue
    .line 888
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapTotalWidth:I

    int-to-float v2, v2

    div-float v1, p1, v2

    .line 889
    .local v1, "per":F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mTotalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 890
    .local v0, "dis":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 891
    return-void
.end method

.method private scrollToCurrent(Z)V
    .locals 13
    .param p1, "isSmooth"    # Z

    .prologue
    const/4 v11, 0x0

    .line 633
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v8

    .line 634
    .local v8, "position":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v6

    .line 635
    .local v6, "firstVisibleChildView":Landroid/view/View;
    if-nez v6, :cond_0

    .line 651
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getCurrentPos()I

    move-result v4

    .line 639
    .local v4, "currentPos":I
    add-int/lit8 v3, v4, 0x1

    .line 640
    .local v3, "currentNextPos":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 641
    .local v2, "curScroll":I
    invoke-direct {p0, v4, v11}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getScrollX(II)I

    move-result v1

    .line 642
    .local v1, "curPosScroll":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v0, v12, v10

    .line 643
    .local v0, "curItemWidth":I
    iget v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRealScreenWidth:I

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v12, v0, 0x2

    sub-int v7, v10, v12

    .line 644
    .local v7, "halfScreen":I
    sub-int v10, v1, v7

    if-gez v10, :cond_1

    move v9, v11

    .line 645
    .local v9, "scroll":I
    :goto_1
    sub-int v5, v9, v2

    .line 646
    .local v5, "dx":I
    if-eqz p1, :cond_2

    .line 647
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5, v11}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0

    .line 644
    .end local v5    # "dx":I
    .end local v9    # "scroll":I
    :cond_1
    sub-int v9, v1, v7

    goto :goto_1

    .line 649
    .restart local v5    # "dx":I
    .restart local v9    # "scroll":I
    :cond_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5, v11}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method private setMainTitle()V
    .locals 5

    .prologue
    .line 363
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    move-result-object v0

    .line 365
    .local v0, "levelInfo":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e3b\u7ebf\u8bfe\u7a0b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u79cd\u5b50\u8def\u7ebf0-1\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u840c\u82bd\u8def\u7ebf1-2\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isPH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showAnim(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1040
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1042
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1043
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 1044
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1047
    return-void
.end method

.method private showFindCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 418
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    .line 419
    .local v0, "fvPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    .line 420
    .local v1, "lvPos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    if-ge v2, v0, :cond_0

    .line 421
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    :goto_0
    return-void

    .line 423
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentPos:I

    if-le v2, v1, :cond_1

    .line 424
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOrHideStatusContainer(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 985
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 986
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v2, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setVisibility(I)V

    .line 990
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 992
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 994
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 995
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 997
    :cond_2
    return-void

    .end local v0    # "visibility":I
    :cond_3
    move v0, v1

    .line 985
    goto :goto_0
.end method

.method private testReward()V
    .locals 0

    .prologue
    .line 1276
    return-void
.end method


# virtual methods
.method protected buyAllCourse()V
    .locals 7

    .prologue
    .line 560
    const-string v1, ""

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "lesson-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 561
    return-void
.end method

.method public checkAllShowAnim()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1022
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1023
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1024
    return-void
.end method

.method protected converData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 0
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 885
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivityPresenter;-><init>()V

    return-object v0
.end method

.method public doOnItemClick(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1053
    .local v7, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1054
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "lesson-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_2
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1059
    :cond_3
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1060
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1062
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "lesson-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_4
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1066
    :cond_5
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 915
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 916
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 923
    :cond_0
    :goto_0
    return v0

    .line 917
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 918
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 919
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_2
    move v0, v3

    .line 923
    goto :goto_0
.end method

.method findLeftCurrent()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902c1
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollToCurrent(Z)V

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reportFindCurrentAmp()V

    .line 630
    return-void
.end method

.method findRightCurrent()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f09046d
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollToCurrent(Z)V

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reportFindCurrentAmp()V

    .line 660
    return-void
.end method

.method public getBranch()Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 953
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

    goto :goto_0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;
    .locals 0

    .prologue
    .line 218
    return-object p0
.end method

.method public goPurchaseRoadMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "lib"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "plan"    # Ljava/lang/String;
    .param p4, "lv"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1122
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1123
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Item_id"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "none"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1125
    const-string v5, "Type"

    const-string v4, "MC"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MC"

    :goto_1
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :goto_2
    const-string v4, "AB Test"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Item Purchase View"

    invoke-virtual {v4, v5, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1133
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1136
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/logic/m/f;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lesson-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object p4, v5, v7

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, "url":Ljava/lang/String;
    const-string v4, "key_url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string v4, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1139
    const-string v4, "HIDE SUSPENSION SHARE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1140
    const-string v4, "SUSPENSION_BACK_RECOURSE_ID"

    const v5, 0x7f08019e

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1141
    const-string v4, "KEY_SHOW_SUSPENSION_TOP_MARGIN"

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    const-string v4, "KEY PLAN"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v4, "KEY_LANDSCAPE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1147
    const-string v4, "LESSON TYPE"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    :goto_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1152
    return-void

    .end local v0    # "curBabyId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 1123
    goto/16 :goto_0

    .line 1125
    :cond_1
    const-string v4, "Phonics"

    goto/16 :goto_1

    .line 1127
    :cond_2
    const-string v4, "Type"

    invoke-interface {v2, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1149
    .restart local v0    # "curBabyId":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "LESSON TYPE"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method goReview()V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090461
        }
    .end annotation

    .prologue
    .line 1231
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1262
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1235
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1236
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1237
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "lv"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v5, "typ"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1240
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1241
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1243
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1248
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 1249
    .local v3, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1250
    const v5, 0x7f090386

    sget-object v6, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v2, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1251
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/review/ReviewFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1255
    :goto_2
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 1257
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1258
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "ID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Review View"

    invoke-virtual {v5, v6, v4}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1261
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "fragmentTransaction":Landroid/support/v4/app/an;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->testReward()V

    goto :goto_0

    .line 1246
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1253
    .restart local v3    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_4
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_2
.end method

.method public gotoAudioPlay()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902e0
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1309
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&from=roadmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1311
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reportListen()V

    goto :goto_0
.end method

.method protected initAdapter()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    .line 534
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V

    .line 535
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V

    .line 536
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->updateData(Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 540
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v3

    .line 903
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 904
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 906
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 907
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isOneVOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 905
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 911
    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAllCompleteInCallBack()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v0

    return v0
.end method

.method public isAllZero()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1001
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1002
    .local v3, "words":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1003
    .local v2, "sentences":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1004
    .local v1, "phonics":I
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 1006
    .end local v1    # "phonics":I
    .end local v2    # "sentences":I
    .end local v3    # "words":I
    :cond_0
    :goto_0
    return v4

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBegin()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 970
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v5, :cond_1

    .line 980
    :cond_0
    :goto_0
    return v4

    .line 973
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 974
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 975
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 976
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 977
    if-ne v0, v3, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 974
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isBeginInCallBack()Z
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isBegin()Z

    move-result v0

    return v0
.end method

.method public isLV1InCallBack()Z
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isLv1()Z

    move-result v0

    return v0
.end method

.method public isLv1()Z
    .locals 2

    .prologue
    .line 966
    const-string v0, "Lv1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPHInCallBack()Z
    .locals 1

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isPH()Z

    move-result v0

    return v0
.end method

.method onBackIconClick()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->finish()V

    .line 547
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCreateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1036

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1185
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 1187
    :cond_0
    return-void
.end method

.method onBuyAll()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0900e6
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->buyAllCourse()V

    goto :goto_0
.end method

.method onBuyOneVOne()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0900e5
        }
    .end annotation

    .prologue
    .line 577
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 580
    :cond_0
    const-string v0, "Roadmap"

    .line 581
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    .line 584
    :cond_1
    const-string v1, "1v1Roadmap View"

    invoke-static {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClassIconClick()V
    .locals 2

    .prologue
    .line 958
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasBranch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

    .line 960
    .local v0, "branch":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 1284
    return-void
.end method

.method onClickLvBtn()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902cf
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->hideTip()V

    .line 591
    const-string v0, "Change"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    .line 593
    :cond_0
    return-void
.end method

.method onClickTip()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090580
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->hideTip()V

    .line 566
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f080140

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 223
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->setContentView(I)V

    .line 225
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRealScreenWidth:I

    .line 226
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->N()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRealScreenHeight:I

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCreateTime:J

    .line 228
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->handleIntent()V

    .line 229
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->addEventObserver()V

    .line 230
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->registerPurchasedReceiver()V

    .line 232
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 233
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLessonTypeTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0f0121

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 239
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v6

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    .line 240
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f080365

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 239
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object v3

    iget v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRealScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRealScreenHeight:I

    div-int/lit8 v7, v7, 0x2

    .line 241
    invoke-virtual {v3, v6, v7}, Lcom/bumptech/glide/g;->e(II)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 242
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    .line 243
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 248
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 249
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 250
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 251
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipChildren(Z)V

    .line 252
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 253
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 270
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 272
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 273
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 274
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    const-string v6, "MC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initMCRoadmapBgData()V

    .line 287
    :goto_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initBgAdapter()V

    .line 288
    const v3, 0x7f090213

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, "stickFloatingView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 297
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 298
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLeftBabyIv:Landroid/widget/ImageView;

    .line 300
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 302
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 303
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 304
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRightBabyIv:Landroid/widget/ImageView;

    .line 306
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 308
    const-string v3, "SHOW_ROADMAP_LEVEL_TIPS"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 310
    .local v0, "hasClickTip":Z
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-nez v0, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 314
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->setMainTitle()V

    .line 316
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reportAmplitude()V

    .line 317
    return-void

    .line 234
    .end local v0    # "hasClickTip":Z
    .end local v1    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v2    # "stickFloatingView":Landroid/view/View;
    :cond_1
    const v3, 0x7f0f015c

    goto/16 :goto_0

    .line 240
    :cond_2
    const v3, 0x7f08036b

    goto/16 :goto_1

    .line 284
    .restart local v1    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_3
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initPHRoadmapBgData()V

    goto/16 :goto_2

    .restart local v0    # "hasClickTip":Z
    .restart local v2    # "stickFloatingView":Landroid/view/View;
    :cond_4
    move v3, v5

    .line 310
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 1171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->cancelAnim()V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    if-eqz v0, :cond_1

    .line 1175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1177
    :cond_1
    return-void
.end method

.method public onItemChildClick(Lcom/c/a/a/a/c;Landroid/view/View;I)V
    .locals 4
    .param p1, "adapter"    # Lcom/c/a/a/a/c;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1290
    :try_start_0
    invoke-virtual {p1}, Lcom/c/a/a/a/c;->getData()Ljava/util/List;

    move-result-object v0

    .line 1291
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 1292
    .local v1, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1293
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1294
    invoke-virtual {p0, p3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->doOnItemClick(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    .end local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_1
    :goto_0
    return-void

    .line 1297
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onReceivedSuccessPayResult(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;)V
    .locals 14
    .param p1, "skuBridge"    # Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 1200
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->canShareLessonReferral:Z

    if-nez v2, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v10

    .line 1204
    .local v10, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/logic/m/f;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "lesson-referral.html?uid=%s&oid=%s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    .local v1, "shareUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    move-result-object v0

    .line 1206
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    const-string v4, "\u5b9d\u8d1d\u82f1\u8bed\u542f\u8499\u8bfe\u7a0b\uff0c\u624b\u6162\u65e0"

    .line 1207
    .local v4, "content":Ljava/lang/String;
    const-string v3, "\u300c\u53fd\u91cc\u5471\u5566\u300d\u63d0\u9192\uff1a\u60a8\u6709\u4e00\u4e2a\u00a518.88\u7684\u798f\u888b\u5f85\u9886\u53d6"

    .line 1208
    .local v3, "title":Ljava/lang/String;
    const-string v2, ""

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, "Present Share"

    invoke-virtual/range {v0 .. v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    .line 1210
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v11

    .line 1211
    .local v11, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1212
    const v2, 0x7f090386

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2, v0, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1213
    sget-object v2, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1217
    :goto_1
    invoke-virtual {v11}, Landroid/support/v4/app/an;->i()I

    .line 1220
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1221
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v5, "item Purchase"

    invoke-interface {v13, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v5, "Present Share Dialoge"

    invoke-virtual {v2, v5, v13}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1224
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .end local v1    # "shareUrl":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v10    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    .end local v11    # "fragmentTransaction":Landroid/support/v4/app/an;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v12

    .line 1225
    .local v12, "ise":Ljava/lang/IllegalStateException;
    invoke-static {v12}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1215
    .end local v12    # "ise":Ljava/lang/IllegalStateException;
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .restart local v1    # "shareUrl":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v10    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    .restart local v11    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_2
    :try_start_1
    invoke-virtual {v11, v0}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onRequestError()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 8
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 698
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 700
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reportIdentifyAmplitude()V

    .line 702
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->converData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 704
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v3, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mWordText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mWordIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803cf

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 708
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 709
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 713
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasSpeak()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 714
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mSpeakText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mSpeakIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803cb

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 716
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 717
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 721
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasPhonics()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 722
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mPhonicsTxt:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mPhonicsIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803c7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 724
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 725
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 729
    :cond_4
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 730
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCurrentCourse:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->status:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$StatusBean;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$StatusBean;->cur:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :cond_5
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 734
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mTotalCourse:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->status:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$StatusBean;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$StatusBean;->total:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u8bfe"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_6
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 738
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurCourseNum()F

    move-result v3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurTotalNum()F

    move-result v6

    div-float v2, v3, v6

    .line 739
    .local v2, "percent":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v2, v6, v7}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(FJ)V

    .line 742
    .end local v2    # "percent":F
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuy1V1()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 748
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->addHeaderData()V

    .line 750
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initAdapter()V

    .line 753
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 754
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->addFootView()V

    .line 757
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->initScrollWidth()V

    .line 759
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollXList:Ljava/util/List;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->getItemCount()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadmapTotalWidth:I

    .line 761
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->getItemCount()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getScrollX(II)I

    move-result v0

    .line 763
    .local v0, "calculateX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v6, v0

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setCalculateX(F)V

    .line 765
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v3, :cond_f

    .line 766
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$5;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 781
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 782
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity$6;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_a
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->autopay:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mEnableAutoShowPage:Z

    if-eqz v3, :cond_b

    .line 791
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mEnableAutoShowPage:Z

    .line 794
    :cond_b
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 796
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 797
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 798
    .local v1, "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 804
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :goto_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mType:Ljava/lang/String;

    const-string v6, "MC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isBXMC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->practice:Z

    if-eqz v3, :cond_12

    .line 805
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reviewTv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 811
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 812
    :cond_c
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 816
    :goto_7
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mListenTv:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->audiochannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 818
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLevel:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "calculateX":I
    :cond_d
    move v3, v5

    .line 742
    goto/16 :goto_1

    :cond_e
    move v3, v5

    .line 744
    goto/16 :goto_2

    .line 774
    .restart local v0    # "calculateX":I
    :cond_f
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastServerLv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLastServerLv:Ljava/lang/String;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 775
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_9

    .line 776
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->scrollToCurrent(Z)V

    goto/16 :goto_3

    .restart local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_10
    move v3, v5

    .line 798
    goto :goto_4

    .line 800
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_11
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 807
    :cond_12
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->reviewTv:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 814
    :cond_13
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 496
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 497
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 498
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->requestData()V

    .line 499
    return-void
.end method

.method public scrollBg()V
    .locals 5

    .prologue
    .line 434
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    .line 435
    .local v1, "position":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "firstVisibleChildView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 439
    .local v2, "scrollX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setTranslate(F)V

    .line 442
    return-void
.end method
