.class Landroid/support/v4/media/g;
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
        Landroid/support/v4/media/g$b;,
        Landroid/support/v4/media/g$a;,
        Landroid/support/v4/media/g$c;,
        Landroid/support/v4/media/g$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/media/g$d;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceProxy"    # Landroid/support/v4/media/g$d;

    .prologue
    .line 38
    new-instance v0, Landroid/support/v4/media/g$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/g$b;-><init>(Landroid/content/Context;Landroid/support/v4/media/g$d;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0
    .param p0, "serviceObj"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaSession$Token;

    .end local p1    # "token":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 54
    check-cast p0, Landroid/service/media/MediaBrowserService;

    .end local p0    # "serviceObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;)V

    .line 55
    return-void
.end method
