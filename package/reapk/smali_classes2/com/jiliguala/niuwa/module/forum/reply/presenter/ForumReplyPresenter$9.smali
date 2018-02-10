.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->b:Ljava/lang/String;

    iput p4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->c:I

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "\u4e0a\u4f20\u56fe\u7247\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onReplyFailed()V

    .line 324
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 329
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->b:Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->c:I

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$9;->e:Ljava/util/ArrayList;

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$400(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 334
    return-void
.end method
