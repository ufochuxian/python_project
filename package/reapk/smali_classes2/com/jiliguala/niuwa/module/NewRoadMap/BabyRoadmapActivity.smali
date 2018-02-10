.class public Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;
.super Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buyAllCourse()V
    .locals 7

    .prologue
    .line 47
    const-string v1, ""

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    return-void
.end method

.method protected converData(Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V
    .locals 5
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getUnitRoadMap()Ljava/util/List;

    move-result-object v2

    .line 25
    .local v2, "unitRoadMapList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "roadmapBeans":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .line 27
    .local v1, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v1    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_0
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iput-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->roadmap:Ljava/util/List;

    .line 30
    return-void
.end method

.method public doOnItemClick(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->hasRoadMapData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->getRoadMapData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 54
    .local v8, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "\u5b66\u5b8c\u524d\u9762\u7684\u8bfe\u7a0b\u624d\u53ef\u4ee5\u5b66\u4e60\u54e6\uff5e"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isStop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const-string v0, "\u8bfe\u7a0b\u5c06\u57282.14\u524d\u4e0a\u7ebf\uff0c\u966a\u60a8\u548c\u5b9d\u8d1d\u8fc7\u597d\u5e74!"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->enablePay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v1, v8, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->plan:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;

    iget-object v4, v0, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean;->lv:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->isLv1()Z

    move-result v5

    const-string v6, "parenting-purchase.html?baby_id=%s&type=%s&lid=%s&plan=%s"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goPurchaseRoadMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/jiliguala/niuwa/module/mcphonics/parentcourse/ParentCourseDetailActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "id"

    iget-object v1, v8, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->_id:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected initAdapter()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/BabyRoadmapItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setCallBack(Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapCallBack;)V

    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mData:Ljava/util/List;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mcTemplete:Lcom/jiliguala/niuwa/logic/network/json/McTemplete;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->updateData(Ljava/util/List;Lcom/jiliguala/niuwa/logic/network/json/McTemplete;)V

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mRoadMapAdapter:Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/RoadMapItemAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0
.end method
