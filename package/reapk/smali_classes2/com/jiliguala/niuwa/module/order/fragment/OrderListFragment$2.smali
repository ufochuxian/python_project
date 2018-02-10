.class Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->initView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

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
    .line 124
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 101
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 103
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 108
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 105
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->access$100(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$2;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->loadMore()V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
