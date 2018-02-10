.class public Lorg/cybergarage/upnp/control/RenewSubscriber;
.super Lorg/cybergarage/util/ThreadCore;
.source "SourceFile"


# static fields
.field public static final INTERVAL:J = 0x1eL


# instance fields
.field private ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;

.field private timeout:J


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 2
    .param p1, "ctrlp"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/cybergarage/upnp/control/RenewSubscriber;->timeout:J

    .line 32
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/control/RenewSubscriber;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/cybergarage/upnp/control/RenewSubscriber;->ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 64
    .local v0, "ctrlp":Lorg/cybergarage/upnp/ControlPoint;
    const-wide/16 v2, 0x7530

    .line 65
    .local v2, "renewInterval":J
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;->isRunnable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :cond_0
    :goto_1
    const-string v4, "RenewSubscriber thread has exited"

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 83
    return-void

    .line 69
    :cond_1
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;->isRunnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    iget-wide v4, p0, Lorg/cybergarage/upnp/control/RenewSubscriber;->timeout:J

    invoke-virtual {v0, v4, v5}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(J)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .param p1, "ctrlp"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/cybergarage/upnp/control/RenewSubscriber;->ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 45
    return-void
.end method

.method public setSubscriberTimeout(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lorg/cybergarage/upnp/control/RenewSubscriber;->timeout:J

    .line 55
    return-void
.end method
