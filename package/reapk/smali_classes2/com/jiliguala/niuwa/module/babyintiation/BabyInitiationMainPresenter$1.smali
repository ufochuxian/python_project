.class Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;)V
    .locals 2
    .param p1, "homeTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainUi;->showData(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;)V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->splash:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->access$000(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;->a:Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean;->skin:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;->access$100(Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter;Ljava/util/List;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/babyintiation/BabyInitiationMainPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate;)V

    return-void
.end method
