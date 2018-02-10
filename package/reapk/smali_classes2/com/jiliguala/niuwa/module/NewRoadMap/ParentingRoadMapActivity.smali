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

.field private mFloatArrawIv:Landroid/widget/ImageView;

.field private mFloatUnitPay:Landroid/widget/ImageView;

.field private mFloatingView:Landroid/widget/RelativeLayout;

.field private mLV:Ljava/lang/String;

.field public mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

.field private mLastServerLv:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field public mLeftBabyIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902b7
    .end annotation
.end field

.field public mLeftFindCurrent:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902bb
    .end annotation
.end field

.field public mLessonTypeTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902c8
    .end annotation
.end field

.field public mLoadingProgressContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0902e7
    .end annotation
.end field

.field public mNewRoadMapRoot:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09037f
    .end annotation
.end field

.field private mNormalItemWidth:F

.field public mPhonicsContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903dc
    .end annotation
.end field

.field public mPhonicsIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903de
    .end annotation
.end field

.field public mPhonicsTxt:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0903e5
    .end annotation
.end field

.field public mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090400
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

.field private mRealScreenWidth:I

.field public mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090437
    .end annotation
.end field

.field public mRightBabyIv:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09045f
    .end annotation
.end field

.field public mRightFindCurrent:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090464
    .end annotation
.end field

.field private mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

.field public mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090472
    .end annotation
.end field

.field private mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

.field public mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090473
    .end annotation
.end field

.field private mRoadmapTotalWidth:I

.field private mScaledTouchSlop:I

.field private mServerLV:Ljava/lang/String;

.field public mSpeakContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09050c
    .end annotation
.end field

.field public mSpeakIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09050d
    .end annotation
.end field

.field public mSpeakText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09050e
    .end annotation
.end field

.field public mStatusContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090521
    .end annotation
.end field

.field private mStickItemWidth:F

.field public mTip:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090576
    .end annotation
.end field

.field public mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09057a
    .end annotation
.end field

.field public mTopContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090596
    .end annotation
.end field

.field public mTotalCourse:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f0905a7
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mUpRawX:F

.field private mUpRawY:F

.field public mWordContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090618
    .end annotation
.end field

.field public mWordIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f09061a
    .end annotation
.end field

.field public mWordText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090620
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
    .line 177
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;-><init>()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    .line 191
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 205
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
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollFrontScene(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showFindCurrent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNormalItemWidth:F

    return v0
.end method

.method static synthetic access$1100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->dismissGuideView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->updateStickFloatViewUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showAnim(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findHeaderAndFooterPos()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .param p2, "x2"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    return v0
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 79
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentItemWidth:F

    return v0
.end method

.method private addDividerData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 9
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v6

    .line 1160
    .local v6, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1161
    .local v1, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1, v6}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 1162
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 1163
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1164
    .local v7, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_0

    .line 1166
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;-><init>()V

    .line 1167
    .local v3, "dividerRoadmap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    new-instance v5, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 1168
    .local v5, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    add-int/lit8 v8, v4, 0x1

    add-int v2, v8, v0

    .line 1169
    .local v2, "dividerIndex":I
    invoke-interface {v6, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1170
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v8, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    .line 1162
    .end local v2    # "dividerIndex":I
    .end local v3    # "dividerRoadmap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v5    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1175
    .end local v7    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_1
    return-void
.end method

.method private addEventObserver()V
    .locals 3

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 651
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$3;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    .line 652
    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 650
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 668
    return-void
.end method

.method private addFootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1121
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v2, :cond_1

    .line 1122
    const v2, 0x7f0b01a1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1123
    .local v1, "footView":Landroid/view/View;
    const v2, 0x7f0902ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1124
    .local v0, "changeLevel":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1125
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

    .line 1127
    :cond_0
    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$7;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v2, v1, v4, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setFooterView(Landroid/view/View;II)I

    .line 1135
    .end local v0    # "changeLevel":Landroid/widget/ImageView;
    .end local v1    # "footView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private addHeaderData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1091
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;-><init>()V

    .line 1092
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 1093
    .local v0, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_0

    .line 1094
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1095
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1097
    .end local v1    # "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1098
    return-void
.end method

.method private checkShowAnim(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1339
    .local v0, "showWord":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "showWord":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1340
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$8;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1346
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1348
    :cond_0
    return-void
.end method

.method private clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V
    .locals 7
    .param p1, "unitRoadMap"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .prologue
    .line 1588
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1589
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    const-string v0, "\u8bfe\u7a0b\u5c06\u57282.14\u524d\u4e0a\u7ebf\uff0c\u966a\u60a8\u548c\u5b9d\u8d1d\u8fc7\u597d\u5e74!"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 1602
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
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

    .line 1595
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    goto :goto_0

    .line 1599
    :cond_2
    const-string v0, "\u5b66\u5b8c\u524d\u9762\u7684\u8bfe\u7a0b\u624d\u53ef\u4ee5\u5b66\u4e60\u54e6\uff5e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissGuideView()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dismissGuideView()V

    .line 675
    :cond_0
    return-void
.end method

.method private findHeaderAndFooterPos()V
    .locals 5

    .prologue
    .line 573
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    .line 575
    .local v1, "firstVisibleItemPosition":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v3

    .line 577
    .local v3, "lastVisibleItemPosition":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_2

    .line 580
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 582
    .local v0, "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iput v2, v4, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    .line 585
    :cond_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iput v2, v4, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    .end local v0    # "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "firstVisibleItemPosition":I
    .end local v2    # "i":I
    .end local v3    # "lastVisibleItemPosition":I
    :catch_0
    move-exception v4

    .line 593
    :cond_2
    return-void
.end method

.method private getCurrentPos()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 901
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    if-nez v2, :cond_0

    .line 902
    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    move v0, v3

    .line 918
    :goto_0
    return v0

    .line 904
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 905
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 906
    .local v1, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 910
    :cond_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 911
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 914
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    .line 915
    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    goto :goto_0

    .line 904
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 918
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
    .line 646
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
    .line 1471
    const/4 v2, -0x1

    .line 1473
    .local v2, "statusBarHeight":I
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1474
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 1476
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1481
    .end local v1    # "resourceId":I
    :cond_0
    :goto_0
    return v2

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTypeString()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isPH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    const-string v0, "L1PH1v1"

    .line 1147
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
    .line 1605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1606
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1608
    return-void
.end method

.method private goSwitchLvPage(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f01001e

    const v5, 0x7f01001d

    .line 825
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 826
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 827
    .local v3, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 829
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "type"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v4, "server_lv"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v4, "SOURCE"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 835
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 837
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 843
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 844
    const v4, 0x7f09037f

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 845
    sget-object v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 849
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 850
    return-void

    .line 840
    :cond_1
    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 847
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

    .line 1395
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1396
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "mcteplete"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1398
    const-string v5, "id"

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v5, "modle_bean"

    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1400
    const-string v5, "type"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isPH()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1403
    if-le p2, v2, :cond_1

    .line 1407
    .local v2, "enablePostOneVOnePurchaseEvent":Z
    :goto_0
    const-string v5, "flag"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1408
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1409
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1410
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1411
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1412
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1417
    .end local v0    # "arguments":Landroid/os/Bundle;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v4

    .line 1419
    .local v4, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1420
    const v5, 0x7f09037f

    sget-object v6, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1421
    sget-object v5, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1425
    :goto_2
    invoke-virtual {v4}, Landroid/support/v4/app/an;->i()I

    .line 1426
    return-void

    .line 1403
    .end local v2    # "enablePostOneVOnePurchaseEvent":Z
    .end local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1405
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "enablePostOneVOnePurchaseEvent":Z
    goto :goto_0

    .line 1415
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1423
    .restart local v4    # "fragmentTransaction":Landroid/support/v4/app/an;
    :cond_4
    invoke-virtual {v4, v3}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_2
.end method

.method private groupData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 10
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 1179
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1181
    .local v5, "roadMapData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMap()Ljava/util/List;

    move-result-object v8

    .line 1183
    .local v8, "unitRoadMap":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;>;"
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1209
    :cond_0
    return-void

    .line 1185
    :cond_1
    const/4 v9, 0x4

    invoke-static {v5, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/CollectionGroupUtil;->groupListByQuantity(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1187
    .local v0, "datas":Ljava/util/ArrayList;
    move-object v2, v0

    .line 1189
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealGroups:Ljava/util/List;

    .line 1191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1192
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1193
    .local v7, "roadmapBeans":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;-><init>()V

    .line 1194
    .local v1, "group":Lcom/jiliguala/niuwa/module/NewRoadMap/Group;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 1195
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1196
    .local v6, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    if-nez v4, :cond_2

    .line 1197
    const-string v9, "header"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    .line 1203
    :goto_2
    iput-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->group:Lcom/jiliguala/niuwa/module/NewRoadMap/Group;

    .line 1194
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1198
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_3

    .line 1199
    const-string v9, "footer"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    goto :goto_2

    .line 1201
    :cond_3
    const-string v9, "body"

    invoke-virtual {v6, v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->setTag(Ljava/lang/String;)V

    goto :goto_2

    .line 1205
    .end local v6    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/jiliguala/niuwa/module/NewRoadMap/Group;->setData(Ljava/util/List;)V

    .line 1206
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealGroups:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 695
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    .line 696
    const-string v1, "server_lv"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    .line 698
    :cond_0
    return-void
.end method

.method private hasLevelChoiceFragmentShow()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1678
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->g()Ljava/util/List;

    move-result-object v1

    .line 1679
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1685
    :cond_0
    :goto_0
    return v2

    .line 1680
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

    .line 1681
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lcom/bumptech/glide/d/n;

    if-nez v4, :cond_2

    .line 1682
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private hideTip()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "SHOW_ROADMAP_LEVEL_TIPS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->a(Ljava/lang/String;Z)V

    .line 802
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    :cond_0
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    .line 723
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V

    .line 724
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V

    .line 725
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 733
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->updateData(Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 729
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method

.method private initBgAdapter()V
    .locals 2

    .prologue
    .line 736
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    .line 737
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 738
    return-void
.end method

.method private initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 5
    .param p1, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 705
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    .line 706
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    .line 707
    .local v2, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 718
    :cond_0
    return-void

    .line 708
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 709
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 710
    .local v3, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const/4 v1, 0x0

    .line 711
    .local v1, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .end local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v4, 0x2

    invoke-direct {v1, v4, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;-><init>(ILjava/lang/Object;)V

    .line 716
    .restart local v1    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :goto_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
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
    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 742
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080325

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032d

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032e

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080330

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080331

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080332

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080333

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080326

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080327

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080328

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080329

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08032b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

.method private initPHRoadmapBgData()V
    .locals 3

    .prologue
    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    .line 761
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080334

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033b

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033c

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033d

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033e

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033f

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080340

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080341

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080342

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080335

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080336

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080337

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080338

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f080339

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBgs:Ljava/util/ArrayList;

    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;

    const v2, 0x7f08033a

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    return-void
.end method

.method private initScrollWidth()V
    .locals 10

    .prologue
    const/high16 v9, 0x42280000    # 42.0f

    const/high16 v8, 0x42100000    # 36.0f

    const v7, 0x3e8f5c29    # 0.28f

    .line 1055
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mData:Ljava/util/List;

    if-nez v4, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1059
    const/4 v3, 0x0

    .line 1060
    .local v3, "width":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v1

    .line 1061
    .local v1, "mRealScreenWidth":I
    const/4 v2, 0x0

    .line 1062
    .local v2, "totalWidth":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
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

    .line 1064
    .local v0, "mDatum":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1065
    int-to-float v4, v1

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v4, v6

    float-to-int v3, v4

    .line 1066
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1067
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1083
    :cond_1
    :goto_2
    add-int/2addr v2, v3

    .line 1084
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1068
    :cond_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1069
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1071
    :cond_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 1072
    int-to-float v4, v1

    mul-float/2addr v4, v7

    float-to-int v3, v4

    .line 1073
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1074
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1075
    :cond_4
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_2

    .line 1078
    :cond_5
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 1079
    int-to-float v4, v1

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v6

    float-to-int v3, v4

    goto :goto_2

    .line 1080
    :cond_6
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 1081
    int-to-float v4, v1

    mul-float/2addr v4, v7

    float-to-int v3, v4

    goto :goto_2

    .line 1086
    .end local v0    # "mDatum":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_7
    const/high16 v4, 0x43aa0000    # 340.0f

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 1087
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollXList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private isFragmentShow()Z
    .locals 3

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    sget-object v2, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1431
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    const/4 v1, 0x1

    .line 1434
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMc()Z
    .locals 2

    .prologue
    .line 1238
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPH()Z
    .locals 2

    .prologue
    .line 1243
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
    .line 1361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1363
    .local v7, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1364
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
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

    .line 1367
    :cond_2
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1369
    :cond_3
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1370
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1372
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

    .line 1374
    :cond_4
    invoke-direct {p0, v7, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goToMcPhonicsPage(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;I)V

    goto :goto_0

    .line 1376
    :cond_5
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1377
    const-string v0, "\u5b66\u5b8c\u524d\u9762\u7684\u8bfe\u7a0b\u624d\u53ef\u4ee5\u5b66\u4e60\u54e6\uff5e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_6
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    const-string v0, "\u8bfe\u7a0b\u5c06\u57282.14\u524d\u4e0a\u7ebf\uff0c\u966a\u60a8\u548c\u5b9d\u8d1d\u8fc7\u597d\u5e74!"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readyShowAnim(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isFragmentShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1329
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->showAnim(Landroid/view/View;)V

    .line 1327
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerPurchasedReceiver()V
    .locals 2

    .prologue
    .line 1506
    new-instance v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$b;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    .line 1507
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1508
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1510
    return-void
.end method

.method private reportAmplitude()V
    .locals 4

    .prologue
    .line 678
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 679
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v2, "MC"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "MC View"

    .line 681
    .local v0, "event":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    return-void

    .line 680
    .end local v0    # "event":Ljava/lang/String;
    :cond_0
    const-string v0, "Phonics View"

    goto :goto_0
.end method

.method private reportFindCurrentAmp()V
    .locals 3

    .prologue
    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 894
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

    .line 895
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Restoration Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 898
    return-void
.end method

.method private reportIdentifyAmplitude()V
    .locals 3

    .prologue
    .line 1051
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

    .line 1052
    return-void

    .line 1051
    :cond_0
    const-string v0, "B"

    goto :goto_0
.end method

.method private reportPresentShareDialoge()V
    .locals 3

    .prologue
    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1139
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getTypeString()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Present Share Dialoge"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1141
    return-void
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 701
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

    .line 702
    return-void
.end method

.method private scrollFrontScene(F)V
    .locals 4
    .param p1, "dx"    # F

    .prologue
    .line 567
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapTotalWidth:I

    int-to-float v2, v2

    div-float v1, p1, v2

    .line 568
    .local v1, "per":F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadmapBgItemAdapter;->mTotalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 569
    .local v0, "dis":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 570
    return-void
.end method

.method private scrollToCurrent(Z)V
    .locals 13
    .param p1, "isSmooth"    # Z

    .prologue
    const/4 v11, 0x0

    .line 862
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v8

    .line 863
    .local v8, "position":I
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v6

    .line 864
    .local v6, "firstVisibleChildView":Landroid/view/View;
    if-nez v6, :cond_0

    .line 880
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getCurrentPos()I

    move-result v4

    .line 868
    .local v4, "currentPos":I
    add-int/lit8 v3, v4, 0x1

    .line 869
    .local v3, "currentNextPos":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 870
    .local v2, "curScroll":I
    invoke-direct {p0, v4, v11}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v1

    .line 871
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

    .line 872
    .local v0, "curItemWidth":I
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v12, v0, 0x2

    sub-int v7, v10, v12

    .line 873
    .local v7, "halfScreen":I
    sub-int v10, v1, v7

    if-gez v10, :cond_1

    move v9, v11

    .line 874
    .local v9, "scroll":I
    :goto_1
    sub-int v5, v9, v2

    .line 875
    .local v5, "dx":I
    if-eqz p1, :cond_2

    .line 876
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10, v5, v11}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_0

    .line 873
    .end local v5    # "dx":I
    .end local v9    # "scroll":I
    :cond_1
    sub-int v9, v1, v7

    goto :goto_1

    .line 878
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
    .line 597
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    move-result-object v0

    .line 599
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

    .line 600
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 601
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 603
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

    .line 605
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u79cd\u5b50\u8def\u7ebf0-1\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mServerLV:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u840c\u82bd\u8def\u7ebf1-2\u5c81"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 614
    :cond_4
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isPH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 616
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

    .line 1351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1354
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 1355
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1358
    return-void
.end method

.method private showFindCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 623
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    .line 624
    .local v0, "fvPos":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->v()I

    move-result v1

    .line 625
    .local v1, "lvPos":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    if-ge v2, v0, :cond_0

    .line 626
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 627
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 636
    :goto_0
    return-void

    .line 628
    :cond_0
    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentPos:I

    if-le v2, v1, :cond_1

    .line 629
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 630
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showOneVOneCoursePayPage()V
    .locals 3

    .prologue
    .line 1151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePayPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1153
    return-void
.end method

.method private showOrHideStatusContainer(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 1296
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1297
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    if-eqz v2, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    invoke-virtual {v2, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setVisibility(I)V

    .line 1301
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStatusContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 1306
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLoadingProgressContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1308
    :cond_2
    return-void

    .end local v0    # "visibility":I
    :cond_3
    move v0, v1

    .line 1296
    goto :goto_0
.end method

.method private syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V
    .locals 6
    .param p1, "unitRoadMap"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .param p2, "floatView"    # Landroid/widget/RelativeLayout;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1111
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0800a3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    const v2, 0x7f090060

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    const v2, 0x7f0905c9

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->enablePay()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    const v2, 0x7f090215

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1115
    .local v1, "floatingViewTxt":Landroid/widget/TextView;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->ttl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    const v2, 0x7f090214

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1117
    .local v0, "floatViewIcon":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v2

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->thmb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v2

    const v3, 0x7f080405

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 1118
    return-void

    .line 1111
    .end local v0    # "floatViewIcon":Landroid/widget/ImageView;
    .end local v1    # "floatingViewTxt":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0800af

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1112
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1113
    goto :goto_2
.end method

.method private updateStickFloatViewUI()V
    .locals 4

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1104
    .local v0, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v1

    .line 1105
    .local v1, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->syncStickFloatViewUI(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    .line 1108
    .end local v0    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAllShowAnim()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1333
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->checkShowAnim(Landroid/view/View;)V

    .line 1335
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivityPresenter;-><init>()V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-nez v12, :cond_0

    .line 1615
    invoke-super/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    .line 1674
    :goto_0
    return v12

    .line 1617
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->isGuideShowing()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1618
    invoke-super/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0

    .line 1623
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_2

    .line 1624
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawX:F

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawY:F

    .line 1627
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1628
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawX:F

    .line 1629
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawY:F

    .line 1632
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hasLevelChoiceFragmentShow()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1633
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1634
    .local v10, "xInstance":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mDownRawY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mUpRawY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1635
    .local v11, "yInstance":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v13, v13, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    .line 1636
    .local v5, "mHeaderView":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1637
    const v12, 0x7f090213

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1638
    .local v2, "floatItemView":Landroid/view/View;
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 1639
    .local v7, "outLocation":[I
    invoke-virtual {v5, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1640
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

    .line 1642
    .local v6, "mLocationRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 1644
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

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1646
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

    .line 1647
    .local v8, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12, v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v9

    .line 1648
    .local v9, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    .line 1649
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1653
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

    .line 1654
    .local v4, "mFootView":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 1655
    const v12, 0x7f090213

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1656
    .restart local v2    # "floatItemView":Landroid/view/View;
    const/4 v12, 0x2

    new-array v7, v12, [I

    .line 1657
    .restart local v7    # "outLocation":[I
    invoke-virtual {v4, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1660
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

    .line 1661
    .restart local v6    # "mLocationRect":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 1662
    .restart local v1    # "contains":Z
    const v12, 0x7f090213

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v3, 0x1

    .line 1664
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

    .line 1665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1666
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

    .line 1667
    .restart local v8    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v12, v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v9

    .line 1668
    .restart local v9    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V

    .line 1669
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1662
    .end local v3    # "isVisible":Z
    .end local v8    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v9    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1674
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
    .line 1386
    return-void
.end method

.method public findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 1226
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1227
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1234
    :cond_0
    :goto_0
    return v0

    .line 1228
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1229
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1230
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_2
    move v0, v3

    .line 1234
    goto :goto_0
.end method

.method findLeftCurrent()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902bb
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportFindCurrentAmp()V

    .line 859
    return-void
.end method

.method findRightCurrent()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090464
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportFindCurrentAmp()V

    .line 889
    return-void
.end method

.method public getBranch()Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1264
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
    .line 79
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapUI;
    .locals 0

    .prologue
    .line 228
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

    .line 1438
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1439
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Item_id"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "none"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1441
    const-string v5, "Type"

    const-string v4, "MC"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MC"

    :goto_1
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    :goto_2
    const-string v4, "AB Test"

    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v5, "Item Purchase View"

    invoke-virtual {v4, v5, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1449
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, "curBabyId":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1452
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

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

    .line 1453
    .local v3, "url":Ljava/lang/String;
    const-string v4, "key_url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    const-string v4, "KEY_SHOW_SUSPENSION_"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1455
    const-string v4, "HIDE SUSPENSION SHARE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1456
    const-string v4, "SUSPENSION_BACK_RECOURSE_ID"

    const v5, 0x7f08019a

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string v4, "KEY_SHOW_SUSPENSION_TOP_MARGIN"

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v4, "KEY PLAN"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    const-string v4, "KEY_LANDSCAPE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1461
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1463
    const-string v4, "LESSON TYPE"

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1467
    :goto_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 1468
    return-void

    .end local v0    # "curBabyId":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 1439
    goto/16 :goto_0

    .line 1441
    :cond_1
    const-string v4, "Phonics"

    goto/16 :goto_1

    .line 1443
    :cond_2
    const-string v4, "Type"

    invoke-interface {v2, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1465
    .restart local v0    # "curBabyId":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "LESSON TYPE"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/4 v3, 0x0

    .line 1213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v3

    .line 1214
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1215
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1217
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1218
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isOneVOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1216
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1222
    .end local v2    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAllCompleteInCallBack()Z
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v0

    return v0
.end method

.method public isAllZero()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1312
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1313
    .local v3, "words":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1314
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

    .line 1315
    .local v1, "phonics":I
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 1317
    .end local v1    # "phonics":I
    .end local v2    # "sentences":I
    .end local v3    # "words":I
    :cond_0
    :goto_0
    return v4

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBegin()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1281
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v5, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v4

    .line 1284
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v1

    .line 1285
    .local v1, "roadMapData":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1286
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1287
    .local v2, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1288
    if-ne v0, v3, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1285
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isBeginInCallBack()Z
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isBegin()Z

    move-result v0

    return v0
.end method

.method public isLV1InCallBack()Z
    .locals 1

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isLv1()Z

    move-result v0

    return v0
.end method

.method public isLv1()Z
    .locals 2

    .prologue
    .line 1277
    const-string v0, "Lv1"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPHInCallBack()Z
    .locals 1

    .prologue
    .line 1390
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
    .line 780
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->finish()V

    .line 781
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCreateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1500
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v2, 0x1036

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 1501
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onBackPressed()V

    .line 1503
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
    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
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

    .line 793
    :cond_0
    return-void
.end method

.method onBuyOneVOne()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0900e5
        }
    .end annotation

    .prologue
    .line 809
    const-string v0, "Roadmap"

    .line 810
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    .line 813
    :cond_0
    const-string v1, "1v1Roadmap View"

    invoke-static {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goByOneVOneCourse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public onClassIconClick()V
    .locals 2

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasBranch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->branch:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;

    .line 1271
    .local v0, "branch":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1272
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$Branch;->tgt:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1560
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasUnitRoadMapData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1561
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    iget v3, v3, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1562
    .local v0, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v1

    .line 1563
    .local v1, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->clickParentCourse(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1565
    .end local v0    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v1    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1556
    :pswitch_data_0
    .packed-switch 0x7f090213
        :pswitch_0
    .end packed-switch
.end method

.method onClickLvBtn()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f0902c9
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hideTip()V

    .line 820
    const-string v0, "Change"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->goSwitchLvPage(Ljava/lang/String;)V

    .line 822
    :cond_0
    return-void
.end method

.method onClickTip()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090576
        }
    .end annotation

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->hideTip()V

    .line 798
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f08013e

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 233
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->setContentView(I)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCreateTime:J

    .line 236
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mScaledTouchSlop:I

    .line 237
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->handleIntent()V

    .line 238
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addEventObserver()V

    .line 239
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->registerPurchasedReceiver()V

    .line 242
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 243
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLessonTypeTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0f0121

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 251
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v6

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v7, "MC"

    .line 252
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f080359

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 253
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v6, v7}, Lcom/bumptech/glide/g;->e(II)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 254
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 258
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 259
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 260
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 261
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipChildren(Z)V

    .line 262
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 265
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 266
    .local v2, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 267
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 268
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 269
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadmapBgRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$1;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mType:Ljava/lang/String;

    const-string v6, "MC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initMCRoadmapBgData()V

    .line 283
    :goto_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initBgAdapter()V

    .line 284
    const v3, 0x7f090213

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    .line 285
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    const v6, 0x7f090060

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatArrawIv:Landroid/widget/ImageView;

    .line 286
    const v3, 0x7f0905c9

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatUnitPay:Landroid/widget/ImageView;

    .line 287
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    .line 292
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3e8f5c29    # 0.28f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCurrentItemWidth:F

    .line 294
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mNormalItemWidth:F

    .line 296
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRealScreenWidth:I

    int-to-float v3, v3

    const v6, 0x3ed70a3d    # 0.42f

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    .line 298
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mFloatingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 299
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 300
    iget v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mStickItemWidth:F

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->setMainTitle()V

    .line 303
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 539
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 542
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightFindCurrent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 546
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 548
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLeftBabyIv:Landroid/widget/ImageView;

    .line 549
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 551
    invoke-static {p0}, Lcom/bumptech/glide/l;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/o;

    move-result-object v3

    .line 552
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v3

    .line 553
    invoke-virtual {v3, v9}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v3

    .line 554
    invoke-virtual {v3}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRightBabyIv:Landroid/widget/ImageView;

    .line 555
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 557
    const-string v3, "SHOW_ROADMAP_LEVEL_TIPS"

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 559
    .local v0, "hasClickTip":Z
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    if-nez v0, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mTip:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->bringToFront()V

    .line 563
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportAmplitude()V

    .line 564
    return-void

    .line 244
    .end local v0    # "hasClickTip":Z
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_2
    const v3, 0x7f0f015c

    goto/16 :goto_0

    .line 252
    :cond_3
    const v3, 0x7f08035f

    goto/16 :goto_1

    .line 280
    .restart local v2    # "manager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_4
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initPHRoadmapBgData()V

    goto/16 :goto_2

    .restart local v0    # "hasClickTip":Z
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move v3, v5

    .line 559
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1486
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onDestroy()V

    .line 1487
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->cancelAnim()V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    if-eqz v0, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1493
    :cond_1
    return-void
.end method

.method public onItemChildClick(Lcom/c/a/a/a/c;Landroid/view/View;I)V
    .locals 2
    .param p1, "adapter"    # Lcom/c/a/a/a/c;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 1549
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09029f

    if-ne v0, v1, :cond_0

    .line 1550
    invoke-direct {p0, p3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->onClickItem(I)V

    .line 1552
    :cond_0
    return-void
.end method

.method public onReceivedSuccessPayResult(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;)V
    .locals 14
    .param p1, "skuBridge"    # Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 1516
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->canShareLessonReferral:Z

    if-nez v2, :cond_1

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v10

    .line 1520
    .local v10, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

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

    .line 1521
    .local v1, "shareUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    move-result-object v0

    .line 1522
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    const-string v4, "\u5b9d\u8d1d\u82f1\u8bed\u542f\u8499\u8bfe\u7a0b\uff0c\u624b\u6162\u65e0"

    .line 1523
    .local v4, "content":Ljava/lang/String;
    const-string v3, "\u300c\u53fd\u91cc\u5471\u5566\u300d\u63d0\u9192\uff1a\u60a8\u6709\u4e00\u4e2a\u00a518.88\u7684\u7ea2\u5305\u5f85\u9886\u53d6"

    .line 1524
    .local v3, "title":Ljava/lang/String;
    const-string v2, ""

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v9, "Present Share"

    invoke-virtual/range {v0 .. v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;

    .line 1526
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v11

    .line 1527
    .local v11, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1528
    const v2, 0x7f09037f

    sget-object v5, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2, v0, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1529
    sget-object v2, Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 1533
    :goto_1
    invoke-virtual {v11}, Landroid/support/v4/app/an;->i()I

    .line 1536
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1537
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Type"

    const-string v5, "item Purchase"

    invoke-interface {v13, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v5, "Present Share Dialoge"

    invoke-virtual {v2, v5, v13}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1540
    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/NewRoadMap/PurchaseShareFragment;
    .end local v1    # "shareUrl":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "content":Ljava/lang/String;
    .end local v10    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    .end local v11    # "fragmentTransaction":Landroid/support/v4/app/an;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v12

    .line 1541
    .local v12, "ise":Ljava/lang/IllegalStateException;
    invoke-static {v12}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1531
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
    .line 924
    return-void
.end method

.method public onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 8
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 928
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 929
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-nez v3, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->reportIdentifyAmplitude()V

    .line 931
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasWord()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 932
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->words:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803c2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 934
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

    .line 935
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mWordContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 939
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasSpeak()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 940
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakText:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->sentences:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803be

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 942
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

    .line 943
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mSpeakContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 947
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasPhonics()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 948
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsTxt:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->meta:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$MetaBean;->metric:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$MetricBean;->phonics:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsIcon:Landroid/widget/ImageView;

    const v6, 0x7f0803ba

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
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

    .line 951
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mPhonicsContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->readyShowAnim(Landroid/view/View;)V

    .line 955
    :cond_4
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 956
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

    .line 959
    :cond_5
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 960
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

    .line 963
    :cond_6
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasCurCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasTotalCourseNum()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 964
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurCourseNum()F

    move-result v3

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getCurTotalNum()F

    move-result v6

    div-float v2, v3, v6

    .line 965
    .local v2, "percent":F
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mProgressBar:Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v2, v6, v7}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->a(FJ)V

    .line 968
    .end local v2    # "percent":F
    :cond_7
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyAll:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mBuyOneVOne:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuy1V1()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 976
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->groupData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addDividerData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 980
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addHeaderData()V

    .line 982
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initAdapter()V

    .line 984
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadsign()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 985
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->addFootView()V

    .line 988
    :cond_8
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->initScrollWidth()V

    .line 990
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

    .line 992
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->getItemCount()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v0

    .line 994
    .local v0, "calculateX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v6, v0

    invoke-virtual {v3, v6}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setCalculateX(F)V

    .line 996
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-nez v3, :cond_f

    .line 997
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$4;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$4;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1014
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v3, :cond_a

    .line 1016
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$5;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$5;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1024
    :cond_a
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->isAllComplete(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1025
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;

    invoke-direct {v6, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$6;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 1033
    :cond_b
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->autopay:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    if-eqz v3, :cond_c

    .line 1036
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mEnableAutoShowPage:Z

    .line 1039
    :cond_c
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLastMcTemplate:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 1041
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v3, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->isBuyRoadMap()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1042
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->findCurrent(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 1043
    .local v1, "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v6

    if-eqz v6, :cond_10

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "calculateX":I
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_d
    move v3, v5

    .line 968
    goto/16 :goto_1

    :cond_e
    move v3, v5

    .line 970
    goto/16 :goto_2

    .line 1007
    .restart local v0    # "calculateX":I
    :cond_f
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

    .line 1008
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_9

    .line 1009
    invoke-direct {p0, v4}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollToCurrent(Z)V

    goto :goto_3

    .restart local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_10
    move v4, v5

    .line 1043
    goto :goto_4

    .line 1045
    .end local v1    # "currentRoadmapItem":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    :cond_11
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mCiteBearIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 686
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseMvpActivity;->onResume()V

    .line 687
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/g;->d(Landroid/app/Activity;)V

    .line 688
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->requestData()V

    .line 689
    return-void
.end method

.method public scrollBg()V
    .locals 5

    .prologue
    .line 639
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v1

    .line 640
    .local v1, "position":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 641
    .local v0, "firstVisibleChildView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->getScrollX(II)I

    move-result v2

    .line 642
    .local v2, "scrollX":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRoadMapBgBelow:Lcom/jiliguala/niuwa/common/widget/TranslateImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/TranslateImageView;->setTranslate(F)V

    .line 643
    return-void
.end method
