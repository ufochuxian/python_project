.class public Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;
.super Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;
.source "SourceFile"


# instance fields
.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yanzhenjie/andserver/handler/BasicRequestHandler;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;->mFilePath:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
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
    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/andserver/handler/StorageRequestHandler;->requestInvalid(Lorg/apache/http/HttpResponse;)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xc8

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 57
    new-instance v1, Lorg/apache/http/entity/FileEntity;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method
