.class final Lcom/google/android/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadTask"


# instance fields
.field private final callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

.field private volatile executorThread:Ljava/lang/Thread;

.field private final loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

.field final synthetic this$0:Lcom/google/android/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "loadable"    # Lcom/google/android/exoplayer/upstream/Loader$Loadable;
    .param p4, "callback"    # Lcom/google/android/exoplayer/upstream/Loader$Callback;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    .line 190
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .line 192
    iput-object p4, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    .line 193
    return-void
.end method

.method private onFinished()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;->access$002(Lcom/google/android/exoplayer/upstream/Loader;Z)Z

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->this$0:Lcom/google/android/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader;->access$102(Lcom/google/android/exoplayer/upstream/Loader;Lcom/google/android/exoplayer/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    .line 255
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->onFinished()V

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V

    .line 250
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->callback:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->cancelLoad()V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 200
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 206
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".load()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->load()V

    .line 209
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 211
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 230
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->loadable:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->isLoadCanceled()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v1, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v4, v1}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    throw v0
.end method
