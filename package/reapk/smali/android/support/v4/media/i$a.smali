.class Landroid/support/v4/media/i$a;
.super Landroid/support/v4/media/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/i$c;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Landroid/support/v4/media/i$c;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/h$a;-><init>(Landroid/content/Context;Landroid/support/v4/media/h$b;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Landroid/support/v4/media/i$a;->a:Landroid/support/v4/media/g$d;

    check-cast v0, Landroid/support/v4/media/i$c;

    new-instance v1, Landroid/support/v4/media/i$b;

    invoke-direct {v1, p2}, Landroid/support/v4/media/i$b;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, Landroid/support/v4/media/i$c;->a(Ljava/lang/String;Landroid/support/v4/media/i$b;Landroid/os/Bundle;)V

    .line 108
    return-void
.end method