.class Landroid/support/v4/media/MediaBrowserServiceCompat$3;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/a$k;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/os/m;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/m;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/MediaBrowserServiceCompat;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 1225
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->b:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->a:Landroid/support/v4/os/m;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1225
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->a(Ljava/util/List;I)V

    return-void
.end method

.method a(Ljava/util/List;I)V
    .locals 4
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    const/4 v3, 0x0

    .line 1228
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1230
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->a:Landroid/support/v4/os/m;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/m;->b(ILandroid/os/Bundle;)V

    .line 1237
    :goto_0
    return-void

    .line 1233
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "search_results"

    new-array v1, v3, [Landroid/support/v4/media/a$k;

    .line 1235
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 1234
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1236
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->a:Landroid/support/v4/os/m;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/os/m;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
