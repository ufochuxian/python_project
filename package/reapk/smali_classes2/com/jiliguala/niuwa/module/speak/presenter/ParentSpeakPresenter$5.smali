.class Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->requestServerIfUploadComplete(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V
    .locals 1
    .param p1, "template"    # Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$300(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$400(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onUpLoadFailed()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$200(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    .line 486
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$300(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V

    .line 487
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 474
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$5;->a(Lcom/jiliguala/niuwa/logic/network/json/LessonProgressTemplate;)V

    return-void
.end method
