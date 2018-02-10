.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V
    .locals 2
    .param p1, "recommendCourseTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    .prologue
    .line 88
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->access$100(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentUI;->onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter;)V

    .line 84
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsFragmentPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/RecommendCourseTemplete;)V

    return-void
.end method
