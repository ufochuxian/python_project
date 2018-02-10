.class Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$f;->a(Ljava/lang/String;Landroid/support/v4/media/i$b;Landroid/os/Bundle;)V
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
.field final synthetic a:Landroid/support/v4/media/i$b;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$f;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$f;Ljava/lang/Object;Landroid/support/v4/media/i$b;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$f;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 397
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$f;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;->a:Landroid/support/v4/media/i$b;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;->a:Landroid/support/v4/media/i$b;

    invoke-virtual {v0}, Landroid/support/v4/media/i$b;->a()V

    .line 415
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;->a(Ljava/util/List;I)V

    return-void
.end method

.method a(Ljava/util/List;I)V
    .locals 5
    .param p2, "flags"    # I
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
    .line 400
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    const/4 v2, 0x0

    .line 401
    .local v2, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/a$k;

    .line 404
    .local v0, "item":Landroid/support/v4/media/a$k;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/a$k;->writeToParcel(Landroid/os/Parcel;I)V

    .line 406
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v0    # "item":Landroid/support/v4/media/a$k;
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$f$1;->a:Landroid/support/v4/media/i$b;

    invoke-virtual {v3, v2, p2}, Landroid/support/v4/media/i$b;->a(Ljava/util/List;I)V

    .line 410
    return-void
.end method
