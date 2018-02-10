.class public Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;
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

.field private mGuide:Lcom/blog/www/guideview/f;

.field protected mHasShowGuideView:Z

.field private final mRealScreenWidth:I

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field protected mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;


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
    .line 74
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    invoke-direct {p0, p2}, Lcom/c/a/a/a/b;-><init>(Ljava/util/List;)V

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mData:Ljava/util/List;

    .line 77
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 78
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mRealScreenWidth:I

    .line 79
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->headerWidth:I

    .line 80
    const/4 v0, 0x1

    const v1, 0x7f0b00ed

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->addItemType(II)V

    .line 81
    const/4 v0, 0x2

    const v1, 0x7f0b00ee

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->addItemType(II)V

    .line 82
    const/4 v0, 0x5

    const v1, 0x7f0b01a6

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->addItemType(II)V

    .line 84
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->l()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mScreenWidth:I

    .line 85
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->k()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mScreenHeight:I

    .line 86
    return-void
.end method

.method private doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 2
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    .line 246
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    const v1, 0x7f090058

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "animBg":Landroid/view/View;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/d;->b()V

    .line 251
    :cond_1
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/a;->g(Landroid/view/View;)Lcom/nineoldandroids/a/d;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    goto :goto_0
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mAnimationSet:Lcom/nineoldandroids/a/d;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/d;->b()V

    .line 289
    :cond_0
    return-void
.end method

.method protected convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V
    .locals 17
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
    .line 96
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual/range {p0 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->processShowGuideView(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 101
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 103
    .local v9, "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    const v14, 0x7f09029f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 104
    .local v6, "itemBg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v14

    iget-object v15, v9, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->thmb:Ljava/lang/String;

    .line 105
    invoke-virtual {v14, v15}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v14

    const v15, 0x7f080405

    .line 106
    invoke-virtual {v14, v15}, Lcom/bumptech/glide/g;->d(I)Lcom/bumptech/glide/f;

    move-result-object v14

    .line 107
    invoke-virtual {v14}, Lcom/bumptech/glide/f;->g()Lcom/bumptech/glide/f;

    move-result-object v14

    .line 108
    invoke-virtual {v14, v6}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/m;

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->doBgAnim(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V

    .line 114
    const v14, 0x7f0905bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 115
    .local v10, "txt":Landroid/widget/TextView;
    iget-object v14, v9, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 116
    iget-object v14, v9, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->ttl:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    const v14, 0x7f09029f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->b(I)Lcom/c/a/a/a/e;

    .line 121
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 122
    const v14, 0x7f0902bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const v14, 0x7f0902be

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    const v14, 0x7f0902bf

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    const v14, 0x7f090465

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const v14, 0x7f090469

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const v14, 0x7f09046c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_2
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 133
    const v14, 0x7f0902bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    const v14, 0x7f0902be

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const v14, 0x7f0902bf

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const v14, 0x7f090465

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    const v14, 0x7f090469

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const v14, 0x7f09046c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08039d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_3
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 144
    const v14, 0x7f0902bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v14, 0x7f0902be

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const v14, 0x7f0902bf

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    const v14, 0x7f090465

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    const v14, 0x7f090469

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const v14, 0x7f09046c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0803a0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 156
    const v14, 0x7f0902b9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_a

    .line 162
    const v14, 0x7f090462

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 175
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getItemViewType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v14, v14

    const v15, 0x3e8f5c29    # 0.28f

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .line 181
    .local v3, "currentItemWidth":I
    :goto_3
    const/4 v4, 0x0

    .line 182
    .local v4, "dx":I
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 183
    const/high16 v14, 0x42280000    # 42.0f

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v4

    .line 188
    :cond_6
    sub-int/2addr v3, v4

    .line 189
    const/high16 v14, 0x42280000    # 42.0f

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v14

    sub-int v14, v3, v14

    const/high16 v15, 0x42100000    # 36.0f

    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v15

    sub-int/2addr v14, v15

    add-int v13, v14, v4

    .line 193
    .local v13, "unitContainerWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 195
    .local v2, "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_7

    .line 196
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 199
    :cond_7
    const v14, 0x7f0905c2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 201
    .local v11, "unitContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 203
    .local v12, "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_8

    .line 204
    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 205
    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    :cond_8
    const v14, 0x7f09029f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 210
    .local v8, "itemBgView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 212
    .local v7, "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v7, :cond_0

    .line 213
    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 214
    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 158
    .end local v2    # "currentItemParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "currentItemWidth":I
    .end local v4    # "dx":I
    .end local v7    # "itemBgParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "itemBgView":Landroid/widget/ImageView;
    .end local v11    # "unitContainer":Landroid/widget/RelativeLayout;
    .end local v12    # "unitContainerParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "unitContainerWidth":I
    :cond_9
    const v14, 0x7f0902b9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 164
    :cond_a
    const v14, 0x7f090462

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 178
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mRealScreenWidth:I

    int-to-float v14, v14

    const v15, 0x3e75c28f    # 0.24f

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .restart local v3    # "currentItemWidth":I
    goto :goto_3

    .line 219
    .end local v3    # "currentItemWidth":I
    .end local v6    # "itemBg":Landroid/widget/ImageView;
    .end local v9    # "roadmapBean":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v10    # "txt":Landroid/widget/TextView;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/a/a/e;->d()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 220
    .local v5, "headerParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->headerWidth:I

    iput v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic convert(Lcom/c/a/a/a/e;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p2, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->convert(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V

    return-void
.end method

.method public dismissGuideView()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v0}, Lcom/blog/www/guideview/f;->a()V

    .line 368
    :cond_0
    return-void
.end method

.method protected getIcon()I
    .locals 1

    .prologue
    .line 348
    const v0, 0x7f0803ea

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;->onClassIconClick()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_0
    .end packed-switch
.end method

.method protected onDismissGuideView()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2019s Guide Complete"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v1, "PREFS_HAS_COMPLETE_SHOW_GUIDE"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 358
    return-void
.end method

.method protected onShowGuideView()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mHasShowGuideView:Z

    .line 362
    return-void
.end method

.method protected processShowGuideView(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;)V
    .locals 3
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
    .line 230
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isAgeOverTwoMC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/c/a/a/a/e;->getLayoutPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mHasShowGuideView:Z

    if-nez v1, :cond_0

    .line 232
    const v1, 0x7f09029f

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "itemBgView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 243
    .end local v0    # "itemBgView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mCallBack:Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;

    .line 282
    return-void
.end method

.method protected setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 4
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    const/4 v3, 0x0

    .line 255
    const v2, 0x7f0903c7

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 256
    .local v0, "payIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    const v2, 0x7f080138

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_0
    const v2, 0x7f090524

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 264
    .local v1, "statusIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 265
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isNormalStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    const v2, 0x7f0803b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    :cond_0
    :goto_1
    return-void

    .line 260
    .end local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 268
    .restart local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isPerfectStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const v2, 0x7f0803b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 271
    :cond_3
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    const v2, 0x7f0803b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 274
    :cond_4
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showGuideView(Landroid/view/View;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 304
    new-instance v0, Lcom/blog/www/guideview/g;

    invoke-direct {v0}, Lcom/blog/www/guideview/g;-><init>()V

    .line 305
    .local v0, "builder":Lcom/blog/www/guideview/g;
    invoke-virtual {v0, p1}, Lcom/blog/www/guideview/g;->a(Landroid/view/View;)Lcom/blog/www/guideview/g;

    move-result-object v1

    const v2, 0x7f09029f

    .line 306
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->c(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    const/16 v2, 0xc8

    .line 307
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->a(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->d(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 309
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->k(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->d(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v4}, Lcom/blog/www/guideview/g;->c(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->b(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 313
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    .line 314
    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/g;->e(Z)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mScreenWidth:I

    .line 315
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->g(I)Lcom/blog/www/guideview/g;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mScreenHeight:I

    .line 316
    invoke-virtual {v1, v2}, Lcom/blog/www/guideview/g;->h(I)Lcom/blog/www/guideview/g;

    .line 317
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/g$a;)Lcom/blog/www/guideview/g;

    .line 341
    new-instance v1, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->getIcon()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/jiliguala/niuwa/module/guideview/RoadMapTextComponent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/blog/www/guideview/g;->a(Lcom/blog/www/guideview/d;)Lcom/blog/www/guideview/g;

    .line 342
    invoke-virtual {v0}, Lcom/blog/www/guideview/g;->a()Lcom/blog/www/guideview/f;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    .line 343
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    invoke-virtual {v1, v3}, Lcom/blog/www/guideview/f;->a(Z)V

    .line 344
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mGuide:Lcom/blog/www/guideview/f;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;)V

    .line 345
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
    .line 89
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .line 90
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->mData:Ljava/util/List;

    .line 91
    return-void
.end method
