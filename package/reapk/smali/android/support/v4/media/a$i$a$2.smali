.class Landroid/support/v4/media/a$i$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/a$i$a;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;

.field final synthetic b:Landroid/support/v4/media/a$i$a;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$i$a;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/a$i$a;

    .prologue
    .line 1372
    iput-object p1, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iput-object p2, p0, Landroid/support/v4/media/a$i$a$2;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1375
    sget-boolean v0, Landroid/support/v4/media/a;->b:Z

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaServiceConnection.onServiceDisconnected name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i$a$2;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v2, v2, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v2, v2, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    invoke-virtual {v0}, Landroid/support/v4/media/a$i;->b()V

    .line 1384
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a$i$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1396
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iput-object v3, v0, Landroid/support/v4/media/a$i;->k:Landroid/support/v4/media/a$n;

    .line 1390
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iput-object v3, v0, Landroid/support/v4/media/a$i;->l:Landroid/os/Messenger;

    .line 1391
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v0, v0, Landroid/support/v4/media/a$i;->h:Landroid/support/v4/media/a$a;

    invoke-virtual {v0, v3}, Landroid/support/v4/media/a$a;->a(Landroid/os/Messenger;)V

    .line 1394
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/media/a$i;->i:I

    .line 1395
    iget-object v0, p0, Landroid/support/v4/media/a$i$a$2;->b:Landroid/support/v4/media/a$i$a;

    iget-object v0, v0, Landroid/support/v4/media/a$i$a;->a:Landroid/support/v4/media/a$i;

    iget-object v0, v0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->b()V

    goto :goto_0
.end method
