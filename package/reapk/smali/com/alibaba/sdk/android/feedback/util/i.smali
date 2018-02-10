.class Lcom/alibaba/sdk/android/feedback/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/util/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/util/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/i;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/i;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->g(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/i;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/util/d;->g(Lcom/alibaba/sdk/android/feedback/util/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/i;->a:Lcom/alibaba/sdk/android/feedback/util/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/d;->a(Lcom/alibaba/sdk/android/feedback/util/d;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    return-void
.end method
