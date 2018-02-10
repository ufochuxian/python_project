.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->replyWithContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->e:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->e:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->e:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->dismissProgress()V

    .line 258
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 263
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->e:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$8;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$300(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method
