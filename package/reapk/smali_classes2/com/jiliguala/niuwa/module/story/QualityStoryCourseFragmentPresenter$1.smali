.class Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->loadMoreSub()Lrx/l;
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V
    .locals 2
    .param p1, "qualityStoryLessonTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->isLoadingMore:Z

    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->isLoadingMore:Z

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentUI;->onLoadMoreFailed()V

    .line 61
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/QualityStoryCourseFragmentPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/QualityStoryLessonTemplete;)V

    return-void
.end method
