.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->startRender(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

.field final synthetic c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->b:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 298
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 307
    .local v1, "deviceList":Lorg/cybergarage/upnp/DeviceList;
    if-eqz v1, :cond_0

    .line 312
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->b:Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$400(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;)I

    move-result v2

    .line 313
    .local v2, "devicePosition":I
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 314
    .local v0, "device":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 319
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;Z)V

    .line 321
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$502(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Lorg/cybergarage/upnp/Device;)Lorg/cybergarage/upnp/Device;

    .line 323
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$602(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Z)Z

    .line 325
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayConnected()V

    .line 327
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlayStart()V

    .line 330
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->c:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$4;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$700(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Ljava/lang/String;)V

    goto :goto_0
.end method
