.class Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->performExit()V
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
    .line 257
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->performExit()V

    .line 262
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V

    .line 263
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$000(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;->setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 264
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$002(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayController;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->performExit()V

    .line 275
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->setIGetRenderListener(Lcom/jiliguala/niuwa/module/video/render/listener/IGetRenderListener;)V

    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$200(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->setRenderPlayBackListener(Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;)V

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/video/VideoRenderManager$2;->a:Lcom/jiliguala/niuwa/module/video/VideoRenderManager;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/video/VideoRenderManager;->access$202(Lcom/jiliguala/niuwa/module/video/VideoRenderManager;Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .line 279
    :cond_1
    return-void
.end method
