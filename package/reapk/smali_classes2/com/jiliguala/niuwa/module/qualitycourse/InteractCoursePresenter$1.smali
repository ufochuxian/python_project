.class Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->loadMoreSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V
    .locals 2
    .param p1, "courseDetailTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->isLoadingMore:Z

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;->onLoadMoreSuccess(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->isLoadingMore:Z

    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCourseUI;->onLoadMoreFailed()V

    .line 70
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/InteractCoursePresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseDetailTemplete;)V

    return-void
.end method
