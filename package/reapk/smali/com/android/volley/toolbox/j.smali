.class public Lcom/android/volley/toolbox/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final b:Lcom/android/volley/toolbox/j$a;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/j;-><init>(Lcom/android/volley/toolbox/j$a;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/j$a;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/android/volley/toolbox/j$a;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/j;-><init>(Lcom/android/volley/toolbox/j$a;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/j$a;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "urlRewriter"    # Lcom/android/volley/toolbox/j$a;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    .line 73
    iput-object p2, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    return-void
.end method

.method private a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/j;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 235
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 236
    .local v1, "timeoutMs":I
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 237
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 242
    const-string v2, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 243
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/android/volley/toolbox/j;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 246
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 95
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 98
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 103
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 104
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 106
    return-object v0

    .line 99
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 160
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown method type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v1

    .line 118
    .local v1, "postBody":[B
    if-eqz v1, :cond_0

    .line 122
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 124
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 126
    .local v0, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 127
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 162
    .end local v0    # "out":Ljava/io/DataOutputStream;
    .end local v1    # "postBody":[B
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_1
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_2
    const-string v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_3
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 143
    :pswitch_4
    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 144
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 147
    :pswitch_5
    const-string v2, "HEAD"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_6
    const-string v2, "OPTIONS"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_7
    const-string v2, "TRACE"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_8
    const-string v2, "PATCH"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 157
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/j;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(II)Z
    .locals 1
    .param p0, "requestMethod"    # I
    .param p1, "responseCode"    # I

    .prologue
    .line 85
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-gt v0, p1, :cond_0

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .line 167
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 168
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 169
    const-string v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 172
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 174
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, "url":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 182
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    if-eqz v14, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/volley/toolbox/j;->b:Lcom/android/volley/toolbox/j$a;

    invoke-interface {v14, v13}, Lcom/android/volley/toolbox/j$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "rewritten":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 186
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "URL blocked by rewriter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 188
    :cond_0
    move-object v13, v12

    .line 190
    .end local v12    # "rewritten":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    .local v7, "parsedUrl":Ljava/net/URL;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/android/volley/toolbox/j;->a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 192
    .local v2, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 193
    .local v5, "headerName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v5, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v5    # "headerName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 197
    new-instance v8, Lorg/apache/http/ProtocolVersion;

    const-string v14, "HTTP"

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v14, v15, v0}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 198
    .local v8, "protocolVersion":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 199
    .local v10, "responseCode":I
    const/4 v14, -0x1

    if-ne v10, v14, :cond_3

    .line 202
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 204
    :cond_3
    new-instance v11, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v8, v14, v15}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 205
    .local v11, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v9, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v9, v11}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 206
    .local v9, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v14

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/volley/toolbox/j;->a(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 207
    invoke-static {v2}, Lcom/android/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-virtual {v9, v14}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 209
    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 210
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 211
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v3, v14, v15}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v3, "h":Lorg/apache/http/Header;
    invoke-virtual {v9, v3}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1

    .line 215
    .end local v3    # "h":Lorg/apache/http/Header;
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_6
    return-object v9
.end method
