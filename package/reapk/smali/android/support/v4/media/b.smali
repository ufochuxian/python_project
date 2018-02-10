.class Landroid/support/v4/media/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/b$c;,
        Landroid/support/v4/media/b$e;,
        Landroid/support/v4/media/b$d;,
        Landroid/support/v4/media/b$b;,
        Landroid/support/v4/media/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/Object;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "callback"    # Ljava/lang/Object;
    .param p3, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 41
    new-instance v0, Landroid/media/browse/MediaBrowser;

    check-cast p2, Landroid/media/browse/MediaBrowser$ConnectionCallback;

    .end local p2    # "callback":Ljava/lang/Object;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/media/b$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/b$a;

    .prologue
    .line 36
    new-instance v0, Landroid/support/v4/media/b$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/b$b;-><init>(Landroid/support/v4/media/b$a;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/media/b$d;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/b$d;

    .prologue
    .line 75
    new-instance v0, Landroid/support/v4/media/b$e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/b$e;-><init>(Landroid/support/v4/media/b$d;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 85
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p2    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 82
    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 52
    return-void
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method
