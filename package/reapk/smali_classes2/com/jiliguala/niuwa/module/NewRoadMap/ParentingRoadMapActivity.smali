.class public Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
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
        "Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;",
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

.field public static final DX_NEGATIVE:Ljava/lang/String; = "DX_NEGATIVE"

.field public static final DX_POSITIVE:Ljava/lang/String; = "DX_POSITIVE"

.field public static final FOOTER:Ljava/lang/String; = "FOOTER"

.field public static final HEADER:Ljava/lang/String; = "HEADER"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public hasAudo:Z

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

.field private mCurrentItemWidth:F

.field private mCurrentPos:I

.field private mData:Ljava/util/List;
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

.field private mDownRawX:F

.field private mDownRawY:F

.field public mEnableAutoShowPage:Z

.field private mFloatArrawIv:Landroid/widget/TextView;

.field private mFloatUnitPay:Landroid/widget/ImageView;

.field private mFloatingView:Landroid/widget/RelativeLayout;

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

.field private mNormalItemWidth:F

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

.field private mRealGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/Group;",
            ">;"
        }
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

.field private mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

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

.field private mScaledTouchSlop:I

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

.field private mStickItemWidth:F

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

.field private mType:Ljava/lang/String;

.field private mUpRawX:F

.field private mUpRawY:F

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
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    .line 199
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # F

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollFrontScene(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showFindCurrent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNormalItemWidth:F

    return v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->dismissGuideView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->updateStickFloatViewUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findHeaderAndFooterPos()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .param p2, "x2"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    return v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentItemWidth:F

    return v0
.end method

.method private addDividerData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 9
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v6

    .line 1187
    .local v6, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1188
    .local v1, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1, v6}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 1189
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 1190
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1191
    .local v7, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_0

    .line 1193
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;-><init>()V

    .line 1194
    .local v3, "dividerRoadmap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    new-instance v5, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 1195
    .local v5, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    add-int/lit8 v8, v4, 0x1

    add-int v2, v8, v0

    .line 1196
    .local v2, "dividerIndex":I
    invoke-interface {v6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1197
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v8, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1198
    add-int/lit8 v0, v0, 0x1

    .line 1189
    .end local v2    # "dividerIndex":I
    .end local v3    # "dividerRoadmap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v5    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1202
    .end local v7    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_1
    return-void
.end method

.method private addEventObserver()V
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 662
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    .line 663
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 679
    return-void
.end method

.method private addFootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1148
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v2, :cond_1

    .line 1149
    const v2, 0x7f0b01a6

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1150
    .local v1, "footView":Landroid/view/View;
    const v2, 0x7f0902d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1151
    .local v0, "changeLevel":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1152
    sget-object v2, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->roadsign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->g()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 1154
    :cond_0
    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v2, v1, v4, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setFooterView(Landroid/view/View;II)I

    .line 1162
    .end local v0    # "changeLevel":Landroid/widget/ImageView;
    .end local v1    # "footView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private addHeaderData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1118
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;-><init>()V

    .line 1119
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 1120
    .local v0, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_0

    .line 1121
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1122
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1124
    .end local v1    # "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1125
    return-void
.end method

.method private checkShowAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1365
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1366
    .local v0, "showWord":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "showWord":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1367
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1373
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1375
    :cond_0
    return-void
.end method

.method private clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V
    .locals 7
    .param p1, "unitRoadMap"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .prologue
    .line 1615
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1616
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    const-string v0, "\u8bfe\u7a0b\u5c06\u57282.14\u524d\u4e0a\u7ebf\uff0c\u966a\u60a8\u548c\u5b9d\u8d1d\u8fc7\u597d\u5e74!"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1629
    :goto_0
    return-void

    .line 1619
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1622
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    goto :goto_0

    .line 1626
    :cond_2
    const-string v0, "\u5b66\u5b8c\u524d\u9762\u7684\u8bfe\u7a0b\u624d\u53ef\u4ee5\u5b66\u4e60\u54e6\uff5e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissGuideView()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dismissGuideView()V

    .line 686
    :cond_0
    return-void
.end method

.method private findHeaderAndFooterPos()V
    .locals 5

    .prologue
    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    .line 586
    .local v1, "firstVisibleItemPosition":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v3

    .line 588
    .local v3, "lastVisibleItemPosition":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_2

    .line 591
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 593
    .local v0, "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iput v2, v4, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    .line 596
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iput v2, v4, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "i":I
    .end local v3    # "lastVisibleItemPosition":I
    :catch_0
    move-exception v4

    .line 604
    :cond_2
    return-void
.end method

.method private getCurrentPos()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 918
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 919
    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    move v0, v3

    .line 935
    :goto_0
    return v0

    .line 921
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 922
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 923
    .local v1, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 928
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    .line 932
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 921
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 935
    .end local v1    # "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_4
    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    move v0, v3

    goto :goto_0
.end method

.method private getScrollX(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

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
    .line 1498
    const/4 v2, -0x1

    .line 1500
    .local v2, "statusBarHeight":I
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1501
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 1503
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1508
    .end local v1    # "resourceId":I
    :cond_0
    :goto_0
    return v2

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTypeString()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isPH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const-string v0, "L1PH1v1"

    .line 1174
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private goParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V
    .locals 3
    .param p1, "unitRoadMap"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .prologue
    .line 1632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1633
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1635
    return-void
.end method

.method private goSwitchLvPage(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f010020

    const v5, 0x7f01001f

    .line 842
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 843
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 844
    .local v3, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 846
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 847
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "type"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v4, "server_lv"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v4, "SOURCE"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 851
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 852
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 854
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 860
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 861
    const v4, 0x7f090386

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 862
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 866
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 867
    return-void

    .line 857
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 864
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

    .line 1422
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1423
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "mcteplete"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1425
    const-string v5, "id"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v5, "modle_bean"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1427
    const-string v5, "type"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isPH()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1430
    if-le p2, v2, :cond_1

    .line 1434
    .local v2, "enablePostOneVOnePurchaseEvent":Z
    :goto_0
    const-string v5, "flag"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1435
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1436
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1437
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1439
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1444
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    .line 1446
    .local v4, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1447
    const v5, 0x7f090386

    sget-object v6, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1448
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1452
    :goto_2
    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 1453
    return-void

    .line 1430
    .end local v2    # "enablePostOneVOnePurchaseEvent":Z
    .end local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1432
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "enablePostOneVOnePurchaseEvent":Z
    goto :goto_0

    .line 1442
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1450
    .restart local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_4
    invoke-virtual {v4, v3}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_2
.end method

.method private groupData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 10
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 1206
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1208
    .local v5, "roadMapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMap()Ljava/util/List;

    move-result-object v8

    .line 1210
    .local v8, "unitRoadMap":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;>;"
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1236
    :cond_0
    return-void

    .line 1212
    :cond_1
    const/4 v9, 0x4

    invoke-static {v5, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/CollectionGroupUtil;->groupListByQuantity(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1214
    .local v0, "datas":Ljava/util/ArrayList;
    move-object v2, v0

    .line 1216
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealGroups:Ljava/util/List;

    .line 1218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1219
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1220
    .local v7, "roadmapBeans":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;-><init>()V

    .line 1221
    .local v1, "group":Lcom/jiliguala/niuwa/module/NewRoadMap/Group;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1222
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1223
    .local v6, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    if-nez v4, :cond_2

    .line 1224
    const-string v9, "header"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    .line 1230
    :goto_2
    iput-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->group:Lcom/jiliguala/niuwa/module/NewRoadMap/Group;

    .line 1221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1225
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_3

    .line 1226
    const-string v9, "footer"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    goto :goto_2

    .line 1228
    :cond_3
    const-string v9, "body"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    goto :goto_2

    .line 1232
    .end local v6    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->setData(Ljava/util/List;)V

    .line 1233
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealGroups:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 706
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    .line 707
    const-string v1, "server_lv"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    .line 709
    :cond_0
    return-void
.end method

.method private hasLevelChoiceFragmentShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1705
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 1706
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    :cond_0
    :goto_0
    return v2

    .line 1707
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1708
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/bumptech/glide/d/n;

    if-nez v4, :cond_2

    .line 1709
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private hideTip()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "SHOW_ROADMAP_LEVEL_TIPS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 816
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    :cond_0
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    .line 734
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V

    .line 735
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V

    .line 736
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->updateData(Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 740
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private initBgAdapter()V
    .locals 2

    .prologue
    .line 747
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 749
    return-void
.end method

.method private initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 5
    .param p1, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 716
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    .line 717
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    .line 718
    .local v2, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 720
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 721
    .local v3, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const/4 v1, 0x0

    .line 722
    .local v1, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 723
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .end local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v4, 0x2

    invoke-direct {v1, v4, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 727
    .restart local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
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
    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 753
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080336

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080337

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080338

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080339

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033d

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080330

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080331

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080332

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080333

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080334

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080335

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method private initPHRoadmapBgData()V
    .locals 3

    .prologue
    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 772
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033e

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080345

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080346

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080347

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080348

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080349

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08034c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080340

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080341

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080342

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080343

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080344

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    return-void
.end method

.method private initScrollWidth()V
    .locals 10

    .prologue
    const/high16 v9, 0x42280000    # 42.0f

    const/high16 v8, 0x42100000    # 36.0f

    const v7, 0x3e8f5c29    # 0.28f

    .line 1082
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    if-nez v4, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1086
    const/4 v3, 0x0

    .line 1087
    .local v3, "width":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v1

    .line 1088
    .local v1, "mRealScreenWidth":I
    const/4 v2, 0x0

    .line 1089
    .local v2, "totalWidth":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 1091
    .local v0, "mDatum":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1092
    int-to-float v4, v1

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v4, v6

    float-to-int v3, v4

    .line 1093
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1094
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1110
    :cond_1
    :goto_2
    add-int/2addr v2, v3

    .line 1111
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1095
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1096
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1098
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 1099
    int-to-float v4, v1

    mul-float/2addr v4, v7

    float-to-int v3, v4

    .line 1100
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1101
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1102
    :cond_4
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1103
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1105
    :cond_5
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 1106
    int-to-float v4, v1

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v6

    float-to-int v3, v4

    goto :goto_2

    .line 1107
    :cond_6
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 1108
    int-to-float v4, v1

    mul-float/2addr v4, v7

    float-to-int v3, v4

    goto :goto_2

    .line 1113
    .end local v0    # "mDatum":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_7
    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 1114
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private isFragmentShow()Z
    .locals 3

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1458
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    const/4 v1, 0x1

    .line 1461
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMc()Z
    .locals 2

    .prologue
    .line 1265
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPH()Z
    .locals 2

    .prologue
    .line 1270
    const-string v0, "PH"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onClickItem(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1390
    .local v7, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1392
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_2
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1396
    :cond_3
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1397
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1399
    iget-object v1, v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 1401
    :cond_4
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1403
    :cond_5
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1404
    const-string v0, "\u5b66\u5b8c\u524d\u9762\u7684\u8bfe\u7a0b\u624d\u53ef\u4ee5\u5b66\u4e60\u54e6\uff5e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1405
    :cond_6
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    const-string v0, "\u8bfe\u7a0b\u5c06\u57282.14\u524d\u4e0a\u7ebf\uff0c\u966a\u60a8\u548c\u5b9d\u8d1d\u8fc7\u597d\u5e74!"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readyShowAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isFragmentShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1356
    :goto_0
    return-void

    .line 1353
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showAnim(Landroid/view/View;)V

    .line 1354
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerPurchasedReceiver()V
    .locals 2

    .prologue
    .line 1533
    new-instance v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    .line 1534
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1535
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1537
    return-void
.end method

.method private reportAmplitude()V
    .locals 4

    .prologue
    .line 689
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v2, "MC"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "MC View"

    .line 692
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 693
    return-void

    .line 691
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    const-string v0, "Phonics View"

    goto :goto_0
.end method

.method private reportFindCurrentAmp()V
    .locals 3

    .prologue
    .line 910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 911
    .local v0, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Restoration Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 915
    return-void
.end method

.method private reportIdentifyAmplitude()V
    .locals 3

    .prologue
    .line 1078
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Money Sign"

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void

    .line 1078
    :cond_0
    const-string v0, "B"

    goto :goto_0
.end method

.method private reportListen()V
    .locals 3

    .prologue
    .line 1729
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1730
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    const-string v2, "B2MC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Listen Roadmap Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1732
    return-void
.end method

.method private reportPresentShareDialoge()V
    .locals 3

    .prologue
    .line 1165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1166
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getTypeString()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Present Share Dialoge"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1168
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;->requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method private scrollFrontScene(F)V
    .locals 4
    .param p1, "dx"    # F

    .prologue
    .line 578
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapTotalWidth:I

    int-to-float v2, v2

    div-float v1, p1, v2

    .line 579
    .local v1, "per":F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mTotalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 580
    .local v0, "dis":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 581
    return-void
.end method

.method private scrollToCurrent(Z)V
    .locals 13
    .param p1, "isSmooth"    # Z

    .prologue
    const/4 v11, 0x0

    .line 879
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v8

    .line 880
    .local v8, "position":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v6

    .line 881
    .local v6, "firstVisibleChildView":Landroid/view/View;
    if-nez v6, :cond_0

    .line 897
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getCurrentPos()I

    move-result v4

    .line 885
    .local v4, "currentPos":I
    add-int/lit8 v3, v4, 0x1

    .line 886
    .local v3, "currentNextPos":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 887
    .local v2, "curScroll":I
    invoke-direct {p0, v4, v11}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v1

    .line 888
    .local v1, "curPosScroll":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v0, v12, v10

    .line 889
    .local v0, "curItemWidth":I
    iget v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v12, v0, 0x2

    sub-int v7, v10, v12

    .line 890
    .local v7, "halfScreen":I
    sub-int v10, v1, v7

    if-gez v10, :cond_1

    move v9, v11

    .line 891
    .local v9, "scroll":I
    :goto_1
    sub-int v5, v9, v2

    .line 892
    .local v5, "dx":I
    if-eqz p1, :cond_2

    .line 893
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5, v11}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0

    .line 890
    .end local v5    # "dx":I
    .end local v9    # "scroll":I
    :cond_1
    sub-int v9, v1, v7

    goto :goto_1

    .line 895
    .restart local v5    # "dx":I
    .restart local v9    # "scroll":I
    :cond_2
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5, v11}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method private setMainTitle()V
    .locals 5

    .prologue
    .line 608
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    move-result-object v0

    .line 610
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

    .line 611
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

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

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u79cd\u5b50\u8def\u7ebf0-1\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u840c\u82bd\u8def\u7ebf1-2\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 625
    :cond_4
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isPH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

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

    .line 1378
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    .line 1379
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1380
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 1382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1385
    return-void
.end method

.method private showFindCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 634
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    .line 635
    .local v0, "fvPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    .line 636
    .local v1, "lvPos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    if-ge v2, v0, :cond_0

    .line 637
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 647
    :goto_0
    return-void

    .line 639
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    if-le v2, v1, :cond_1

    .line 640
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 641
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 644
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOneVOneCoursePayPage()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1179
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1180
    return-void
.end method

.method private showOrHideStatusContainer(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 1323
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1324
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v2, :cond_0

    .line 1326
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v2, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setVisibility(I)V

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1332
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 1333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1335
    :cond_2
    return-void

    .end local v0    # "visibility":I
    :cond_3
    move v0, v1

    .line 1323
    goto :goto_0
.end method

.method private syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V
    .locals 5
    .param p1, "unitRoadMap"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .param p2, "floatView"    # Landroid/widget/RelativeLayout;

    .prologue
    const/16 v3, 0x8

    .line 1138
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800a5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    const v2, 0x7f090060

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    const v2, 0x7f0905d3

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->enablePay()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    const v2, 0x7f090215

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1142
    .local v1, "floatingViewTxt":Landroid/widget/TextView;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    const v2, 0x7f090214

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1144
    .local v0, "floatViewIcon":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    const v3, 0x7f080412

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 1145
    return-void

    .line 1138
    .end local v0    # "floatViewIcon":Landroid/widget/ImageView;
    .end local v1    # "floatingViewTxt":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800b1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 1139
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateStickFloatViewUI()V
    .locals 4

    .prologue
    .line 1128
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1131
    .local v0, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v1

    .line 1132
    .local v1, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    .line 1135
    .end local v0    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAllShowAnim()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1362
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;-><init>()V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-nez v12, :cond_0

    .line 1642
    invoke-super/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 1701
    :goto_0
    return v12

    .line 1644
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->isGuideShowing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1645
    invoke-super/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0

    .line 1650
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_2

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawX:F

    .line 1652
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawY:F

    .line 1654
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1655
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawX:F

    .line 1656
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawY:F

    .line 1659
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hasLevelChoiceFragmentShow()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1660
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1661
    .local v10, "xInstance":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1662
    .local v11, "yInstance":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v13, v13, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    .line 1663
    .local v5, "mHeaderView":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1664
    const v12, 0x7f090213

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1665
    .local v2, "floatItemView":Landroid/view/View;
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 1666
    .local v7, "outLocation":[I
    invoke-virtual {v5, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1667
    new-instance v6, Landroid/graphics/RectF;

    const/4 v12, 0x0

    aget v12, v7, v12

    int-to-float v12, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    aget v14, v7, v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    add-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v7, v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070116

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    add-float v15, v15, v16

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1669
    .local v6, "mLocationRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 1671
    .local v1, "contains":Z
    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    int-to-float v12, v12

    cmpg-float v12, v10, v12

    if-gez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    .line 1672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v13, v13, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1674
    .local v8, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12, v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v9

    .line 1675
    .local v9, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    .line 1676
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1680
    .end local v1    # "contains":Z
    .end local v2    # "floatItemView":Landroid/view/View;
    .end local v6    # "mLocationRect":Landroid/graphics/RectF;
    .end local v7    # "outLocation":[I
    .end local v8    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v9    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v13, v13, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v4

    .line 1681
    .local v4, "mFootView":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 1682
    const v12, 0x7f090213

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1683
    .restart local v2    # "floatItemView":Landroid/view/View;
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 1684
    .restart local v7    # "outLocation":[I
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1687
    new-instance v6, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v7, v13

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x1

    aget v15, v7, v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070116

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    add-float v15, v15, v16

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1688
    .restart local v6    # "mLocationRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 1689
    .restart local v1    # "contains":Z
    const v12, 0x7f090213

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v3, 0x1

    .line 1691
    .local v3, "isVisible":Z
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    int-to-float v12, v12

    cmpg-float v12, v10, v12

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    int-to-float v12, v12

    cmpg-float v12, v11, v12

    if-gez v12, :cond_6

    .line 1692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1693
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v13, v13, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1694
    .restart local v8    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12, v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v9

    .line 1695
    .restart local v9    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    .line 1696
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v3    # "isVisible":Z
    .end local v8    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v9    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1701
    .end local v1    # "contains":Z
    .end local v2    # "floatItemView":Landroid/view/View;
    .end local v4    # "mFootView":Landroid/view/View;
    .end local v5    # "mHeaderView":Landroid/view/View;
    .end local v6    # "mLocationRect":Landroid/graphics/RectF;
    .end local v7    # "outLocation":[I
    .end local v10    # "xInstance":F
    .end local v11    # "yInstance":F
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto/16 :goto_0
.end method

.method public doOnItemClick(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1413
    return-void
.end method

.method public findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 1253
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1254
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1261
    :cond_0
    :goto_0
    return v0

    .line 1255
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1256
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1257
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_2
    move v0, v3

    .line 1261
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
    .line 872
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportFindCurrentAmp()V

    .line 876
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
    .line 902
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportFindCurrentAmp()V

    .line 906
    return-void
.end method

.method public getBranch()Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1291
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

    goto :goto_0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;
    .locals 0

    .prologue
    .line 237
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

    .line 1465
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1466
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Item_id"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "none"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1468
    const-string v5, "Type"

    const-string v4, "MC"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MC"

    :goto_1
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :goto_2
    const-string v4, "AB Test"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Item Purchase View"

    invoke-virtual {v4, v5, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1476
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1479
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

    .line 1480
    .local v3, "url":Ljava/lang/String;
    const-string v4, "key_url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string v4, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    const-string v4, "HIDE SUSPENSION SHARE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1483
    const-string v4, "SUSPENSION_BACK_RECOURSE_ID"

    const v5, 0x7f08019e

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1484
    const-string v4, "KEY_SHOW_SUSPENSION_TOP_MARGIN"

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1486
    const-string v4, "KEY PLAN"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const-string v4, "KEY_LANDSCAPE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1488
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1490
    const-string v4, "LESSON TYPE"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    :goto_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1495
    return-void

    .end local v0    # "curBabyId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 1466
    goto/16 :goto_0

    .line 1468
    :cond_1
    const-string v4, "Phonics"

    goto/16 :goto_1

    .line 1470
    :cond_2
    const-string v4, "Type"

    invoke-interface {v2, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1492
    .restart local v0    # "curBabyId":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "LESSON TYPE"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public gotoAudioPlay()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902e0
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1722
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1723
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

    .line 1724
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportListen()V

    goto :goto_0
.end method

.method public isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 1240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v3

    .line 1241
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1242
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1244
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1245
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isOneVOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1249
    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAllCompleteInCallBack()Z
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v0

    return v0
.end method

.method public isAllZero()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1339
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1340
    .local v3, "words":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1341
    .local v2, "sentences":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1342
    .local v1, "phonics":I
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 1344
    .end local v1    # "phonics":I
    .end local v2    # "sentences":I
    .end local v3    # "words":I
    :cond_0
    :goto_0
    return v4

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBegin()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1308
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v5, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v4

    .line 1311
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1312
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1313
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1314
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1315
    if-ne v0, v3, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1312
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isBeginInCallBack()Z
    .locals 1

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isBegin()Z

    move-result v0

    return v0
.end method

.method public isLV1InCallBack()Z
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v0

    return v0
.end method

.method public isLv1()Z
    .locals 2

    .prologue
    .line 1304
    const-string v0, "Lv1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPHInCallBack()Z
    .locals 1

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isPH()Z

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
    .line 791
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->finish()V

    .line 792
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCreateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1527
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1036

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1528
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 1530
    :cond_0
    return-void
.end method

.method onBuyAll()V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0900e6
        }
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const-string v1, ""

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

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
    .line 823
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 826
    :cond_0
    const-string v0, "Roadmap"

    .line 827
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    .line 830
    :cond_1
    const-string v1, "1v1Roadmap View"

    invoke-static {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClassIconClick()V
    .locals 2

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasBranch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

    .line 1298
    .local v0, "branch":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1299
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1583
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1587
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1588
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1589
    .local v0, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v1

    .line 1590
    .local v1, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1592
    .end local v0    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1583
    :pswitch_data_0
    .packed-switch 0x7f090213
        :pswitch_0
    .end packed-switch
.end method

.method onClickLvBtn()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902cf
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hideTip()V

    .line 837
    const-string v0, "Change"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    .line 839
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
    .line 811
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hideTip()V

    .line 812
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

    .line 242
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    .line 245
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->N()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenHeight:I

    .line 247
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->setContentView(I)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCreateTime:J

    .line 249
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    .line 250
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->handleIntent()V

    .line 251
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addEventObserver()V

    .line 252
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->registerPurchasedReceiver()V

    .line 255
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 256
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLessonTypeTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0f0121

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v6

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    .line 265
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f080365

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 264
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object v3

    iget v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenHeight:I

    div-int/lit8 v7, v7, 0x2

    .line 266
    invoke-virtual {v3, v6, v7}, Lcom/bumptech/glide/g;->e(II)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 271
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 272
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 273
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 274
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipChildren(Z)V

    .line 275
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 278
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 280
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 281
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 282
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v6, "MC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 291
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initMCRoadmapBgData()V

    .line 296
    :goto_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initBgAdapter()V

    .line 297
    const v3, 0x7f090213

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    .line 298
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    const v6, 0x7f090060

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatArrawIv:Landroid/widget/TextView;

    .line 299
    const v3, 0x7f0905d3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatUnitPay:Landroid/widget/ImageView;

    .line 300
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3e8f5c29    # 0.28f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentItemWidth:F

    .line 305
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNormalItemWidth:F

    .line 307
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    .line 309
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 310
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 311
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->setMainTitle()V

    .line 314
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 550
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 553
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 557
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 558
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftBabyIv:Landroid/widget/ImageView;

    .line 560
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 562
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 563
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 564
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 565
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightBabyIv:Landroid/widget/ImageView;

    .line 566
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 568
    const-string v3, "SHOW_ROADMAP_LEVEL_TIPS"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 570
    .local v0, "hasClickTip":Z
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-nez v0, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 574
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportAmplitude()V

    .line 575
    return-void

    .line 257
    .end local v0    # "hasClickTip":Z
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    const v3, 0x7f0f015c

    goto/16 :goto_0

    .line 265
    :cond_3
    const v3, 0x7f08036b

    goto/16 :goto_1

    .line 293
    .restart local v2    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initPHRoadmapBgData()V

    goto/16 :goto_2

    .restart local v0    # "hasClickTip":Z
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move v3, v5

    .line 570
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1513
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 1514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->cancelAnim()V

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    if-eqz v0, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1520
    :cond_1
    return-void
.end method

.method public onItemChildClick(Lcom/c/a/a/a/c;Landroid/view/View;I)V
    .locals 2
    .param p1, "adapter"    # Lcom/c/a/a/a/c;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1576
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902a5

    if-ne v0, v1, :cond_0

    .line 1577
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->onClickItem(I)V

    .line 1579
    :cond_0
    return-void
.end method

.method public onReceivedSuccessPayResult(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;)V
    .locals 14
    .param p1, "skuBridge"    # Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 1543
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->canShareLessonReferral:Z

    if-nez v2, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v10

    .line 1547
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

    .line 1548
    .local v1, "shareUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    move-result-object v0

    .line 1549
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    const-string v4, "\u5b9d\u8d1d\u82f1\u8bed\u542f\u8499\u8bfe\u7a0b\uff0c\u624b\u6162\u65e0"

    .line 1550
    .local v4, "content":Ljava/lang/String;
    const-string v3, "\u300c\u53fd\u91cc\u5471\u5566\u300d\u63d0\u9192\uff1a\u60a8\u6709\u4e00\u4e2a\u00a518.88\u7684\u798f\u888b\u5f85\u9886\u53d6"

    .line 1551
    .local v3, "title":Ljava/lang/String;
    const-string v2, ""

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, "Present Share"

    invoke-virtual/range {v0 .. v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    .line 1553
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v11

    .line 1554
    .local v11, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1555
    const v2, 0x7f090386

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2, v0, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1556
    sget-object v2, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1560
    :goto_1
    invoke-virtual {v11}, Landroid/support/v4/app/an;->i()I

    .line 1563
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1564
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v5, "item Purchase"

    invoke-interface {v13, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v5, "Present Share Dialoge"

    invoke-virtual {v2, v5, v13}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1567
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .end local v1    # "shareUrl":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v10    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    .end local v11    # "fragmentTransaction":Landroid/support/v4/app/an;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v12

    .line 1568
    .local v12, "ise":Ljava/lang/IllegalStateException;
    invoke-static {v12}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1558
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
    .line 941
    return-void
.end method

.method public onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 8
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 945
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 946
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v3, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportIdentifyAmplitude()V

    .line 948
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 949
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803cf

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 951
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 952
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 956
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasSpeak()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 957
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803cb

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 959
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 960
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 964
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasPhonics()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 965
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsTxt:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803c7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 967
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 968
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 972
    :cond_4
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 973
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentCourse:Landroid/widget/TextView;

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

    .line 976
    :cond_5
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 977
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTotalCourse:Landroid/widget/TextView;

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

    .line 980
    :cond_6
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 981
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurCourseNum()F

    move-result v3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurTotalNum()F

    move-result v6

    div-float v2, v3, v6

    .line 982
    .local v2, "percent":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v2, v6, v7}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(FJ)V

    .line 985
    .end local v2    # "percent":F
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 987
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuy1V1()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 993
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->groupData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 995
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addDividerData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 997
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addHeaderData()V

    .line 999
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initAdapter()V

    .line 1001
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1002
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addFootView()V

    .line 1005
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initScrollWidth()V

    .line 1007
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->getItemCount()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapTotalWidth:I

    .line 1009
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->getItemCount()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v0

    .line 1011
    .local v0, "calculateX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v6, v0

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setCalculateX(F)V

    .line 1013
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v3, :cond_10

    .line 1014
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$4;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$4;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1031
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_a

    .line 1033
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$5;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1041
    :cond_a
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1042
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1050
    :cond_b
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->autopay:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    if-eqz v3, :cond_c

    .line 1053
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    .line 1056
    :cond_c
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 1058
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1059
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1060
    .local v1, "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1066
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :goto_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB1MC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/mcphonics/report/LvTypeUtil;->isB2MC(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1067
    :cond_d
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :goto_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->audiochannel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1073
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLevel:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v0    # "calculateX":I
    :cond_e
    move v3, v5

    .line 985
    goto/16 :goto_1

    :cond_f
    move v3, v5

    .line 987
    goto/16 :goto_2

    .line 1024
    .restart local v0    # "calculateX":I
    :cond_10
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastServerLv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastServerLv:Ljava/lang/String;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1025
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_9

    .line 1026
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    goto/16 :goto_3

    .restart local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_11
    move v3, v5

    .line 1060
    goto :goto_4

    .line 1062
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_12
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1069
    :cond_13
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mListenTv:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 697
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 698
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 699
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->requestData()V

    .line 700
    return-void
.end method

.method public scrollBg()V
    .locals 5

    .prologue
    .line 650
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    .line 651
    .local v1, "position":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, "firstVisibleChildView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 653
    .local v2, "scrollX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setTranslate(F)V

    .line 654
    return-void
.end method
