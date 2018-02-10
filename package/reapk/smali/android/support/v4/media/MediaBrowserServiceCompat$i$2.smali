.class Landroid/support/v4/media/MediaBrowserServiceCompat$i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a(Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$i;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    .prologue
    .line 640
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$2;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 643
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$2;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$j;

    invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 646
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$i$2;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->k:Landroid/support/v4/k/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 647
    .local v1, "old":Landroid/support/v4/media/MediaBrowserServiceCompat$b;
    if-eqz v1, :cond_0

    .line 650
    :cond_0
    return-void
.end method
