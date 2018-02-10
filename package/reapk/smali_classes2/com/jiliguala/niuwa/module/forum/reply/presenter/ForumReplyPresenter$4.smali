.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;


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
    .line 64
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$4;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onAudioPlayError()V

    .line 70
    :cond_0
    return-void
.end method
