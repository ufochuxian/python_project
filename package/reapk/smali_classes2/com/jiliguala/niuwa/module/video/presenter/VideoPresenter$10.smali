.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 2
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 1413
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    .line 1415
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->b:Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onSubCourseReportFailed()V

    .line 1406
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1395
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$10;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
