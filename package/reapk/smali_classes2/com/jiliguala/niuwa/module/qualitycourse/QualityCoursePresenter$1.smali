.class Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->requestHeaderIconData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V
    .locals 1
    .param p1, "courseEntranceTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;->requestSuccess()V

    .line 94
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a:Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCourseView;->requestFailed()V

    .line 83
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/QualityCoursePresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;)V

    return-void
.end method
