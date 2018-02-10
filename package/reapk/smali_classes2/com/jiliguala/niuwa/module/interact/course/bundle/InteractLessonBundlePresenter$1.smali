.class Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->requestBundleData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;)V
    .locals 1
    .param p1, "templete"    # Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;->onRequestSuccess(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a:Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleView;->showErrorView()V

    .line 46
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundlePresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;)V

    return-void
.end method
