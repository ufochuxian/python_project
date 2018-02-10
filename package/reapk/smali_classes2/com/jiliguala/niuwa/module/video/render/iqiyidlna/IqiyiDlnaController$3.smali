.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->updateDeviceList(Lorg/cybergarage/upnp/Device;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdateMirrorIcon()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$3;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$300(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method
