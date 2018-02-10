.class Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->requestUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 2
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->addCourseFinishWatcher()V

    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->onRequestDataSuccess(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 75
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;

    iget v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate$UnitData;->courseindex:I

    .line 80
    .local v0, "serverIndex":I
    if-nez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->report(I)V

    .line 86
    .end local v0    # "serverIndex":I
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
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->onRequestDataFail(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$1;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
