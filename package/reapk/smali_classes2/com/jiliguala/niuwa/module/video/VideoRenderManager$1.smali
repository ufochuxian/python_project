.class Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayControllerImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$002(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$100(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->initModule()V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    new-instance v1, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;-><init>()V

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$202(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$100(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$1;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->initModule()V

    .line 159
    return-void
.end method
