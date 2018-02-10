.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;
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
    .line 842
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 846
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 848
    :sswitch_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    .line 849
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 857
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->AudioPlayNoneWifiEnable:Z

    .line 858
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1700(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 862
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$27;->a:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->perform3GContinue()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 863
    :catch_1
    move-exception v0

    .line 864
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 846
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method
