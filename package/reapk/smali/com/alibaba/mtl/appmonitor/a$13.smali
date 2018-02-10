.class final Lcom/alibaba/mtl/appmonitor/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1204
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->c:Lcom/alibaba/mtl/appmonitor/a$f;

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->f()Lcom/alibaba/mtl/appmonitor/a$f;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1205
    invoke-static {p2}, Lcom/alibaba/mtl/appmonitor/d$a;->a(Landroid/os/IBinder;)Lcom/alibaba/mtl/appmonitor/d;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    .line 1206
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->e()Lcom/alibaba/mtl/appmonitor/a$g;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/appmonitor/a$13$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/appmonitor/a$13$1;-><init>(Lcom/alibaba/mtl/appmonitor/a$13;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a$g;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1218
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1219
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1220
    monitor-exit v1

    .line 1221
    return-void

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 1225
    const-string v0, "AppMonitor"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[onServiceDisconnected]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1227
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/a;->b(Z)Z

    .line 1230
    return-void

    .line 1228
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
