.class Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->autoRefresh()V
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
    .line 146
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->access$100(Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setRefreshing(Z)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment$3;->a:Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/fragment/OrderListFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/order/presenter/OrderListPresenter;->refreshNew()V

    .line 151
    return-void
.end method
