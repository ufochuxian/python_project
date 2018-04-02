.class Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/recorder/audio/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onEncodeStart()V

    .line 95
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onEncodeEnd()V

    .line 102
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onEncodePermissionError()V

    .line 108
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$4;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->cancelCurrentAudioRecord()V

    .line 110
    :cond_0
    return-void
.end method
