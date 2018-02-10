.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/customview/b;


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
    .line 154
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorPageBackBtnClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onRefreshButtonClick()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment$3;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragment;->autoRefresh()V

    .line 158
    return-void
.end method
