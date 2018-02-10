.class public Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/i;


# instance fields
.field private final mClient:Lcom/squareup/okhttp/t;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/t;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->mClient:Lcom/squareup/okhttp/t;

    .line 64
    return-void
.end method

.method private static createRequestBody(Lcom/android/volley/Request;)Lcom/squareup/okhttp/w;
    .locals 2
    .param p0, "r"    # Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .line 137
    .local v0, "body":[B
    if-nez v0, :cond_0

    .line 138
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/w;

    move-result-object v1

    goto :goto_0
.end method

.method private static entityFromOkHttpResponse(Lcom/squareup/okhttp/x;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p0, "r"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 68
    .local v1, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v0

    .line 70
    .local v0, "body":Lcom/squareup/okhttp/y;
    invoke-virtual {v0}, Lcom/squareup/okhttp/y;->d()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 71
    invoke-virtual {v0}, Lcom/squareup/okhttp/y;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 72
    const-string v2, "Content-Encoding"

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/squareup/okhttp/y;->a()Lcom/squareup/okhttp/r;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/squareup/okhttp/y;->a()Lcom/squareup/okhttp/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-object v1
.end method

.method private static parseProtocol(Lcom/squareup/okhttp/Protocol;)Lorg/apache/http/ProtocolVersion;
    .locals 5
    .param p0, "p"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 121
    sget-object v0, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack$1;->a:[I

    invoke-virtual {p0}, Lcom/squareup/okhttp/Protocol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Unknown protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_0
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 129
    :goto_0
    return-object v0

    .line 125
    :pswitch_1
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 127
    :pswitch_2
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "SPDY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 129
    :pswitch_3
    new-instance v0, Lorg/apache/http/ProtocolVersion;

    const-string v1, "HTTP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static setConnectionParametersForRequest(Lcom/squareup/okhttp/v$a;Lcom/android/volley/Request;)V
    .locals 3
    .param p0, "builder"    # Lcom/squareup/okhttp/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/v$a;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/android/volley/Request;->getMethod()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown method type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v0

    .line 87
    .local v0, "postBody":[B
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;[B)Lcom/squareup/okhttp/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v$a;->a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    .line 118
    .end local v0    # "postBody":[B
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/v$a;->a()Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/v$a;->c()Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 98
    :pswitch_3
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->createRequestBody(Lcom/android/volley/Request;)Lcom/squareup/okhttp/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v$a;->a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 101
    :pswitch_4
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->createRequestBody(Lcom/android/volley/Request;)Lcom/squareup/okhttp/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v$a;->c(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 104
    :pswitch_5
    invoke-virtual {p0}, Lcom/squareup/okhttp/v$a;->b()Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 107
    :pswitch_6
    const-string v1, "OPTIONS"

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 110
    :pswitch_7
    const-string v1, "TRACE"

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 113
    :pswitch_8
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->createRequestBody(Lcom/android/volley/Request;)Lcom/squareup/okhttp/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/v$a;->d(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 83
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


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 21
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
    .line 147
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->mClient:Lcom/squareup/okhttp/t;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/squareup/okhttp/t;->y()Lcom/squareup/okhttp/t;

    move-result-object v4

    .line 148
    .local v4, "client":Lcom/squareup/okhttp/t;
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v16

    .line 149
    .local v16, "timeoutMs":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/squareup/okhttp/t;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 150
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/squareup/okhttp/t;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 151
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lcom/squareup/okhttp/t;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 153
    new-instance v11, Lcom/squareup/okhttp/v$a;

    invoke-direct {v11}, Lcom/squareup/okhttp/v$a;-><init>()V

    .line 154
    .local v11, "okHttpRequestBuilder":Lcom/squareup/okhttp/v$a;
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 157
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 158
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_0

    .line 160
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 161
    .restart local v8    # "name":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v11, v8, v0}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    goto :goto_1

    .line 164
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->setConnectionParametersForRequest(Lcom/squareup/okhttp/v$a;Lcom/android/volley/Request;)V

    .line 166
    invoke-virtual {v11}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v10

    .line 167
    .local v10, "okHttpRequest":Lcom/squareup/okhttp/v;
    invoke-virtual {v4, v10}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/e;

    move-result-object v9

    .line 168
    .local v9, "okHttpCall":Lcom/squareup/okhttp/e;
    invoke-virtual {v9}, Lcom/squareup/okhttp/e;->a()Lcom/squareup/okhttp/x;

    move-result-object v12

    .line 170
    .local v12, "okHttpResponse":Lcom/squareup/okhttp/x;
    new-instance v15, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v12}, Lcom/squareup/okhttp/x;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->parseProtocol(Lcom/squareup/okhttp/Protocol;)Lorg/apache/http/ProtocolVersion;

    move-result-object v18

    invoke-virtual {v12}, Lcom/squareup/okhttp/x;->c()I

    move-result v19

    .line 171
    invoke-virtual {v12}, Lcom/squareup/okhttp/x;->e()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v15, v0, v1, v2}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 172
    .local v15, "responseStatus":Lorg/apache/http/StatusLine;
    new-instance v13, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v13, v15}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    .line 173
    .local v13, "response":Lorg/apache/http/message/BasicHttpResponse;
    invoke-static {v12}, Lcom/jiliguala/niuwa/module/story/helpers/OkHttpStack;->entityFromOkHttpResponse(Lcom/squareup/okhttp/x;)Lorg/apache/http/HttpEntity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 175
    invoke-virtual {v12}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v14

    .line 176
    .local v14, "responseHeaders":Lcom/squareup/okhttp/p;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v14}, Lcom/squareup/okhttp/p;->a()I

    move-result v7

    .local v7, "len":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 177
    invoke-virtual {v14, v6}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "name":Ljava/lang/String;
    invoke-virtual {v14, v6}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, "value":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 179
    new-instance v18, Lorg/apache/http/message/BasicHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 176
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 183
    .end local v8    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_3
    return-object v13
.end method
