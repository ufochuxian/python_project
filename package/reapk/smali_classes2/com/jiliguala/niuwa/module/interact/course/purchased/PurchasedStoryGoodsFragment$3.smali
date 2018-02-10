.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->setViewListener()V
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
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsFragment;->autoRefresh()V

    .line 154
    return-void
.end method
