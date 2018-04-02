.class Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->loadMoreSub()Lrx/l;
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
    .line 609
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;)V
    .locals 8
    .param p1, "forumDetailSets"    # Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 630
    if-eqz p1, :cond_1

    .line 631
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v5, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->root:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    invoke-static {v3, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4102(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    .line 632
    iget-object v3, p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;

    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$DataPart;->posts:Ljava/util/ArrayList;

    .line 633
    .local v0, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->updateDateSet(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;Z)V

    .line 635
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 636
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    move-result-object v2

    .line 637
    .local v2, "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4202(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 641
    iget-object v3, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v3, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-eqz v3, :cond_2

    .line 642
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0802d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 643
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 648
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4300(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 649
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    iget-object v5, v2, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->fav:Z

    invoke-virtual {v3, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;->updateFavIcon(Z)V

    .line 651
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->notifyDataSetChanged()V

    .line 652
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 661
    .end local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    .end local v2    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3902(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 662
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v5

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    return-void

    .line 645
    .restart local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    .restart local v2    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0802dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 646
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v4, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 653
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "rootForumItem":Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    goto :goto_1

    .line 662
    .end local v0    # "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;>;"
    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3802(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 618
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const-string v1, "\u5237\u65b0\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3400(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/g;->dismissAllowingStateLoss()V

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$3902(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;Z)Z

    .line 625
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$4000(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a:Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->access$2100(Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;)Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 626
    return-void

    .line 625
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 609
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment$30;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets;)V

    return-void
.end method
