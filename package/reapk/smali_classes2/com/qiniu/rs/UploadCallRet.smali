.class public Lcom/qiniu/rs/UploadCallRet;
.super Lcom/qiniu/rs/CallRet;
.source "SourceFile"


# instance fields
.field protected hash:Ljava/lang/String;

.field protected key:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 19
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/qiniu/rs/UploadCallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reqid"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reqid"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/rs/CallRet;)V
    .locals 0
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/qiniu/rs/CallRet;-><init>(Lcom/qiniu/rs/CallRet;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qiniu/rs/UploadCallRet;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qiniu/rs/UploadCallRet;->key:Ljava/lang/String;

    return-object v0
.end method

.method protected unmarshal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/qiniu/rs/UploadCallRet;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "hash"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/rs/UploadCallRet;->hash:Ljava/lang/String;

    .line 30
    const-string v1, "key"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/rs/UploadCallRet;->key:Ljava/lang/String;

    .line 31
    return-void
.end method
