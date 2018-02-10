.class Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;


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
    .line 79
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$000(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter$3;->a:Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;->access$100(Lcom/jiliguala/niuwa/module/speak/presenter/ParentSpeakPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->onRecordPlayError(I)V

    .line 85
    :cond_0
    return-void
.end method
