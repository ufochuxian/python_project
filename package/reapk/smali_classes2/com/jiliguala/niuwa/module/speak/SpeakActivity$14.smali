.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->onVideoPlayPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->removeCaptionView()V

    .line 813
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$900(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget;->isTranslateUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$1000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->mSpeakPresenter:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$14;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$700(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->hasLocalAudioSavePath(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->showVideoPlayBtnWithReplay(Z)V

    .line 816
    :cond_2
    return-void

    .line 814
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
