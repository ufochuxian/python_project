.class public Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;
.super Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;
.source "SourceFile"


# instance fields
.field private mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/andserver/util/AssetsWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "assetsWrapper"    # Lcom/yanzhenjie/andserver/util/AssetsWrapper;
    .param p2, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;->mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    .line 54
    iput-object p2, p0, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;->mFilePath:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;->mAssetsWrapper:Lcom/yanzhenjie/andserver/util/AssetsWrapper;

    iget-object v2, p0, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yanzhenjie/andserver/util/AssetsWrapper;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/andserver/handler/AssetsRequestHandler;->requestInvalid(Lorg/apache/http/HttpResponse;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    const/16 v1, 0xc8

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 64
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method
