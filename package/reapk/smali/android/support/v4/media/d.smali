.class Landroid/support/v4/media/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/d$b;,
        Landroid/support/v4/media/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Landroid/support/v4/media/d$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/d$a;

    .prologue
    .line 31
    new-instance v0, Landroid/support/v4/media/d$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/d$b;-><init>(Landroid/support/v4/media/d$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p3    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p2    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 44
    return-void
.end method
