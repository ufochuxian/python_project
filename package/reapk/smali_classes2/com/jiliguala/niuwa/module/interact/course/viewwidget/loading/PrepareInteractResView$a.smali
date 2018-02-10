.class Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    .prologue
    .line 849
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 850
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    .line 851
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 855
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 856
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 858
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;

    .line 859
    .local v0, "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->b:Ljava/lang/String;

    iget-wide v6, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->c:J

    invoke-static {v2, v3, v4, v6, v7}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 863
    .end local v0    # "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;

    .line 864
    .restart local v0    # "obj":Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->isInteractCourseFragmentVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$CallBack;->hasCoursePay()Z

    move-result v2

    if-nez v2, :cond_1

    .line 867
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->updateProgress(I)V

    goto :goto_0

    .line 872
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->mSaveDir:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showDownloadProgress()V

    .line 874
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->showTextDownloading()V

    .line 875
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isDefaultDownloadStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 876
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    move-result-object v2

    iget-wide v4, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->c:J

    long-to-float v3, v4

    invoke-virtual {v2, v3}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setProgress(F)V

    .line 878
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->isGameStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    iget-wide v2, v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$b;->c:J

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/e/b;->a(FF)F

    move-result v1

    .line 881
    .local v1, "progress":F
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;->access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/PrepareInteractResView;)Lcom/liulishuo/magicprogresswidget/MagicProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/liulishuo/magicprogresswidget/MagicProgressBar;->setPercent(F)V

    goto/16 :goto_0

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
