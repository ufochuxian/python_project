.class Lcom/alibaba/sdk/android/feedback/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->g(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/util/d;->f(Lcom/alibaba/sdk/android/feedback/util/d;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->b(Lcom/alibaba/sdk/android/feedback/util/d;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->c(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->c(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->c(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/d;->a(Lcom/alibaba/sdk/android/feedback/util/d;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/d;->a(Lcom/alibaba/sdk/android/feedback/util/d;Z)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/h;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->h(Lcom/alibaba/sdk/android/feedback/util/d;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method
