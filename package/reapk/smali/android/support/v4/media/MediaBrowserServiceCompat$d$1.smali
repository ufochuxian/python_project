.class Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/support/v4/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    .prologue
    .line 252
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 255
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v4}, Landroid/support/v4/k/a;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 256
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v4, v0}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 257
    .local v3, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    iget-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$b;->e:Ljava/util/HashMap;

    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Ljava/lang/String;

    .line 258
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 259
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v2, :cond_0

    .line 260
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/k/l;

    .line 261
    .local v1, "callback":Landroid/support/v4/k/l;, "Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->b:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/support/v4/k/l;->b:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v7, v4}, Landroid/support/v4/media/e;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->c:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iget-object v7, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$d$1;->a:Ljava/lang/String;

    iget-object v4, v1, Landroid/support/v4/k/l;->b:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v7, v8, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V

    goto :goto_0

    .line 268
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "callback":Landroid/support/v4/k/l;, "Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    .end local v2    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/k/l<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    .end local v3    # "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    :cond_2
    return-void
.end method
