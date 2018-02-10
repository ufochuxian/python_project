.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 128
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 130
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 135
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 146
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->isLoadingMore:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->loadMore(I)V

    goto :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
