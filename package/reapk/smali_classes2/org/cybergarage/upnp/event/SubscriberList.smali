.class public Lorg/cybergarage/upnp/event/SubscriberList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/event/Subscriber;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/event/Subscriber;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method
