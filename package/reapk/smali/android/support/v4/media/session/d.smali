.class Landroid/support/v4/media/session/d;
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
        Landroid/support/v4/media/session/d$b;,
        Landroid/support/v4/media/session/d$a;,
        Landroid/support/v4/media/session/d$c;,
        Landroid/support/v4/media/session/d$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionToken"    # Ljava/lang/Object;

    .prologue
    .line 43
    new-instance v0, Landroid/media/session/MediaController;

    check-cast p1, Landroid/media/session/MediaSession$Token;

    .end local p1    # "sessionToken":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/media/session/d$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/d$a;

    .prologue
    .line 47
    new-instance v0, Landroid/support/v4/media/session/d$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/d$b;-><init>(Landroid/support/v4/media/session/d$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Landroid/media/session/MediaController;

    .end local p1    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 122
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 123
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaController$Callback;

    .line 57
    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "callbackObj"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/session/MediaController$Callback;

    .end local p1    # "callbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 131
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 132
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;II)V
    .locals 0
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 126
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 127
    return-void
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v1, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/Object;)I
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/Object;)J
    .locals 2
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "controllerObj"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p0, Landroid/media/session/MediaController;

    .end local p0    # "controllerObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
