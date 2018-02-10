.class Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->initUIComponent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 123
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 125
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->j()V

    .line 130
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 141
    :cond_0
    :goto_1
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->k()V

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$000(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->isLoadingMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$100(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment$1;->a:Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;->access$200(Lcom/jiliguala/niuwa/module/discovery/fragment/DiscoveryDailyFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/discovery/presenter/DiscoveryDailyPresenter;->loadMore(I)V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
