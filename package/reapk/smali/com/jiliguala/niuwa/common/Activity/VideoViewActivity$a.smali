.class Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 328
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 333
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/Activity/a;->g()I

    move-result v0

    .line 338
    .local v0, "currentPos":I
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/a;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/common/Activity/a;->i()I

    move-result v1

    .line 339
    .local v1, "totalDuration":I
    const-wide/16 v4, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    int-to-long v6, v1

    div-long v2, v4, v6

    .line 341
    .local v2, "pos":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 342
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->a(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 344
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;->b(Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;)Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;

    move-result-object v4

    const/4 v5, 0x2

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v0    # "currentPos":I
    .end local v1    # "totalDuration":I
    .end local v2    # "pos":J
    :catch_0
    move-exception v4

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
