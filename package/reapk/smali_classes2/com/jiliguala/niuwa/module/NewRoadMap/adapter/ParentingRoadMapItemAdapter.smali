.class public Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
.super Lcom/c/a/a/a/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/c/a/a/a/b",
        "<",
        "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
        ">;",
        "Lcom/c/a/a/a/e;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final FIRST_ROADMAP_POS:I = 0x1


# instance fields
.field private final dividerWidth:I

.field private final headerWidth:I

.field private mAnimationSet:Lcom/nineoldandroids/a/d;

.field private mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContext:Landroid/content/Context;

.field mData:Ljava/util/List;
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

.field public mFooterPos:I

.field private mGuide:Lcom/blog/www/guideview/f;

.field private mHasShowGuideView:Z

.field public mHeaderPos:I

.field private mIsGuideShowing:Z

.field private final mRealScreenWidth:I

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field public mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;>;",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b;-><init>(Ljava/util/List;)V

    .line 52
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 70
    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    .line 72
    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    .line 87
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mData:Ljava/util/List;

    .line 89
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 90
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    .line 91
    const/4 v0, 0x5

    const v1, 0x7f0b01ab

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 92
    const/4 v0, 0x1

    const v1, 0x7f0b00f3

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 93
    const/4 v0, 0x2

    const v1, 0x7f0b00f4

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 94
    const/4 v0, 0x4

    const v1, 0x7f0b00dc

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 96
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e8f5c29    # 0.28f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dividerWidth:I

    .line 97
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->headerWidth:I

    .line 99
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->M()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenWidth:I

    .line 100
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->N()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenHeight:I

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mIsGuideShowing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHasShowGuideView:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->reportBeginnerGuideView()V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->reportBeginnerGuideExit()V

    return-void
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->reportBeginnerGuideComplete()V

    return-void
.end method

.method private autoPlayVideo()V
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->videointro:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "IntroVideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->videointro:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 2
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    .line 317
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 318
    :cond_0
    const v1, 0x7f090058

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "animBg":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/d;->b()V

    .line 322
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/a;->g(Landroid/view/View;)Lcom/nineoldandroids/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    goto :goto_0
.end method

.method private getUnitRoadMap(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;Ljava/util/List;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .locals 4
    .param p1, "content"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;",
            ">;)",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "unitroadmapList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .line 309
    .local v0, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->prt:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    .end local v0    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportBeginnerGuideComplete()V
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "LessonView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2019s Guide Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 441
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private reportBeginnerGuideExit()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "LessonView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 431
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private reportBeginnerGuideView()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "LessonView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 5
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 326
    const v2, 0x7f0903ce

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 327
    .local v0, "payIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    const v2, 0x7f08013a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :goto_0
    const v2, 0x7f09052e

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 335
    .local v1, "statusIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :cond_0
    :goto_1
    return-void

    .line 331
    .end local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 337
    .restart local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    const v2, 0x7f0803bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 355
    :cond_0
    return-void
.end method

.method protected convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V
    .locals 23
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/c/a/a/a/e;",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 126
    .local v2, "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/login/a;->X()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 127
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/n;->f()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHasShowGuideView:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->autoPlayVideo()V

    .line 131
    const v20, 0x7f0902a5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v11

    .line 132
    .local v11, "itemBgView":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 133
    new-instance v20, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    .end local v11    # "itemBgView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getItemType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 144
    :cond_1
    const v20, 0x7f090213

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v7

    .line 147
    .local v7, "floatingView":Landroid/view/View;
    const v20, 0x7f090213

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 149
    const v20, 0x7f0902a5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 151
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v12, :cond_2

    .line 153
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3ed70a3d    # 0.42f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 157
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->unitroadmap:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v19

    .line 159
    .local v19, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    invoke-virtual/range {v19 .. v19}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800a5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    :goto_0
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    const v20, 0x7f090215

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 162
    .local v6, "floatViewTxt":Landroid/widget/TextView;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v20, 0x7f090060

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isLocked()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual/range {v19 .. v19}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->isStop()Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_4
    const/16 v20, 0x8

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const v20, 0x7f0905d3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->enablePay()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x8

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->thmb:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v20

    const v21, 0x7f080412

    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v21

    const v20, 0x7f090214

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 168
    .end local v6    # "floatViewTxt":Landroid/widget/TextView;
    .end local v19    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_5
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 169
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .end local v7    # "floatingView":Landroid/view/View;
    .end local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 302
    :cond_7
    :goto_4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v13

    .line 305
    .local v13, "pos":I
    return-void

    .line 160
    .end local v13    # "pos":I
    .restart local v7    # "floatingView":Landroid/view/View;
    .restart local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800b1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_0

    .line 163
    .restart local v6    # "floatViewTxt":Landroid/widget/TextView;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 164
    :cond_a
    const/16 v20, 0x8

    goto :goto_2

    .line 169
    .end local v6    # "floatViewTxt":Landroid/widget/TextView;
    .end local v19    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_b
    const/16 v20, 0x8

    goto :goto_3

    .line 175
    .end local v7    # "floatingView":Landroid/view/View;
    .end local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_1
    move-object v14, v2

    .line 177
    .local v14, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const v20, 0x7f0902a5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 178
    .local v9, "itemBg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v20

    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->thmb:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 179
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v20

    const v21, 0x7f080412

    .line 180
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v20

    .line 181
    invoke-virtual/range {v20 .. v20}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v20

    .line 182
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 188
    const v20, 0x7f0905c7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 189
    .local v15, "txt":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 190
    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_c
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 194
    const v20, 0x7f0902c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    const v20, 0x7f0902c4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const v20, 0x7f0902c5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const v20, 0x7f09046e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const v20, 0x7f090472

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v20, 0x7f090475

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_d
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 203
    const v20, 0x7f0902c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const v20, 0x7f0902c4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    const v20, 0x7f0902c5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    const v20, 0x7f09046e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    const v20, 0x7f090472

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 208
    const v20, 0x7f090475

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803aa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :cond_e
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 212
    const v20, 0x7f0902c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const v20, 0x7f0902c4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const v20, 0x7f0902c5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const v20, 0x7f09046e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    const v20, 0x7f090472

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    const v20, 0x7f090475

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803ad

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mData:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 221
    const v20, 0x7f09046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :goto_5
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 228
    const v20, 0x7f09046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 244
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e8f5c29    # 0.28f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v4, v0

    .line 249
    .local v4, "currentItemWidth":I
    :goto_7
    const/4 v5, 0x0

    .line 250
    .local v5, "dx":I
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 251
    const/high16 v20, 0x42280000    # 42.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    .line 255
    :cond_11
    :goto_8
    sub-int/2addr v4, v5

    .line 256
    const/high16 v20, 0x42280000    # 42.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v20

    sub-int v20, v4, v20

    const/high16 v21, 0x42100000    # 36.0f

    invoke-static/range {v21 .. v21}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v21

    sub-int v20, v20, v21

    add-int v18, v20, v5

    .line 260
    .local v18, "unitContainerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 262
    .local v3, "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_12

    .line 263
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 266
    :cond_12
    const v20, 0x7f0905cc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 268
    .local v16, "unitContainer":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 270
    .local v17, "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v17, :cond_13

    .line 271
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    :cond_13
    const v20, 0x7f0902a5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 277
    .local v11, "itemBgView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 279
    .local v10, "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_7

    .line 280
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 223
    .end local v3    # "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "currentItemWidth":I
    .end local v5    # "dx":I
    .end local v10    # "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "itemBgView":Landroid/widget/ImageView;
    .end local v16    # "unitContainer":Landroid/widget/RelativeLayout;
    .end local v17    # "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "unitContainerWidth":I
    :cond_14
    const v20, 0x7f09046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 230
    :cond_15
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 231
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 232
    const v20, 0x7f09046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 234
    :cond_16
    const v20, 0x7f09046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 235
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 247
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e75c28f    # 0.24f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v4, v0

    .restart local v4    # "currentItemWidth":I
    goto/16 :goto_7

    .line 252
    .restart local v5    # "dx":I
    :cond_18
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 253
    const/high16 v20, 0x42100000    # 36.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    goto/16 :goto_8

    .line 287
    .end local v4    # "currentItemWidth":I
    .end local v5    # "dx":I
    .end local v9    # "itemBg":Landroid/widget/ImageView;
    .end local v14    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v15    # "txt":Landroid/widget/TextView;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 288
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_7

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dividerWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    .line 293
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 294
    .local v8, "headerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->headerWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p2, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V

    return-void
.end method

.method public dismissGuideView()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "LessonView"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide Exit"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 450
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1}, Lcom/blog/www/guideview/f;->a()V

    .line 453
    :cond_1
    return-void
.end method

.method public isGuideShowing()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mIsGuideShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;->onClassIconClick()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_0
    .end packed-switch
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .line 348
    return-void
.end method

.method public showGuideView(Landroid/view/View;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 370
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 371
    .local v0, "builder":Lcom/blog/www/guideview/g;
    invoke-virtual {v0, p1}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v1

    const v2, 0x7f0902a5

    .line 372
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    const/16 v2, 0xc8

    .line 373
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 374
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->d(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 375
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->k(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 376
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenWidth:I

    .line 381
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenHeight:I

    .line 382
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 383
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 409
    new-instance v1, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;

    const v2, 0x7f0803f9

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 410
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    .line 411
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 412
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 413
    return-void
.end method

.method public updateData(Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 0
    .param p2, "mcTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;",
            ">;>;",
            "Lcom/jiliguala/niuwa/logic/network/json/McTemplete;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 105
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mData:Ljava/util/List;

    .line 106
    return-void
.end method
