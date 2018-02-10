.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 123
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->b(Landroid/support/v4/app/ag;)V

    .line 128
    :cond_1
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 132
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1$1;

    invoke-direct {v1, p0, p3}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    :cond_0
    return-void
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 157
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->dismissAllowingStateLoss()V

    .line 159
    const-string v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 148
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$1;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$000(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/d;->a(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 166
    return-void
.end method
