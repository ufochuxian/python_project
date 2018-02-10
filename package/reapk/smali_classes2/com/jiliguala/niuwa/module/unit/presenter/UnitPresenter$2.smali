.class Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->refreshUnitData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
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
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;ZZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->a:Z

    iput-boolean p3, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->b:Z

    iput-boolean p4, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->c:Z

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 3
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->a:Z

    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->b:Z

    invoke-static {v0, p1, v1, v2}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$100(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;ZZ)V

    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->addCourseFinishWatcher()V

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->onRequestDataSuccess(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    .line 134
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->c:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->refreshUnitDataSuccess()V

    .line 139
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->d:Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;->access$000(Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitView;->onRequestDataFail(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/unit/presenter/UnitPresenter$2;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
