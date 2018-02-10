.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->pauseOrStart()V
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
    .line 484
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(B)Z

    move-result v0

    .line 489
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 490
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$800(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$802(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Z)Z

    .line 491
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$8;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$800(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPauseOrStart(Z)V

    .line 495
    :cond_0
    return-void

    .line 490
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
