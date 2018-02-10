.class Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->startRepeatTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$700(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$800(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$700(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$900(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekTo(I)V

    .line 1055
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$700(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 1056
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onVideoPlayPaused()V

    .line 1058
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onStartVideoRecord()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$3;->a()V

    .line 1066
    return-void
.end method
