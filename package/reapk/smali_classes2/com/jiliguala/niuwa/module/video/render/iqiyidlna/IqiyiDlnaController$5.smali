.class Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->getPlayBackInfo()V
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
    .line 391
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 394
    const-string v2, "{\"type\":\"sync\",\"control\":\"phone_sync\",\"version\":\"1.0\"}"

    .line 399
    .local v2, "info":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$000(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaControlPoint;->sendMessage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    .local v3, "object":Lorg/json/JSONObject;
    const-string v7, "value"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 401
    .local v6, "value":Lorg/json/JSONObject;
    const-string v7, "play_position"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 402
    .local v5, "pos":I
    const-string v7, "play_duration"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "duration":I
    const-string v7, "play_state"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 404
    .local v4, "playState":I
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 405
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController$5;->a:Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;

    invoke-static {v7}, Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;->access$200(Lcom/jiliguala/niuwa/module/video/render/iqiyidlna/IqiyiDlnaController;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;

    invoke-interface {v7, v5, v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderPlayBackListener;->onUpdatePlayProgress(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0    # "duration":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "playState":I
    .end local v5    # "pos":I
    .end local v6    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
