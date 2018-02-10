.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->autoRefresh()V
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
    .line 113
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshListView;->setRefreshing(Z)V

    .line 117
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->refreshNew()V

    .line 118
    return-void
.end method
