.class Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;->requestServer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;)V
    .locals 2
    .param p1, "lessonReportTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportUi;->showData(Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate$DataBean;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonReportTemplate;)V

    return-void
.end method
