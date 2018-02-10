.class public Lcom/qiniu/rs/ChunkUploadCallRet;
.super Lcom/qiniu/rs/CallRet;
.source "SourceFile"


# instance fields
.field protected checksum:Ljava/lang/String;

.field protected crc32:J

.field protected ctx:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field protected offset:I


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 23
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reqid"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reqid"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/rs/CallRet;)V
    .locals 0
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/qiniu/rs/CallRet;-><init>(Lcom/qiniu/rs/CallRet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc32()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->crc32:J

    return-wide v0
.end method

.method public getCtx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->ctx:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->offset:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected unmarshal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/qiniu/rs/ChunkUploadCallRet;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "ctx"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->ctx:Ljava/lang/String;

    .line 34
    const-string v1, "checksum"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->checksum:Ljava/lang/String;

    .line 35
    const-string v1, "offset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->offset:I

    .line 36
    const-string v1, "host"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->host:Ljava/lang/String;

    .line 37
    const-string v1, "crc32"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/rs/ChunkUploadCallRet;->crc32:J

    .line 38
    return-void
.end method
