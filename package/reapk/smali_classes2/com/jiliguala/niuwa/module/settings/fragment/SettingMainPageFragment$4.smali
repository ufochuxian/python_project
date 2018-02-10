.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->checkNetwork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 755
    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    .line 756
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 762
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$4;->b:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 753
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method
