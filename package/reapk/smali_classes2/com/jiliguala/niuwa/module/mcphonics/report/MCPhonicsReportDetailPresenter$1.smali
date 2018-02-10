.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;->requestServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;)V
    .locals 2
    .param p1, "lessonReportDetailTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;->data:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailUi;->showData(Ljava/util/List;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonReportDetailTemplate;)V

    return-void
.end method
