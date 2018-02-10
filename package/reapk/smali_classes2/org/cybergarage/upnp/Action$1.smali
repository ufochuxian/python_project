.class Lorg/cybergarage/upnp/Action$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cybergarage/upnp/Action;->resetTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/cybergarage/upnp/Action;


# direct methods
.method constructor <init>(Lorg/cybergarage/upnp/Action;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cybergarage/upnp/Action$1;->a:Lorg/cybergarage/upnp/Action;

    .line 705
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    const/4 v8, 0x1

    const-wide/16 v6, 0xfa0

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/cybergarage/upnp/Action$1;->a:Lorg/cybergarage/upnp/Action;

    invoke-static {v4}, Lorg/cybergarage/upnp/Action;->access$0(Lorg/cybergarage/upnp/Action;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 712
    .local v0, "elapsedTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    cmp-long v2, v0, v10

    if-ltz v2, :cond_2

    .line 716
    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    .line 718
    iget-object v2, p0, Lorg/cybergarage/upnp/Action$1;->a:Lorg/cybergarage/upnp/Action;

    invoke-static {v2}, Lorg/cybergarage/upnp/Action;->access$1(Lorg/cybergarage/upnp/Action;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 720
    invoke-static {}, Lorg/cybergarage/upnp/NetworkMonitor;->getInstance()Lorg/cybergarage/upnp/NetworkMonitor;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyResponseTime(J)V

    .line 721
    iget-object v2, p0, Lorg/cybergarage/upnp/Action$1;->a:Lorg/cybergarage/upnp/Action;

    invoke-static {v2, v8}, Lorg/cybergarage/upnp/Action;->access$2(Lorg/cybergarage/upnp/Action;Z)V

    goto :goto_0

    .line 723
    :cond_2
    rem-long v2, v0, v6

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 724
    rem-long v2, v0, v6

    const-wide/16 v4, 0xf6e

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 726
    :cond_3
    invoke-static {}, Lorg/cybergarage/upnp/NetworkMonitor;->getInstance()Lorg/cybergarage/upnp/NetworkMonitor;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lorg/cybergarage/upnp/NetworkMonitor;->notifyResponseTime(J)V

    .line 727
    iget-object v2, p0, Lorg/cybergarage/upnp/Action$1;->a:Lorg/cybergarage/upnp/Action;

    invoke-static {v2, v8}, Lorg/cybergarage/upnp/Action;->access$2(Lorg/cybergarage/upnp/Action;Z)V

    goto :goto_0
.end method
