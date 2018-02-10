.class Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->onRefresh(Ljava/lang/String;)V
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
    .line 66
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;)V
    .locals 2
    .param p1, "lessonsTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;

    .prologue
    .line 79
    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/Lessons;

    .line 80
    .local v0, "lesson":Lcom/jiliguala/niuwa/logic/network/json/Lessons;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;->a:Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailUi;->onRefreshSuccess(Lcom/jiliguala/niuwa/logic/network/json/Lessons;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/mcphonics/detail/MCPhonicsDetailPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonsTemplate;)V

    return-void
.end method
