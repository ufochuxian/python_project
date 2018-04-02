.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;)V
    .locals 9
    .param p1, "forumDetailSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 689
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3900(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    if-eqz p1, :cond_2

    .line 691
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 692
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v6, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->root:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4102(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 693
    iget-object v4, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v0, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    .line 694
    .local v0, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->updateDateSet(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;Z)V

    .line 696
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 697
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v3

    .line 698
    .local v3, "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4202(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v7, v7, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    iget-object v4, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-eqz v4, :cond_4

    .line 703
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0802d9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 704
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 709
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->fav:Z

    invoke-virtual {v4, v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->updateFavIcon(Z)V

    .line 712
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-boolean v4, v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isFirstTime:Z

    if-eqz v4, :cond_1

    .line 713
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iput-boolean v5, v4, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isFirstTime:Z

    .line 714
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v2, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ID"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v4, "Room"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v4, "Title"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v4, "isTop"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->top:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v4, "isNew"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->isnew:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v4, "isSelect"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v6

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->sel:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v4

    const-string v6, "Post Detail View"

    .line 722
    invoke-virtual {v4, v6, v2}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 725
    .end local v2    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->notifyDataSetChanged()V

    .line 726
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v6

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 729
    .end local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 730
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 733
    :cond_3
    return-void

    .line 706
    .restart local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    .restart local v3    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_4
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0802dd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 707
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 726
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_5
    const/16 v4, 0x8

    goto :goto_1
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 676
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 680
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->f()V

    .line 684
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 685
    return-void

    .line 684
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 668
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$31;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;)V

    return-void
.end method
