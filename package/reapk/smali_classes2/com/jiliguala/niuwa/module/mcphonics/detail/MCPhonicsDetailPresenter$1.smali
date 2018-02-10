.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->requestServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;)V
    .locals 2
    .param p1, "lessons"    # Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;->showData(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/n;->a()Lcom/jiliguala/niuwa/common/util/n;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jiliguala/niuwa/common/util/n;->a:Z

    .line 41
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;)V

    return-void
.end method
