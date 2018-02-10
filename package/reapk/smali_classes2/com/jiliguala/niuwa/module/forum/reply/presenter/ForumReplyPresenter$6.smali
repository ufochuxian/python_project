.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->postSub()Lrx/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;)V
    .locals 2
    .param p1, "forumNewlyCreateTemplate"    # Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onReplySuccess(Ljava/lang/Object;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$100(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/i;->f(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->d()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/c;->d()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "audioPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->f(Ljava/lang/String;)V

    .line 130
    .end local v0    # "audioPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onReplyFailed()V

    .line 118
    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$6;->a(Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;)V

    return-void
.end method
