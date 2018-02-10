.class public Lcom/qiniu/resumableio/SliceUploadTask;
.super Lcom/qiniu/utils/UploadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;,
        Lcom/qiniu/resumableio/SliceUploadTask$Block;
    }
.end annotation


# instance fields
.field private lastUploadBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uploadLength:J


# direct methods
.method public constructor <init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V
    .locals 2
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "isa"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "ret"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/utils/UploadTask;-><init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/resumableio/SliceUploadTask;J)V
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/qiniu/resumableio/SliceUploadTask;Lorg/apache/http/client/methods/HttpPost;)Lorg/apache/http/client/methods/HttpPost;
    .locals 0
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;
    .param p1, "x1"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qiniu/resumableio/SliceUploadTask;)Lcom/qiniu/auth/Authorizer;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/qiniu/resumableio/SliceUploadTask;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/qiniu/resumableio/SliceUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private addUpLength(J)V
    .locals 5
    .param p1, "len"    # J

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method private buildMkfileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lastHost"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mkfile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/qiniu/resumableio/SliceUploadTask;->contentLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "url":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "/key/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/resumableio/SliceUploadTask;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    const-string v2, "/mimeType/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v3, v3, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    .local v1, "xvar":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "x:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    .end local v1    # "xvar":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFromLastUploadedBlocks(I)Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    .line 111
    .local v0, "block":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getIdx()I

    move-result v3

    if-ne p1, v3, :cond_1

    goto :goto_0

    .end local v0    # "block":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    :cond_2
    move-object v0, v1

    .line 115
    goto :goto_0
.end method

.method private mkCtx(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "rets":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    .line 127
    .local v0, "ret":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getCtx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 129
    .end local v0    # "ret":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;
    .locals 8
    .param p1, "ctx"    # Ljava/lang/String;
    .param p2, "lastHost"    # Ljava/lang/String;
    .param p3, "time"    # I

    .prologue
    .line 134
    :try_start_0
    invoke-direct {p0, p2}, Lcom/qiniu/resumableio/SliceUploadTask;->buildMkfileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/qiniu/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 136
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpToken "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qiniu/resumableio/SliceUploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    invoke-virtual {v7}, Lcom/qiniu/auth/Authorizer;->getUploadToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 138
    invoke-virtual {p0}, Lcom/qiniu/resumableio/SliceUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 139
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v2}, Lcom/qiniu/utils/Util;->handleResult(Lorg/apache/http/HttpResponse;)Lcom/qiniu/rs/CallRet;

    move-result-object v3

    .line 141
    .local v3, "ret":Lcom/qiniu/rs/CallRet;
    invoke-virtual {v3}, Lcom/qiniu/rs/CallRet;->getStatusCode()I

    move-result v5

    const/16 v6, 0x243

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/qiniu/rs/CallRet;->getStatusCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    if-lez p3, :cond_0

    .line 142
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 147
    .end local v1    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "ret":Lcom/qiniu/rs/CallRet;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    if-lez p3, :cond_1

    .line 147
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private mkfile(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Lcom/qiniu/rs/CallRet;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "rets":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    invoke-direct {p0, p1}, Lcom/qiniu/resumableio/SliceUploadTask;->mkCtx(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "ctx":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    invoke-virtual {v2}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "lastHost":Ljava/lang/String;
    sget v2, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;

    move-result-object v2

    return-object v2
.end method

.method private upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Lcom/qiniu/utils/InputStreamAt$Input;
    .param p3, "time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;

    invoke-direct {v0, p0, p1, p2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;-><init>(Lcom/qiniu/resumableio/SliceUploadTask;ILcom/qiniu/utils/InputStreamAt$Input;)V

    .line 89
    .local v0, "blkUp":Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->exec()Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v1

    .line 90
    .local v1, "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    invoke-virtual {v1}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->getUpTotal()I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    .line 92
    invoke-virtual {v1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getStatusCode()I

    move-result v2

    const/16 v3, 0x2bd

    if-ne v2, v3, :cond_0

    if-lez p3, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    add-int/lit8 v2, p3, -0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private uploadBlocks(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Lcom/qiniu/rs/CallRet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/resumableio/SliceUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v5}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v14

    .line 60
    .local v14, "len":J
    const-wide/32 v6, 0x400000

    add-long/2addr v6, v14

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    const-wide/32 v16, 0x400000

    div-long v6, v6, v16

    long-to-int v9, v6

    .line 62
    .local v9, "blkCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_2

    .line 63
    const-wide/32 v6, 0x400000

    const/high16 v5, 0x400000

    mul-int/2addr v5, v4

    int-to-long v0, v5

    move-wide/from16 v16, v0

    sub-long v16, v14, v16

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v12, v6

    .line 64
    .local v12, "l":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/qiniu/resumableio/SliceUploadTask;->getFromLastUploadedBlocks(I)Lcom/qiniu/resumableio/SliceUploadTask$Block;

    move-result-object v2

    .line 65
    .local v2, "blk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/resumableio/SliceUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v5, v12}, Lcom/qiniu/utils/InputStreamAt;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v11

    .line 66
    .local v11, "data":Lcom/qiniu/utils/InputStreamAt$Input;
    if-eqz v2, :cond_0

    .line 67
    const/4 v11, 0x0

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    int-to-long v6, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    .line 62
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_0
    sget v5, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v10

    .line 72
    .local v10, "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    const/4 v11, 0x0

    .line 73
    invoke-virtual {v10}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    .end local v2    # "blk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .end local v10    # "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    .end local v11    # "data":Lcom/qiniu/utils/InputStreamAt$Input;
    .end local v12    # "l":I
    :goto_2
    return-object v10

    .line 76
    .restart local v2    # "blk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .restart local v10    # "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    .restart local v11    # "data":Lcom/qiniu/utils/InputStreamAt$Input;
    .restart local v12    # "l":I
    :cond_1
    new-instance v3, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    invoke-virtual {v10}, Lcom/qiniu/rs/ChunkUploadCallRet;->getCtx()Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v12

    invoke-virtual {v10}, Lcom/qiniu/rs/ChunkUploadCallRet;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/resumableio/SliceUploadTask$Block;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 77
    .local v3, "nblk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    .end local v2    # "blk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .end local v3    # "nblk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .end local v10    # "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    .end local v11    # "data":Lcom/qiniu/utils/InputStreamAt$Input;
    .end local v12    # "l":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected clean()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/qiniu/utils/UploadTask;->clean()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    .line 56
    return-void
.end method

.method protected varargs execDoInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    invoke-direct {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->uploadBlocks(Ljava/util/List;)Lcom/qiniu/rs/CallRet;

    move-result-object v2

    .line 44
    .local v2, "ret":Lcom/qiniu/rs/CallRet;
    if-nez v2, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .end local v0    # "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    .end local v2    # "ret":Lcom/qiniu/rs/CallRet;
    :cond_0
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qiniu/rs/CallRet;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLastUploadBlocks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    iput-object p1, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    .line 37
    return-void
.end method
