.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private b:Ljavax/jmdns/ServiceInfo;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljavax/jmdns/ServiceInfo;)V
    .locals 0
    .param p2, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->b:Ljavax/jmdns/ServiceInfo;

    .line 218
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 223
    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->b:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v5}, Ljavax/jmdns/ServiceInfo;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 224
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 225
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 226
    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 227
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 228
    const-string v4, "Content-Length"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v4, "User-Agent"

    const-string v5, "MediaControl/1.0"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 231
    .local v2, "status":I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 232
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onStopVideoSuccess()V

    .line 239
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "status":I
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 234
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "status":I
    .restart local v3    # "url":Ljava/net/URL;
    :cond_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AirPlay service responded HTTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onStopVideoError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "status":I
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$e;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onStopVideoError(Ljava/lang/String;)V

    goto :goto_0
.end method
