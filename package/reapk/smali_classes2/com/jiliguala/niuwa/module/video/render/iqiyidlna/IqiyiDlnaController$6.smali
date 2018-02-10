.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->performSeek(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    iput-wide p2, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 425
    :try_start_0
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;-><init>()V

    .line 426
    .local v2, "msg":Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;
    const-string v4, "seek"

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->setType(Ljava/lang/String;)V

    .line 427
    const-string v4, "reserved"

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->setVersion(Ljava/lang/String;)V

    .line 428
    const-string v4, "unknown"

    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->setControl(Ljava/lang/String;)V

    .line 429
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;-><init>()V

    .line 430
    .local v3, "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;
    iget-wide v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;->setTime_stamp(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;->setValue(Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;)V

    .line 432
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "info":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seek: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "mDlnaResultStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$802(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;Z)Z

    .line 439
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPlaySeekSucceed()V

    .line 441
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$6;->b:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$800(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onRenderPauseOrStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "mDlnaResultStr":Ljava/lang/String;
    .end local v2    # "msg":Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg;
    .end local v3    # "value":Lcom/jiliguala/niuwa/logic/network/json/IqiyiSeekMsg$ValueBean;
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v4

    goto :goto_0
.end method
