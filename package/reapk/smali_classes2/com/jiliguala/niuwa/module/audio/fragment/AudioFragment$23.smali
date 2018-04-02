.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->checkNetworkWhileClickDownload()V
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
    .line 478
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 483
    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->clickDownloadThisSong()V

    .line 485
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 490
    :sswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->AudioResNoneWifiDownloadEnable:Z

    .line 491
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$23;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1500(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method
