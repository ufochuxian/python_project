.class Lcom/jiliguala/niuwa/module/video/VideoActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoActivity;->initDialogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoActivity;

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1531
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1554
    :goto_0
    return-void

    .line 1533
    :sswitch_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 1534
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1540
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 1541
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->access$1900(Lcom/jiliguala/niuwa/module/video/VideoActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1545
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoActivity$21;->a:Lcom/jiliguala/niuwa/module/video/VideoActivity;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/VideoActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->perform3GContinue()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1546
    :catch_1
    move-exception v0

    .line 1547
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1531
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method
