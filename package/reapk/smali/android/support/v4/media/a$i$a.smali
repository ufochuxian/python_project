.class Landroid/support/v4/media/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/a$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$i;)V
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1401
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v1, v1, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-virtual {v1}, Landroid/support/v4/media/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1402
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v0, v0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "funcName"    # Ljava/lang/String;

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v0, v0, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    if-eq v0, p0, :cond_1

    .line 1413
    iget-object v0, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget v0, v0, Landroid/support/v4/media/a$i;->i:I

    if-eqz v0, :cond_0

    .line 1415
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v2, v2, Landroid/support/v4/media/a$i;->e:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v2, v2, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_0
    const/4 v0, 0x0

    .line 1420
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1322
    new-instance v0, Landroid/support/v4/media/a$i$a$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/a$i$a$1;-><init>(Landroid/support/v4/media/a$i$a;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/a$i$a;->a(Ljava/lang/Runnable;)V

    .line 1368
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1372
    new-instance v0, Landroid/support/v4/media/a$i$a$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/a$i$a$2;-><init>(Landroid/support/v4/media/a$i$a;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/a$i$a;->a(Ljava/lang/Runnable;)V

    .line 1398
    return-void
.end method
