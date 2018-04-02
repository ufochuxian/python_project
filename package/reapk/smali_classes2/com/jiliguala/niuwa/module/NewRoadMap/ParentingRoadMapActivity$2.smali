.class Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;
.super Landroid/support/v7/widget/RecyclerView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 317
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 318
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 20
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 322
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$l;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 324
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->mRecyclerVeiw:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v18

    if-lez v18, :cond_0

    .line 331
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->scrollBg()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;F)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$100(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$200(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)V

    .line 339
    if-lez p2, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v10

    .line 344
    .local v10, "mHeaderView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v18

    if-gez v18, :cond_4

    .line 346
    if-eqz v10, :cond_2

    .line 347
    const v18, 0x7f090213

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 348
    .local v7, "itemFloatingView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .line 349
    .local v17, "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    if-eqz v7, :cond_2

    .line 352
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 353
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .end local v7    # "itemFloatingView":Landroid/view/View;
    .end local v10    # "mHeaderView":Landroid/view/View;
    .end local v17    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v9

    .line 399
    .local v9, "mFooterView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 404
    .local v11, "measuredWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v11, :cond_9

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    const v18, 0x7f090213

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 408
    .restart local v7    # "itemFloatingView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 410
    .local v6, "floatLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v6, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->getData()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;

    .line 412
    .local v13, "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;

    .line 413
    .local v4, "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;->isCurrent()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$900(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42100000    # 36.0f

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 422
    .end local v4    # "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v13    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_3
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 431
    .local v16, "scrollDis":I
    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    mul-float v8, v18, v19

    .line 432
    .local v8, "limitDis":F
    if-ltz v16, :cond_8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_8

    .line 434
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v18, v8

    .line 435
    .local v15, "percent":F
    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f4ccccd    # 0.8f

    mul-float v19, v19, v15

    sub-float v3, v18, v19

    .line 438
    .local v3, "alpha":F
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 541
    .end local v3    # "alpha":F
    .end local v6    # "floatLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "itemFloatingView":Landroid/view/View;
    .end local v8    # "limitDis":F
    .end local v9    # "mFooterView":Landroid/view/View;
    .end local v11    # "measuredWidth":I
    .end local v15    # "percent":F
    .end local v16    # "scrollDis":I
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 357
    .restart local v10    # "mHeaderView":Landroid/view/View;
    :cond_4
    const v18, 0x7f090213

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 359
    .restart local v7    # "itemFloatingView":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 360
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$700(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)I

    move-result v18

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v5, v18, v19

    .line 367
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 369
    .restart local v11    # "measuredWidth":I
    const v18, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    mul-float v8, v18, v19

    .line 371
    .restart local v8    # "limitDis":F
    const v12, 0x3e4ccccd    # 0.2f

    .line 373
    .local v12, "minAlpha":F
    if-lez v5, :cond_2

    if-ge v5, v11, :cond_2

    .line 375
    move/from16 v16, v5

    .line 377
    .restart local v16    # "scrollDis":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_6

    .line 378
    if-eqz v7, :cond_2

    .line 379
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 384
    :cond_6
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v8

    int-to-float v0, v11

    move/from16 v19, v0

    sub-float v19, v19, v8

    div-float v15, v18, v19

    .line 386
    .restart local v15    # "percent":F
    const v18, 0x3f4ccccd    # 0.8f

    mul-float v18, v18, v15

    add-float v3, v12, v18

    .line 389
    .restart local v3    # "alpha":F
    if-eqz v7, :cond_2

    .line 390
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 417
    .end local v3    # "alpha":F
    .end local v5    # "distance":I
    .end local v8    # "limitDis":F
    .end local v10    # "mHeaderView":Landroid/view/View;
    .end local v12    # "minAlpha":F
    .end local v15    # "percent":F
    .end local v16    # "scrollDis":I
    .restart local v4    # "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .restart local v6    # "floatLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "mFooterView":Landroid/view/View;
    .restart local v13    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$1000(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42100000    # 36.0f

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 440
    .end local v4    # "content":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;
    .end local v13    # "multipleItem":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<Lcom/jiliguala/niuwa/logic/network/json/McTemplete$RoadmapBean;>;"
    .restart local v8    # "limitDis":F
    .restart local v16    # "scrollDis":I
    :cond_8
    const v12, 0x3e4ccccd    # 0.2f

    .line 441
    .restart local v12    # "minAlpha":F
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 446
    .end local v6    # "floatLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "itemFloatingView":Landroid/view/View;
    .end local v8    # "limitDis":F
    .end local v12    # "minAlpha":F
    .end local v16    # "scrollDis":I
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v11, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    mul-int/lit8 v19, v11, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 453
    .end local v9    # "mFooterView":Landroid/view/View;
    .end local v11    # "measuredWidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mHeaderPos:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v10

    .line 455
    .restart local v10    # "mHeaderView":Landroid/view/View;
    const v18, 0x7f090213

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 457
    .restart local v7    # "itemFloatingView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v18

    if-lez v18, :cond_b

    .line 461
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_e

    .line 462
    if-eqz v10, :cond_b

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 465
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .end local v7    # "itemFloatingView":Landroid/view/View;
    .end local v10    # "mHeaderView":Landroid/view/View;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$400(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$300(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/adapter/ParentingRoadMapItemAdapter;->mFooterPos:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v9

    .line 499
    .restart local v9    # "mFooterView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 502
    .restart local v11    # "measuredWidth":I
    const v18, 0x7f090213

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 504
    .restart local v7    # "itemFloatingView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    if-lez v18, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v11, :cond_d

    .line 508
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v14, :cond_c

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 512
    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 514
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v16

    .line 516
    .restart local v16    # "scrollDis":I
    const v18, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    mul-float v8, v18, v19

    .line 518
    .restart local v8    # "limitDis":F
    const v12, 0x3e4ccccd    # 0.2f

    .line 520
    .restart local v12    # "minAlpha":F
    if-lez v16, :cond_10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_10

    .line 521
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    .line 531
    .end local v8    # "limitDis":F
    .end local v12    # "minAlpha":F
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "scrollDis":I
    :cond_d
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v11, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v18

    mul-int/lit8 v19, v11, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    .line 533
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;

    .line 534
    .restart local v17    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$600(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;Landroid/widget/RelativeLayout;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$500(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)Landroid/widget/RelativeLayout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 536
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 469
    .end local v9    # "mFooterView":Landroid/view/View;
    .end local v11    # "measuredWidth":I
    .end local v17    # "unitRoadMap":Lcom/jiliguala/niuwa/logic/network/json/McTemplete$DataBean$UnitRoadMap;
    .restart local v10    # "mHeaderView":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$700(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)I

    move-result v18

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v5, v18, v19

    .line 473
    .restart local v5    # "distance":I
    if-lez v5, :cond_b

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    cmpg-float v18, v18, v19

    if-gez v18, :cond_b

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v18

    int-to-float v0, v5

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 480
    .restart local v16    # "scrollDis":I
    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity$2;->a:Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;->access$800(Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;)F

    move-result v19

    mul-float v8, v18, v19

    .line 481
    .restart local v8    # "limitDis":F
    if-ltz v16, :cond_f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_f

    .line 483
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v18, v8

    .line 484
    .restart local v15    # "percent":F
    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f4ccccd    # 0.8f

    mul-float v19, v19, v15

    sub-float v3, v18, v19

    .line 487
    .restart local v3    # "alpha":F
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 489
    .end local v3    # "alpha":F
    .end local v15    # "percent":F
    :cond_f
    const v12, 0x3e4ccccd    # 0.2f

    .line 490
    .restart local v12    # "minAlpha":F
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_3

    .line 524
    .end local v5    # "distance":I
    .end local v10    # "mHeaderView":Landroid/view/View;
    .restart local v9    # "mFooterView":Landroid/view/View;
    .restart local v11    # "measuredWidth":I
    .restart local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v8

    int-to-float v0, v11

    move/from16 v19, v0

    sub-float v19, v19, v8

    div-float v15, v18, v19

    .line 525
    .restart local v15    # "percent":F
    const v18, 0x3f4ccccd    # 0.8f

    mul-float v18, v18, v15

    add-float v3, v12, v18

    .line 528
    .restart local v3    # "alpha":F
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4
.end method
