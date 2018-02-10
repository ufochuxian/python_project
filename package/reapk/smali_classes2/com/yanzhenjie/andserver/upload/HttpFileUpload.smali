.class public Lcom/yanzhenjie/andserver/upload/HttpFileUpload;
.super Lorg/apache/commons/fileupload/FileUpload;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUpload;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/fileupload/FileItemFactory;)V
    .locals 0
    .param p1, "fileItemFactory"    # Lorg/apache/commons/fileupload/FileItemFactory;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUpload;-><init>(Lorg/apache/commons/fileupload/FileItemFactory;)V

    .line 53
    return-void
.end method

.method public static final isMultipartContent(Lorg/apache/http/HttpRequest;)Z
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 44
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p0}, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 45
    invoke-static {v0}, Lorg/apache/commons/fileupload/FileUploadBase;->isMultipartContent(Lorg/apache/commons/fileupload/RequestContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isMultipartContentWithPost(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 37
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "method":Ljava/lang/String;
    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v1, p0}, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 40
    invoke-static {v1}, Lorg/apache/commons/fileupload/FileUploadBase;->isMultipartContent(Lorg/apache/commons/fileupload/RequestContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    .line 40
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItemIterator(Lorg/apache/http/HttpRequest;)Lorg/apache/commons/fileupload/FileItemIterator;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/andserver/upload/HttpFileUpload;->getItemIterator(Lorg/apache/commons/fileupload/RequestContext;)Lorg/apache/commons/fileupload/FileItemIterator;

    move-result-object v0

    return-object v0
.end method

.method public parseParameterMap(Lorg/apache/http/HttpRequest;)Ljava/util/Map;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/fileupload/FileItem;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/andserver/upload/HttpFileUpload;->parseParameterMap(Lorg/apache/commons/fileupload/RequestContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseRequest(Lorg/apache/http/HttpRequest;)Ljava/util/List;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/fileupload/FileItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;

    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    invoke-direct {v0, p1}, Lcom/yanzhenjie/andserver/upload/HttpUploadContext;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/andserver/upload/HttpFileUpload;->parseRequest(Lorg/apache/commons/fileupload/RequestContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
