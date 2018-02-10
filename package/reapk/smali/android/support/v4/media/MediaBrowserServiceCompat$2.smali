.class Landroid/support/v4/media/MediaBrowserServiceCompat$2;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/support/v4/os/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$h",
        "<",
        "Landroid/support/v4/media/a$k;",
        ">;"
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
    .line 1199
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->b:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->a:Landroid/support/v4/os/m;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Landroid/support/v4/media/a$k;I)V
    .locals 4
    .param p1, "item"    # Landroid/support/v4/media/a$k;
    .param p2, "flags"    # I

    .prologue
    .line 1202
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->a:Landroid/support/v4/os/m;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/m;->b(ILandroid/os/Bundle;)V

    .line 1209
    :goto_0
    return-void

    .line 1206
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1208
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->a:Landroid/support/v4/os/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/m;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1199
    check-cast p1, Landroid/support/v4/media/a$k;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->a(Landroid/support/v4/media/a$k;I)V

    return-void
.end method
