.class Landroid/support/v4/media/h$a;
.super Landroid/support/v4/media/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/h$b;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Landroid/support/v4/media/h$b;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/g$b;-><init>(Landroid/content/Context;Landroid/support/v4/media/g$d;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/h$a;->a:Landroid/support/v4/media/g$d;

    check-cast v0, Landroid/support/v4/media/h$b;

    new-instance v1, Landroid/support/v4/media/g$c;

    invoke-direct {v1, p2}, Landroid/support/v4/media/g$c;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/h$b;->b(Ljava/lang/String;Landroid/support/v4/media/g$c;)V

    .line 48
    return-void
.end method
