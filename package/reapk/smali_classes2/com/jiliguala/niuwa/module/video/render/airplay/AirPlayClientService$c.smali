.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private b:Ljava/net/URL;

.field private c:Ljavax/jmdns/ServiceInfo;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljava/net/URL;Ljavax/jmdns/ServiceInfo;)V
    .locals 0
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->b:Ljava/net/URL;

    .line 173
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->c:Ljavax/jmdns/ServiceInfo;

    .line 174
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v1, "content":Ljava/lang/StringBuilder;
    const-string v6, "Content-Location: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->b:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v6, "Start-Position: 0\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->c:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/play"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 186
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 187
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 188
    const/16 v6, 0x3a98

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    const/16 v6, 0x3a98

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    const-string v6, "Content-Length"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v6, "Content-Type"

    const-string v7, "text/parameters"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v6, "X-Apple-AssetKey"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v6, "X-Apple-Session-ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v6, "User-Agent"

    const-string v7, "MediaControl/1.0"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    .local v3, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 198
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 199
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 200
    .local v4, "status":I
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->b:Ljava/net/URL;

    invoke-interface {v6, v7}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPlayVideoSuccess(Ljava/net/URL;)V

    .line 208
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "status":I
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 203
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "content":Ljava/lang/StringBuilder;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "status":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->b:Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AirPlay service responded HTTP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPlayVideoError(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "status":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$c;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPlayVideoError(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method
