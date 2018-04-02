.class Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->sendPractiseProgressReport(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V
    .locals 2
    .param p1, "unitDataTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->dismissLoadingProgress()V

    .line 794
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onSubCourseReportSucceed(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    .line 796
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->b:Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->access$000(Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioView;->onSubCourseReportFailed()V

    .line 788
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 777
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter$7;->a(Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;)V

    return-void
.end method
