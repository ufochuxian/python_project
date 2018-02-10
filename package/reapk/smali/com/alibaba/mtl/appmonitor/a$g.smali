.class Lcom/alibaba/mtl/appmonitor/a$g;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a$g;->a:Z

    .line 1240
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1244
    if-nez p1, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1247
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1248
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1249
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1251
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a$g;->a:Z

    .line 1283
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1259
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a$g;->a:Z

    if-eqz v0, :cond_0

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/a$g;->a:Z

    .line 1261
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1263
    :try_start_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1270
    :cond_0
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_1

    .line 1272
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 1278
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1279
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    :try_start_5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->j()V

    goto :goto_0

    .line 1267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 1276
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1273
    :catch_2
    move-exception v0

    goto :goto_1
.end method
