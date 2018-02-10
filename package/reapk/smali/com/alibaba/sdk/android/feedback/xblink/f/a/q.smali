.class Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IWxCallback;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/s;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->a(Ljava/io/File;)[B

    move-result-object v0

    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "[\r|\n]"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "audioData"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;

    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/a/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a/r;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/a/q;Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
