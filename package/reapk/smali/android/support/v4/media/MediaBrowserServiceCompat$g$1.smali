.class Landroid/support/v4/media/MediaBrowserServiceCompat$g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Landroid/support/v4/media/session/g$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/g$i;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$g;Landroid/support/v4/media/session/g$i;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$1;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$1;->a:Landroid/support/v4/media/session/g$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 178
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$1;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v3}, Landroid/support/v4/k/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 179
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/media/MediaBrowserServiceCompat$b;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 182
    .local v0, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    :try_start_0
    iget-object v3, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    iget-object v4, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$1;->a:Landroid/support/v4/media/session/g$i;

    iget-object v6, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$a;

    .line 183
    invoke-virtual {v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$a;->b()Landroid/os/Bundle;

    move-result-object v6

    .line 182
    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/String;Landroid/support/v4/media/session/g$i;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is no longer valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 189
    .end local v0    # "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
