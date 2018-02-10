.class Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->uploadAudioRecordPost(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
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

.field final synthetic e:I

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->d:Ljava/lang/String;

    iput p6, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->e:I

    iput-object p7, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "\u5f55\u97f3\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$000(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyView;->onReplyFailed()V

    .line 430
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 435
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Ljava/lang/String;)[I

    move-result-object v10

    .line 418
    .local v10, "size":[I
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$200(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;)Lcom/jiliguala/niuwa/recorder/audio/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v8, v0

    .line 420
    .local v8, "audioLen":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->g:Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->d:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->e:I

    const/4 v4, 0x0

    aget v6, v10, v4

    const/4 v4, 0x1

    aget v7, v10, v4

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter$10;->f:Ljava/util/ArrayList;

    move-object v4, p1

    invoke-static/range {v0 .. v9}, Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;->access$500(Lcom/jiliguala/niuwa/module/forum/reply/presenter/ForumReplyPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;)V

    .line 421
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 440
    return-void
.end method
