.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->autoRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->refreshNew()V

    .line 113
    return-void
.end method
