.class Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    .prologue
    .line 656
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->c:Landroid/os/IBinder;

    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 659
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 662
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 663
    .local v1, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    if-nez v1, :cond_0

    .line 664
    const-string v2, "MBServiceCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->e:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->b:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->c:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$3;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_0
.end method
