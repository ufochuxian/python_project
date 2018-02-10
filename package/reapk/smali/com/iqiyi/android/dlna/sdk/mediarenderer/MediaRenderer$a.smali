.class final Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$LastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastChange() service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-static {v3, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->access$0(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getAVTransport()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;

    move-result-object v2

    .line 329
    .local v2, "transportService":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
    invoke-virtual {v2, p2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v3, p3, v5}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    .line 341
    .end local v2    # "transportService":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/AVTransport;
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-static {v3, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->access$1(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getConnectionManager()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;

    move-result-object v0

    .line 334
    .local v0, "conneManager":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;
    invoke-virtual {v0, p2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v3, p3, v5}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 336
    .end local v0    # "conneManager":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/ConnectionManager;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-static {v3, p1}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->access$2(Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer$a;->a:Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/MediaRenderer;->getRenderingControl()Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;

    move-result-object v1

    .line 339
    .local v1, "renderControl":Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;
    invoke-virtual {v1, p2}, Lcom/iqiyi/android/dlna/sdk/mediarenderer/service/RenderingControl;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {v3, p3, v5}, Lorg/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method
