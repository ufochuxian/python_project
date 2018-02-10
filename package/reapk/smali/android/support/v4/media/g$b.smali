.class Landroid/support/v4/media/g$b;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/support/v4/media/g$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/g$d;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceWrapper"    # Landroid/support/v4/media/g$d;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/support/v4/media/g$b;->attachBaseContext(Landroid/content/Context;)V

    .line 116
    iput-object p2, p0, Landroid/support/v4/media/g$b;->a:Landroid/support/v4/media/g$d;

    .line 117
    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 122
    iget-object v1, p0, Landroid/support/v4/media/g$b;->a:Landroid/support/v4/media/g$d;

    invoke-interface {v1, p1, p2, p3}, Landroid/support/v4/media/g$d;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/g$a;

    move-result-object v0

    .line 124
    .local v0, "browserRoot":Landroid/support/v4/media/g$a;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object v2, v0, Landroid/support/v4/media/g$a;->a:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/media/g$a;->b:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Landroid/support/v4/media/g$b;->a:Landroid/support/v4/media/g$d;

    new-instance v1, Landroid/support/v4/media/g$c;

    invoke-direct {v1, p2}, Landroid/support/v4/media/g$c;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/g$d;->a(Ljava/lang/String;Landroid/support/v4/media/g$c;)V

    .line 131
    return-void
.end method
