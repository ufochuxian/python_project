.class Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:I

.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    .prologue
    .line 596
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->c:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 599
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 602
    .local v0, "b":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v3, v0}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {v1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$b;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    .line 605
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    .line 606
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->c:Landroid/os/Bundle;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->b:Landroid/os/Bundle;

    .line 607
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    .line 609
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    iget v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->d:I

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->c:Landroid/os/Bundle;

    .line 610
    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    .line 613
    iget-object v3, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    if-nez v3, :cond_1

    .line 614
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No root for client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 614
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->n:Landroid/support/v4/media/session/g$i;

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iget-object v4, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat;->n:Landroid/support/v4/media/session/g$i;

    iget-object v6, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    .line 627
    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->b()Landroid/os/Bundle;

    move-result-object v6

    .line 626
    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/String;Landroid/support/v4/media/session/g$i;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 629
    :catch_1
    move-exception v2

    .line 630
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$1;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v3, v0}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
