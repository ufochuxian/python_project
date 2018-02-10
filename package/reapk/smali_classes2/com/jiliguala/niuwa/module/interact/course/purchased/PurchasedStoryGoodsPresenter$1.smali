.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->refreshNewSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "recommendCourseTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 62
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete$Data;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onRefreshNewSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->access$102(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;I)I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->access$000(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)V

    .line 58
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    return-void
.end method
