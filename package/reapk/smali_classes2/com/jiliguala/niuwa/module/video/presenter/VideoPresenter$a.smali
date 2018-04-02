.class Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "controller"    # Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    .prologue
    .line 2033
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2034
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    .line 2035
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 2044
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2045
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2076
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2047
    :pswitch_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1200(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I

    move-result v1

    .line 2050
    .local v1, "pos":I
    if-eqz v1, :cond_1

    .line 2051
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2052
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->hideLoadingProgress()V

    .line 2055
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1300(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)I

    move-result v0

    .line 2057
    .local v0, "duration":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2058
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    invoke-interface {v2, v1, v0}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onProgressUpdate(II)V

    .line 2060
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1400(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;I)V

    .line 2061
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2064
    .end local v0    # "duration":I
    .end local v1    # "pos":I
    :pswitch_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2065
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1500(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->getPlayBackInfo()V

    .line 2067
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->access$1000(Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;)Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3, v4, v5}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2070
    :pswitch_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2071
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/video/presenter/VideoPresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Lcom/jiliguala/niuwa/module/video/presenter/VideoView;->onProgressUpdate(II)V

    goto/16 :goto_0

    .line 2045
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
