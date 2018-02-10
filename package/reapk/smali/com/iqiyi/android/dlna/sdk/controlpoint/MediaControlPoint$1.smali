.class Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/cybergarage/upnp/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "varName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eventNotifyReceived: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    iget-object v2, v2, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    if-nez v2, :cond_1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentControlDevice is null! Reject eventNotify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "currentSubUUID":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    iget-object v2, v2, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->currentControlDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getPrivateServer()Lorg/cybergarage/upnp/Service;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eventNotifyReceived: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rejected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current sub SID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eventNotifyReceived EXCEPTION: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "A_ARG_TYPE_NOTIFYMSG"

    invoke-virtual {p4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current sub SID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receive dmr message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-static {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->access$0(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint$1;->a:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    invoke-static {v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->access$0(Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;)Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;

    move-result-object v2

    invoke-interface {v2, p5}, Lcom/iqiyi/android/dlna/sdk/controlpoint/NotifyMessageListener;->onReceiveMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
