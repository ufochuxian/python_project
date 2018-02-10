.class Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$e;->b(Ljava/lang/String;Landroid/support/v4/media/g$c;)V
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
.field final synthetic a:Landroid/support/v4/media/g$c;

.field final synthetic b:Landroid/support/v4/media/MediaBrowserServiceCompat$e;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroid/support/v4/media/g$c;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$e;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->b:Landroid/support/v4/media/MediaBrowserServiceCompat$e;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->a:Landroid/support/v4/media/g$c;

    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$h;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->a:Landroid/support/v4/media/g$c;

    invoke-virtual {v0}, Landroid/support/v4/media/g$c;->a()V

    .line 367
    return-void
.end method

.method a(Landroid/support/v4/media/a$k;I)V
    .locals 3
    .param p1, "item"    # Landroid/support/v4/media/a$k;
    .param p2, "flags"    # I

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->a:Landroid/support/v4/media/g$c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/media/g$c;->a(Ljava/lang/Object;)V

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 359
    .local v0, "parcelItem":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a$k;->writeToParcel(Landroid/os/Parcel;I)V

    .line 360
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->a:Landroid/support/v4/media/g$c;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/g$c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Landroid/support/v4/media/a$k;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$e$1;->a(Landroid/support/v4/media/a$k;I)V

    return-void
.end method
