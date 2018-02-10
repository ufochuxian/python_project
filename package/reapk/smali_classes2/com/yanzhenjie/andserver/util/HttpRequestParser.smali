.class public Lcom/yanzhenjie/andserver/util/HttpRequestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->isGetMethod(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->getContentForGet(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->isPosterMethod(Lorg/apache/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->getContentForPost(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getContentForGet(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 4
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 120
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "uri":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 122
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const-string v2, ""

    :goto_0
    return-object v2

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getContentForPost(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 110
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v1, "application/octet-stream"

    .line 155
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static isGetMethod(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 132
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "method":Ljava/lang/String;
    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isPosterMethod(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 143
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "method":Ljava/lang/String;
    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static parse(Lorg/apache/http/HttpRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->parse(Lorg/apache/http/HttpRequest;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/apache/http/HttpRequest;Z)Ljava/util/Map;
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "lowerCaseNames"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->getContent(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/yanzhenjie/andserver/util/HttpRequestParser;->splitHttpParams(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static splitHttpParams(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "lowerCaseNames"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "&"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "keyValue":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 76
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "key":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 78
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v0    # "index":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyValue":Ljava/lang/String;
    :cond_2
    return-object v3
.end method
