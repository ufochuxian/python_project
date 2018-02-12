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

    .line 85
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b;-><init>(Ljava/util/List;)V

    .line 51
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 69
    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    .line 71
    iput v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    .line 86
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mData:Ljava/util/List;

    .line 88
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 89
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    .line 90
    const/4 v0, 0x5

    const v1, 0x7f0b01a6

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 91
    const/4 v0, 0x1

    const v1, 0x7f0b00f2

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 92
    const/4 v0, 0x2

    const v1, 0x7f0b00f3

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 93
    const/4 v0, 0x4

    const v1, 0x7f0b00db

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->addItemType(II)V

    .line 95
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e8f5c29    # 0.28f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dividerWidth:I

    .line 96
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->headerWidth:I

    .line 98
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenWidth:I

    .line 99
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenHeight:I

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mIsGuideShowing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHasShowGuideView:Z

    return p1
.end method

.method private doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 2
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    .line 301
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    const v1, 0x7f090058

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "animBg":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/d;->b()V

    .line 306
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
    .line 292
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

    .line 293
    .local v0, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->prt:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    .end local v0    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 5
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 310
    const v2, 0x7f0903c7

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 311
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

    .line 312
    const v2, 0x7f080138

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    :goto_0
    const v2, 0x7f090524

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    .local v1, "statusIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    :cond_0
    :goto_1
    return-void

    .line 315
    .end local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 321
    .restart local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    const v2, 0x7f0803b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 339
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
    .line 111
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 113
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

    .line 114
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

    .line 115
    const v20, 0x7f09029f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v11

    .line 116
    .local v11, "itemBgView":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 117
    new-instance v20, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
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

    .line 128
    :cond_1
    const v20, 0x7f090213

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v7

    .line 131
    .local v7, "floatingView":Landroid/view/View;
    const v20, 0x7f090213

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 133
    const v20, 0x7f09029f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 135
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .local v12, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v12, :cond_2

    .line 137
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 138
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

    .line 141
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

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMapById(Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    move-result-object v19

    .line 143
    .local v19, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
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

    const v21, 0x7f0800a3

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    :goto_0
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v20, 0x7f090215

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 146
    .local v6, "floatViewTxt":Landroid/widget/TextView;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
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

    .line 148
    const v20, 0x7f0905c9

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

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
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

    const v21, 0x7f080405

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

    .line 152
    .end local v6    # "floatViewTxt":Landroid/widget/TextView;
    .end local v19    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_5
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 153
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .end local v7    # "floatingView":Landroid/view/View;
    .end local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 286
    :cond_7
    :goto_4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v13

    .line 289
    .local v13, "pos":I
    return-void

    .line 144
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

    const v21, 0x7f0800af

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_0

    .line 147
    .restart local v6    # "floatViewTxt":Landroid/widget/TextView;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 148
    :cond_a
    const/16 v20, 0x8

    goto :goto_2

    .line 153
    .end local v6    # "floatViewTxt":Landroid/widget/TextView;
    .end local v19    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_b
    const/16 v20, 0x8

    goto :goto_3

    .line 159
    .end local v7    # "floatingView":Landroid/view/View;
    .end local v12    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_1
    move-object v14, v2

    .line 161
    .local v14, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const v20, 0x7f09029f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 162
    .local v9, "itemBg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v20

    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->thmb:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 163
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v20

    const v21, 0x7f080405

    .line 164
    invoke-virtual/range {v20 .. v21}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v20

    .line 165
    invoke-virtual/range {v20 .. v20}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v20

    .line 166
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 172
    const v20, 0x7f0905bd

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 173
    .local v15, "txt":Landroid/widget/TextView;
    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 174
    iget-object v0, v14, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_c
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 178
    const v20, 0x7f0902bc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    const v20, 0x7f0902be

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const v20, 0x7f090465

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    const v20, 0x7f090469

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    const v20, 0x7f09046c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_d
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 187
    const v20, 0x7f0902bc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const v20, 0x7f0902be

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const v20, 0x7f090465

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const v20, 0x7f090469

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const v20, 0x7f09046c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f08039d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_e
    invoke-virtual {v14}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 196
    const v20, 0x7f0902bc

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    const v20, 0x7f0902be

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const v20, 0x7f0902bf

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v20, 0x7f090465

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    const v20, 0x7f090469

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    const v20, 0x7f09046c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0803a0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
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

    .line 205
    const v20, 0x7f090462

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_5
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_15

    .line 212
    const v20, 0x7f090462

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v20, 0x7f0902b9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 226
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

    .line 228
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 229
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

    .line 233
    .local v4, "currentItemWidth":I
    :goto_7
    const/4 v5, 0x0

    .line 234
    .local v5, "dx":I
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupHeader()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 235
    const/high16 v20, 0x42280000    # 42.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    .line 239
    :cond_11
    :goto_8
    sub-int/2addr v4, v5

    .line 240
    const/high16 v20, 0x42280000    # 42.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v20

    sub-int v20, v4, v20

    const/high16 v21, 0x42100000    # 36.0f

    invoke-static/range {v21 .. v21}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v21

    sub-int v20, v20, v21

    add-int v18, v20, v5

    .line 244
    .local v18, "unitContainerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 246
    .local v3, "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_12

    .line 247
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 250
    :cond_12
    const v20, 0x7f0905c2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 252
    .local v16, "unitContainer":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 254
    .local v17, "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v17, :cond_13

    .line 255
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 256
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    :cond_13
    const v20, 0x7f09029f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 261
    .local v11, "itemBgView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 263
    .local v10, "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_7

    .line 264
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    move/from16 v0, v18

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 207
    .end local v3    # "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "currentItemWidth":I
    .end local v5    # "dx":I
    .end local v10    # "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "itemBgView":Landroid/widget/ImageView;
    .end local v16    # "unitContainer":Landroid/widget/RelativeLayout;
    .end local v17    # "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v18    # "unitContainerWidth":I
    :cond_14
    const v20, 0x7f090462

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 214
    :cond_15
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 215
    const v20, 0x7f0902b9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 216
    const v20, 0x7f090462

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 218
    :cond_16
    const v20, 0x7f090462

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v20, 0x7f0902b9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 231
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

    .line 236
    .restart local v5    # "dx":I
    :cond_18
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isGroupFooter()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 237
    const/high16 v20, 0x42100000    # 36.0f

    invoke-static/range {v20 .. v20}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v5

    goto/16 :goto_8

    .line 271
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

    .line 272
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->dividerWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    .line 277
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 278
    .local v8, "headerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_7

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->headerWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    .line 156
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
    .line 47
    check-cast p2, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V

    return-void
.end method

.method public dismissGuideView()V
    .locals 3

    .prologue
    .line 396
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

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2019s Guide Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 401
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1}, Lcom/blog/www/guideview/f;->a()V

    .line 404
    :cond_1
    return-void
.end method

.method public isGuideShowing()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mIsGuideShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;->onClassIconClick()V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_0
    .end packed-switch
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .line 332
    return-void
.end method

.method public showGuideView(Landroid/view/View;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 354
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 355
    .local v0, "builder":Lcom/blog/www/guideview/g;
    invoke-virtual {v0, p1}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v1

    const v2, 0x7f09029f

    .line 356
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    const/16 v2, 0xc8

    .line 357
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->d(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 359
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->k(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 361
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 363
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 364
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenWidth:I

    .line 365
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mScreenHeight:I

    .line 366
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 367
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 389
    new-instance v1, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;

    const v2, 0x7f0803ec

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 390
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    .line 391
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 392
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 393
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
    .line 103
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mData:Ljava/util/List;

    .line 105
    return-void
.end method
