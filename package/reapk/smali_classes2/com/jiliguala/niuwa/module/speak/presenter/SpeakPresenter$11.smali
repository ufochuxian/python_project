.class Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 2
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$400(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$500(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 891
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadFailed()V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$300(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    .line 899
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->b:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$400(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V

    .line 900
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 887
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$11;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
