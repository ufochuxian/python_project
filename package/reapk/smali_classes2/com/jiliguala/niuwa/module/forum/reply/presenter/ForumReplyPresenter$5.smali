.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/recorder/audio/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->showProgress()V

    .line 78
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->dismissProgress()V

    .line 85
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->dismissProgress()V

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$5;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioRecordCancel()V

    .line 93
    :cond_0
    const v0, 0x7f0f018e

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 94
    return-void
.end method
