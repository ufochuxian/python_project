.class Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;
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
    .line 196
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter$8;->a:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;->access$200(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayComplete(I)V

    .line 202
    :cond_0
    return-void
.end method
