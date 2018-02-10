.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 514
    const-string v0, "\u5f55\u97f3\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onReplyFailed()V

    .line 518
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v9

    .line 506
    .local v9, "size":[I
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v8, v0

    .line 508
    .local v8, "audioLen":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->f:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$2;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aget v6, v9, v5

    const/4 v5, 0x1

    aget v7, v9, v5

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$600(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 509
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 528
    return-void
.end method
