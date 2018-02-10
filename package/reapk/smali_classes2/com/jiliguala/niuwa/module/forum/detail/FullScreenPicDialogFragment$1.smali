.class Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ret"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "localUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    const-string v1, "\u56fe\u7247\u4fdd\u5b58\u6210\u529f"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 61
    .end local v0    # "localUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment$1;->a:Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 46
    return-void
.end method
