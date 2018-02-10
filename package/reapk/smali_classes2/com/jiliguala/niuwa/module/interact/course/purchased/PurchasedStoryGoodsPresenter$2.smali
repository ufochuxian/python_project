.class Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->loadMoreSub()Lrx/l;
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
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->isLoadingMore:Z

    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->access$108(Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;)I

    .line 99
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->isLoadingMore:Z

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a:Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onLoadMoreFailed()V

    .line 87
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedStoryGoodsPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    return-void
.end method
