.class public Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;
.super Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 0
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
    .line 31
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 32
    return-void
.end method

.method private autoPlayVideo()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->videointro:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Step"

    const-string v2, "IntroVideo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "Type"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Beginner\u2018s Guide View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->videointro:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected getIcon()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0803f8

    return v0
.end method

.method protected onDismissGuideView()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->reportBeginnerGuideComplete()V

    .line 107
    const-string v0, "PREFS_BABY_LESSON_GUIDE_MASK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method protected onShowGuideView()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mHasShowGuideView:Z

    .line 102
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
    .line 37
    .local p2, "item":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
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

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/util/n;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mHasShowGuideView:Z

    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->autoPlayVideo()V

    .line 42
    const v1, 0x7f0902a5

    invoke-virtual {p1, v1}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "itemBgView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .end local v0    # "itemBgView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setShowGuideFlag()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "PREFS_BABY_LESSON_GUIDE_MASK"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    return-void
.end method

.method protected setStatusIcon(Lcom/c/a/a/a/e;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;)V
    .locals 5
    .param p1, "helper"    # Lcom/c/a/a/a/e;
    .param p2, "roadmapBean"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 75
    const v2, 0x7f0903ce

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "payIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->isPlanA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const v2, 0x7f08013a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :goto_0
    const v2, 0x7f09052e

    invoke-virtual {p1, v2}, Lcom/c/a/a/a/e;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .local v1, "statusIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 80
    .end local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    .restart local v1    # "statusIcon":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const v2, 0x7f0803bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
