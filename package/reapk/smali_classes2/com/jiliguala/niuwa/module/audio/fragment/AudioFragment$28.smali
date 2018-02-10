.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->initDialogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 881
    :sswitch_0
    sput-boolean v3, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    .line 882
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 883
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 885
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/s;->a(Landroid/content/Context;)I

    move-result v1

    .line 886
    .local v1, "networkState":I
    const-string v2, "NONE_WIFI_NOTIFY_ENABLE"

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v0

    .line 887
    .local v0, "enabled":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 888
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->show3GNetStateDialog()V

    goto :goto_0

    .line 892
    .end local v0    # "enabled":Z
    .end local v1    # "networkState":I
    :sswitch_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayChangeToOfflineCancelled:Z

    .line 893
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 894
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1800(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 896
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$28;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->launchOfflineMode()V

    goto :goto_0

    .line 878
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method
