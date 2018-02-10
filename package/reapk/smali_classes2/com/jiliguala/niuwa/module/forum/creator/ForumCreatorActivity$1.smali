.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity$OnReplyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplyFailed()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 106
    return-void
.end method

.method public onReplySuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$000(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    move-object v3, p1

    .line 80
    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;

    .line 81
    .local v3, "template":Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;
    iget-object v0, v3, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;

    .line 82
    .local v0, "currentForum":Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;->_id:Ljava/lang/String;

    .line 84
    .local v1, "forum_id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const-class v5, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    const-string v4, "rid"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v4, "lock"

    iget-object v5, v0, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumMetaPart;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumNewlyCreateTemplate$ForumMetaPart;->lock:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const v5, 0x7f01001d

    const v6, 0x7f010013

    invoke-virtual {v4, v5, v6}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->overridePendingTransition(II)V

    .line 95
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 97
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$1;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->finish()V

    goto :goto_0
.end method
