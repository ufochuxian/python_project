.class public Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;,
        Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;,
        Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$b;
    }
.end annotation


# static fields
.field public static final COMPLETED:Ljava/lang/String; = "completed"

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final HEADER_HEIDHT_WIDTH_RATIO:F = 0.3125f

.field public static final HEIGHT_WIDTH_RATIO:F = 0.4375f

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final NO_CURRENT_POSITION:I = -0x1

.field public static final SELECT_INDEX_EMPTY:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private anotherColor:[Ljava/lang/String;

.field private bgColor:[Ljava/lang/String;

.field private floats:[F

.field private height:I

.field private isAnimation:Z

.field private isFirstSuccess:Z

.field private mBackButton:Landroid/widget/RelativeLayout;

.field private mBackIcon:Landroid/widget/ImageView;

.field private mEnd:I

.field private mFootView:Landroid/widget/LinearLayout;

.field private mHeaderContainer:Landroid/widget/RelativeLayout;

.field private mHeaderImg:Landroid/widget/ImageView;

.field private mIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

.field private mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

.field private mRoadMapNext:Landroid/view/View;

.field private mRoadMapPre:Landroid/widget/TextView;

.field public mRoadMap_Id:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectedIndex:I

.field private mStart:I

.field private mStoyPosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

.field private mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

.field private nextAge:Landroid/widget/TextView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x46

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 89
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->bgColor:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x35

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->anotherColor:[Ljava/lang/String;

    .line 91
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->floats:[F

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mSelectedIndex:I

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAnimation:Z

    return-void

    .line 91
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f4ccccd    # 0.8f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->onResumeRefresh()V

    return-void
.end method

.method static synthetic access$1000(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)[F
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->floats:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->width:I

    return v0
.end method

.method static synthetic access$1500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->height:I

    return v0
.end method

.method static synthetic access$1600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPresenter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStart:I

    return v0
.end method

.method static synthetic access$402(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStart:I

    return p1
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mEnd:I

    return v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mEnd:I

    return p1
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->exit()V

    return-void
.end method

.method static synthetic access$900(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 660
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$6;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$7;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$7;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    .line 661
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 680
    return-void
.end method

.method private addFootView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V
    .locals 8
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    .line 506
    .local v3, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;>;"
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->footer:Ljava/lang/String;

    .line 507
    .local v1, "footer":Ljava/lang/String;
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 510
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 511
    .local v2, "footerViewsCount":I
    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 512
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 513
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 514
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 515
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->anotherColor:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 519
    :goto_1
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->showRoadMapNext(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->bgColor:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 523
    .end local v0    # "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->generateFootView(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 524
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addHeaderView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V
    .locals 6
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    .line 479
    .local v2, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;>;"
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->header:Ljava/lang/String;

    .line 480
    .local v0, "header":Ljava/lang/String;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 484
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 485
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 486
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->_id:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getHeaderViewBgByAgeId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 488
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 489
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getAgeTextByAgeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->_id:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->generateHeaderView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 498
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private calculateSize()V
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mScreenWidth:I

    .line 197
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mScreenWidth:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->width:I

    .line 198
    iget v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3ee00000    # 0.4375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->height:I

    .line 200
    return-void
.end method

.method private createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseUi;)V

    .line 282
    .local v0, "presenter":Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;
    return-object v0
.end method

.method private exit()V
    .locals 3

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    .line 386
    .local v2, "fm":Landroid/support/v4/app/ag;
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->f()I

    move-result v0

    .line 387
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/ag;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private generateFootView(Ljava/util/ArrayList;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .param p2, "footer"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;>;"
    const/4 v7, -0x1

    const/high16 v6, 0x41200000    # 10.0f

    .line 529
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 530
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    if-nez v3, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0129

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    .line 534
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    const v4, 0x7f090389

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->nextAge:Landroid/widget/TextView;

    .line 535
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    new-instance v4, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    :cond_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 540
    .local v2, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3ee00000    # 0.4375f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 541
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 543
    .local v0, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 544
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->anotherColor:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 548
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 549
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 551
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 552
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 553
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->showRoadMapNext(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    return-object v3

    .line 546
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mFootView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->bgColor:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private generateHeaderView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .param p1, "ageId"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 569
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 570
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    .line 572
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 573
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 576
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0192

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    .line 577
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    new-instance v4, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;

    invoke-direct {v4, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$OnSwitchAgeClickListener;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 582
    .local v0, "imgParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getHeaderViewBgByAgeId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 584
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 587
    .local v2, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3ea00000    # 0.3125f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 588
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    const-string v4, "#ABDEC9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 591
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x41f00000    # 30.0f

    .line 592
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 593
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v3

    invoke-static {v8}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    invoke-virtual {v1, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 596
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 597
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getAgeTextByAgeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mHeaderContainer:Landroid/widget/RelativeLayout;

    return-object v3

    .line 600
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapPre:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getCurrentUnit(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)I
    .locals 5
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .prologue
    const/4 v3, 0x0

    .line 458
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    :cond_0
    move v0, v3

    .line 471
    :cond_1
    :goto_0
    return v0

    .line 461
    :cond_2
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->units:Ljava/util/ArrayList;

    .line 462
    .local v2, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 463
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    .line 464
    .local v1, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    iget-object v4, v1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    if-nez v4, :cond_1

    .line 467
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    .line 468
    const/4 v0, -0x1

    goto :goto_0

    .line 462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    :cond_4
    move v0, v3

    .line 471
    goto :goto_0
.end method

.method private initData()V
    .locals 8

    .prologue
    const v7, 0x3f333333    # 0.7f

    const v6, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    const v4, 0x3e99999a    # 0.3f

    const v3, 0x3f4ccccd    # 0.8f

    .line 130
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->bgColor:[Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->anotherColor:[Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStoyPosMap:Ljava/util/Map;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mIndexMap:Ljava/util/Map;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 367
    const v0, 0x7f09059c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$5;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const v0, 0x7f0902e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    .line 374
    const v0, 0x7f090093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackButton:Landroid/widget/RelativeLayout;

    .line 375
    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 376
    const v0, 0x7f090546

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    .line 377
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 379
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->g()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 377
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 381
    const v0, 0x7f090296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 382
    return-void
.end method

.method private isFirstOnError()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onResumeRefresh()V
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAnimation:Z

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPresenter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPresenter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;->request(Z)V

    .line 256
    invoke-static {}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->getInstance()Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/helper/PreloadHelper;->startPreLoad()V

    .line 258
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->reportToAmplitude()V

    .line 260
    :cond_0
    return-void
.end method

.method private refreshaBackIcon()V
    .locals 4

    .prologue
    .line 452
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->S()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackIcon:Landroid/widget/ImageView;

    .line 454
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/e/a;->g()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v3

    .line 452
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 455
    return-void
.end method

.method private reportEnlightenViewAmplitude()V
    .locals 5

    .prologue
    .line 270
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Type"

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMap_Id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 274
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "mSource":Ljava/lang/String;
    const-string v3, "Source"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v1    # "mSource":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Enlighten View"

    invoke-virtual {v3, v4, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    return-void
.end method

.method private reportToAmplitude()V
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->P()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "absoluteAge":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Default Baby Birthday"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    .line 399
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 402
    :cond_0
    return-void
.end method

.method private setViewListener()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$2;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$c;)V

    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$3;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mBackButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$4;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 364
    return-void
.end method

.method private showRoadMapNext(Ljava/lang/String;)V
    .locals 2
    .param p1, "footer"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->nextAge:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getAgeTextByAgeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMapNext:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public autoRefresh()V
    .locals 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 688
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$8;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 696
    :cond_1
    return-void
.end method

.method public getAgeTextByAgeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 620
    const-string v0, "0-1\u5c81"

    :goto_1
    return-object v0

    .line 606
    :pswitch_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 608
    :pswitch_6
    const-string v0, "0-1\u5c81"

    goto :goto_1

    .line 610
    :pswitch_7
    const-string v0, "1-2\u5c81"

    goto :goto_1

    .line 612
    :pswitch_8
    const-string v0, "2-3\u5c81"

    goto :goto_1

    .line 614
    :pswitch_9
    const-string v0, "3-4\u5c81"

    goto :goto_1

    .line 616
    :pswitch_a
    const-string v0, "4-5\u5c81"

    goto :goto_1

    .line 618
    :pswitch_b
    const-string v0, "5\u5c81+"

    goto :goto_1

    .line 606
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getHeaderViewBgByAgeId(Ljava/lang/String;)I
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f08035f

    .line 625
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 639
    :goto_1
    :pswitch_0
    return v0

    .line 625
    :pswitch_1
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const-string v2, "5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 629
    :pswitch_7
    const v0, 0x7f080360

    goto :goto_1

    .line 631
    :pswitch_8
    const v0, 0x7f080361

    goto :goto_1

    .line 633
    :pswitch_9
    const v0, 0x7f080362

    goto :goto_1

    .line 635
    :pswitch_a
    const v0, 0x7f080363

    goto :goto_1

    .line 637
    :pswitch_b
    const v0, 0x7f080364

    goto :goto_1

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mSuperView:Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 302
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getSuperView()Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->a()V

    .line 303
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onAttach(Landroid/content/Context;)V

    .line 189
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->createPresenter()Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPresenter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCoursePresenter;

    .line 191
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->calculateSize()V

    .line 192
    return-void
.end method

.method public onChildGained()V
    .locals 0

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->autoRefresh()V

    .line 651
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->initData()V

    .line 121
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addEventObserver()V

    .line 122
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/b;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 207
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 217
    new-instance v1, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$1;-><init>(Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 239
    :cond_1
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 288
    const v1, 0x7f0b00c9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->initView(Landroid/view/View;)V

    .line 290
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setViewListener()V

    .line 291
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 717
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 718
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isFirstOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 708
    :cond_0
    return-void
.end method

.method public onRefreshCompleted()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 646
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->onResumeRefresh()V

    .line 247
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onStart()V

    .line 127
    return-void
.end method

.method public onSuccess(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;Z)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;
    .param p2, "needSelection"    # Z

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setAdapter()V

    .line 407
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addHeaderView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 409
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addFootView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 413
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMap_Id:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->refreshaBackIcon()V

    .line 415
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isFirstSuccess:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getCurrentUnit(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 429
    :cond_2
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isFirstSuccess:Z

    if-nez v0, :cond_3

    .line 430
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->reportEnlightenViewAmplitude()V

    .line 432
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isFirstSuccess:Z

    .line 434
    :cond_4
    return-void
.end method

.method public onSwitchChild()V
    .locals 0

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->autoRefresh()V

    .line 656
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 297
    return-void
.end method

.method public refreshSuccess(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->setAdapter()V

    .line 439
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addHeaderView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 441
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mStudyCourseAdapter:Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment$a;->a(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 444
    :cond_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->addFootView(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)V

    .line 445
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mPullToRefreshListView:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->getCurrentUnit(Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 446
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Data;->_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->mRoadMap_Id:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->refreshaBackIcon()V

    .line 449
    :cond_1
    return-void
.end method
