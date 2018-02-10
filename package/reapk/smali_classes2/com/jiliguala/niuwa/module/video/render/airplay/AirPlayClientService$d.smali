.class Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

.field private b:Ljava/io/File;

.field private c:Ljavax/jmdns/ServiceInfo;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;Ljava/io/File;Ljavax/jmdns/ServiceInfo;Ljava/lang/String;)V
    .locals 0
    .param p2, "file"    # Ljava/io/File;
    .param p3, "serviceInfo"    # Ljavax/jmdns/ServiceInfo;
    .param p4, "transition"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    .line 124
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->c:Ljavax/jmdns/ServiceInfo;

    .line 125
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->d:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 131
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->c:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v9}, Ljavax/jmdns/ServiceInfo;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/photo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 133
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 134
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    const/16 v8, 0x3a98

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    const/16 v8, 0x3a98

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 137
    const-string v8, "PUT"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    const-string v8, "Content-Length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v8, "X-Apple-AssetKey"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v8, "X-Apple-Session-ID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v8, "X-Apple-Transition"

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v8, "User-Agent"

    const-string v9, "MediaControl/1.0"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .local v5, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v4, "in":Ljava/io/BufferedInputStream;
    const v8, 0x8000

    new-array v0, v8, [B

    .line 147
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, "i":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    .line 148
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPutImageError(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 150
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "i":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 151
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 153
    .local v6, "status":I
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_1

    .line 154
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    invoke-interface {v8, v9}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPutImageSuccess(Ljava/io/File;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->a:Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;->access$000(Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService;)Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientService$d;->b:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AirPlay service responded HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/jiliguala/niuwa/module/video/render/airplay/AirPlayClientCallback;->onPutImageError(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
