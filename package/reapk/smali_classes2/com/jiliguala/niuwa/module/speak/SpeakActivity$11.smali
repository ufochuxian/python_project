.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->requestSpeak()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;)V
    .locals 2
    .param p1, "speakModelTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$400(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$502(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;)Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    .line 359
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$600(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V

    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->validAudioExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithReplay(Z)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$300(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView;->c()V

    .line 350
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 340
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$11;->a(Lcom/jiliguala/niuwa/logic/network/json/SpeakModelTemplate;)V

    return-void
.end method
