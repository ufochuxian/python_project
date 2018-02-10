.class public final Lcom/squareup/okhttp/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/j;

.field private final b:Lcom/squareup/okhttp/z;

.field private c:Ljava/net/Socket;

.field private d:Z

.field private e:Lcom/squareup/okhttp/internal/a/e;

.field private f:Lcom/squareup/okhttp/internal/spdy/m;

.field private g:Lcom/squareup/okhttp/Protocol;

.field private h:J

.field private i:Lcom/squareup/okhttp/o;

.field private j:I

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/z;)V
    .locals 1
    .param p1, "pool"    # Lcom/squareup/okhttp/j;
    .param p2, "route"    # Lcom/squareup/okhttp/z;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/i;->d:Z

    .line 78
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    .line 92
    iput-object p2, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    .line 93
    return-void
.end method

.method private a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/v;
    .locals 10
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v6, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    invoke-virtual {v6}, Lcom/squareup/okhttp/z;->f()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 216
    :goto_0
    return-object v6

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v2

    .line 198
    .local v2, "port":I
    const-string v6, "https"

    invoke-static {v6}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_3

    move-object v0, v1

    .line 199
    .local v0, "authority":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/squareup/okhttp/v$a;

    invoke-direct {v6}, Lcom/squareup/okhttp/v$a;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string v8, "https"

    const-string v9, "/"

    invoke-direct {v7, v8, v1, v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/v$a;->a(Ljava/net/URL;)Lcom/squareup/okhttp/v$a;

    move-result-object v6

    const-string v7, "Host"

    .line 201
    invoke-virtual {v6, v7, v0}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v6

    const-string v7, "Proxy-Connection"

    const-string v8, "Keep-Alive"

    .line 202
    invoke-virtual {v6, v7, v8}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v4

    .line 205
    .local v4, "result":Lcom/squareup/okhttp/v$a;
    const-string v6, "User-Agent"

    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "userAgent":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 207
    const-string v6, "User-Agent"

    invoke-virtual {v4, v6, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 211
    :cond_1
    const-string v6, "Proxy-Authorization"

    invoke-virtual {p1, v6}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "proxyAuthorization":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 213
    const-string v6, "Proxy-Authorization"

    invoke-virtual {v4, v6, v3}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 216
    :cond_2
    invoke-virtual {v4}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v6

    goto :goto_0

    .line 198
    .end local v0    # "authority":Ljava/lang/String;
    .end local v3    # "proxyAuthorization":Ljava/lang/String;
    .end local v4    # "result":Lcom/squareup/okhttp/v$a;
    .end local v5    # "userAgent":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lcom/squareup/okhttp/v;II)V
    .locals 10
    .param p1, "tunnelRequest"    # Lcom/squareup/okhttp/v;
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 225
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v2

    .line 228
    .local v2, "platform":Lcom/squareup/okhttp/internal/h;
    if-eqz p1, :cond_0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/i;->b(Lcom/squareup/okhttp/v;II)V

    .line 233
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v4, v4, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v4, v4, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    iget-object v6, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v6, v6, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v6, v6, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v7, v7, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget v7, v7, Lcom/squareup/okhttp/a;->c:I

    .line 234
    invoke-virtual {v4, v5, v6, v7, v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    .line 235
    iget-object v3, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 238
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v4, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v4, v4, Lcom/squareup/okhttp/z;->d:Lcom/squareup/okhttp/k;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    invoke-virtual {v4, v3, v5}, Lcom/squareup/okhttp/k;->a(Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/z;)V

    .line 242
    :try_start_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 245
    iget-object v4, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v4, v4, Lcom/squareup/okhttp/z;->d:Lcom/squareup/okhttp/k;

    invoke-virtual {v4}, Lcom/squareup/okhttp/k;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/h;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    .local v1, "maybeProtocol":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 247
    invoke-static {v1}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v1    # "maybeProtocol":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/h;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 253
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/o;->a(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/o;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/i;->i:Lcom/squareup/okhttp/o;

    .line 256
    iget-object v4, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v4, v4, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v4, v4, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v5, v5, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v5, v5, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 257
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    aget-object v0, v4, v8

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 258
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hostname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v6, v6, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v6, v6, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not verified:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n    certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    invoke-static {v0}, Lcom/squareup/okhttp/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n    DN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n    subjectAltNames: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 261
    invoke-static {v0}, Lcom/squareup/okhttp/internal/d/b;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception v4

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/h;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v4

    .line 265
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v4, v4, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v4, v4, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v5, v5, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v5, v5, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/squareup/okhttp/i;->i:Lcom/squareup/okhttp/o;

    invoke-virtual {v6}, Lcom/squareup/okhttp/o;->b()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/squareup/okhttp/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 267
    iget-object v4, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v5, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v5, :cond_4

    .line 268
    :cond_3
    invoke-virtual {v3, v8}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 269
    new-instance v4, Lcom/squareup/okhttp/internal/spdy/m$a;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v5, v5, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v5}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-direct {v4, v5, v9, v6}, Lcom/squareup/okhttp/internal/spdy/m$a;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object v5, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    .line 270
    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/spdy/m$a;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/m$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/m$a;->a()Lcom/squareup/okhttp/internal/spdy/m;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    .line 271
    iget-object v4, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/m;->g()V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_4
    new-instance v4, Lcom/squareup/okhttp/internal/a/e;

    iget-object v5, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    iget-object v6, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-direct {v4, v5, p0, v6}, Lcom/squareup/okhttp/internal/a/e;-><init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;Ljava/net/Socket;)V

    iput-object v4, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    goto :goto_0
.end method

.method private b(Lcom/squareup/okhttp/v;II)V
    .locals 12
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v5, Lcom/squareup/okhttp/internal/a/e;

    iget-object v7, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    iget-object v8, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-direct {v5, v7, p0, v8}, Lcom/squareup/okhttp/internal/a/e;-><init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;Ljava/net/Socket;)V

    .line 394
    .local v5, "tunnelConnection":Lcom/squareup/okhttp/internal/a/e;
    invoke-virtual {v5, p2, p3}, Lcom/squareup/okhttp/internal/a/e;->a(II)V

    .line 395
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v6

    .line 396
    .local v6, "url":Ljava/net/URL;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/squareup/okhttp/internal/a/e;->a(Lcom/squareup/okhttp/p;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/e;->d()V

    .line 400
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/e;->g()Lcom/squareup/okhttp/x$a;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v4

    .line 403
    .local v4, "response":Lcom/squareup/okhttp/x;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/x;)J

    move-result-wide v2

    .line 404
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 405
    const-wide/16 v2, 0x0

    .line 407
    :cond_1
    invoke-virtual {v5, v2, v3}, Lcom/squareup/okhttp/internal/a/e;->b(J)Lokio/x;

    move-result-object v0

    .line 408
    .local v0, "body":Lokio/x;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8}, Lcom/squareup/okhttp/internal/j;->b(Lokio/x;ILjava/util/concurrent/TimeUnit;)Z

    .line 409
    invoke-interface {v0}, Lokio/x;->close()V

    .line 411
    invoke-virtual {v4}, Lcom/squareup/okhttp/x;->c()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 429
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected response code for CONNECT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 430
    invoke-virtual {v4}, Lcom/squareup/okhttp/x;->c()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 417
    :sswitch_0
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/e;->e()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 418
    new-instance v7, Ljava/io/IOException;

    const-string v8, "TLS tunnel buffered too many bytes!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 423
    :sswitch_1
    iget-object v7, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v7, v7, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v7, v7, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    iget-object v8, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v8, v8, Lcom/squareup/okhttp/z;->b:Ljava/net/Proxy;

    invoke-static {v7, v4, v8}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/x;Ljava/net/Proxy;)Lcom/squareup/okhttp/v;

    move-result-object p1

    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Failed to authenticate with proxy"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 420
    :cond_2
    return-void

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method a(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;
    .locals 2
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/a/o;

    iget-object v1, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/a/o;-><init>(Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/internal/spdy/m;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    iget-object v1, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/a/i;-><init>(Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/internal/a/e;)V

    goto :goto_0
.end method

.method a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(II)V
    .locals 2
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/squareup/okhttp/i;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/a/e;->a(II)V

    .line 372
    :cond_1
    return-void
.end method

.method a(IIILcom/squareup/okhttp/v;)V
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "tunnelRequest"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/squareup/okhttp/i;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v0, v0, Lcom/squareup/okhttp/z;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v0, v0, Lcom/squareup/okhttp/z;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v0, v0, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v0, v0, Lcom/squareup/okhttp/a;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 156
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    iget-object v2, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v2, v2, Lcom/squareup/okhttp/z;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/h;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v0, v0, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v0, v0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    .line 159
    invoke-direct {p0, p4, p2, p3}, Lcom/squareup/okhttp/i;->a(Lcom/squareup/okhttp/v;II)V

    .line 163
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/i;->d:Z

    .line 164
    return-void

    .line 152
    :cond_2
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v1, v1, Lcom/squareup/okhttp/z;->b:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    goto :goto_0

    .line 161
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/a/e;

    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    iget-object v2, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/a/e;-><init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    goto :goto_1
.end method

.method a(Lcom/squareup/okhttp/Protocol;)V
    .locals 2
    .param p1, "protocol"    # Lcom/squareup/okhttp/Protocol;

    .prologue
    .line 360
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    .line 362
    return-void
.end method

.method a(Lcom/squareup/okhttp/t;Ljava/lang/Object;Lcom/squareup/okhttp/v;)V
    .locals 4
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p2}, Lcom/squareup/okhttp/i;->a(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/squareup/okhttp/i;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/i;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/v;

    move-result-object v0

    .line 175
    .local v0, "tunnelRequest":Lcom/squareup/okhttp/v;
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->b()I

    move-result v2

    .line 176
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->c()I

    move-result v3

    .line 175
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/squareup/okhttp/i;->a(IIILcom/squareup/okhttp/v;)V

    .line 177
    invoke-virtual {p0}, Lcom/squareup/okhttp/i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->n()Lcom/squareup/okhttp/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/j;->b(Lcom/squareup/okhttp/i;)V

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->r()Lcom/squareup/okhttp/internal/i;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/i;->d()Lcom/squareup/okhttp/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/i;->b(Lcom/squareup/okhttp/z;)V

    .line 183
    .end local v0    # "tunnelRequest":Lcom/squareup/okhttp/v;
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/t;->c()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/okhttp/i;->a(II)V

    .line 184
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/squareup/okhttp/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/squareup/okhttp/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 135
    monitor-exit v1

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/squareup/okhttp/i;->a:Lcom/squareup/okhttp/j;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    monitor-exit v1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/i;->k:Ljava/lang/Object;

    .line 123
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/squareup/okhttp/i;->d:Z

    return v0
.end method

.method public d()Lcom/squareup/okhttp/z;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    return-object v0
.end method

.method public e()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    return-object v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/i;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/i;->e:Lcom/squareup/okhttp/internal/a/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/e;->f()Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method h()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/i;->h:J

    .line 313
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()J
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/i;->h:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/m;->d()J

    move-result-wide v0

    goto :goto_0
.end method

.method public k()Lcom/squareup/okhttp/o;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/squareup/okhttp/i;->i:Lcom/squareup/okhttp/o;

    return-object v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/squareup/okhttp/i;->f:Lcom/squareup/okhttp/internal/spdy/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method n()V
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/squareup/okhttp/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/i;->j:I

    .line 376
    return-void
.end method

.method o()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/squareup/okhttp/i;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v1, v1, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v1, v1, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v1, v1, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget v1, v1, Lcom/squareup/okhttp/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v1, v1, Lcom/squareup/okhttp/z;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->b:Lcom/squareup/okhttp/z;

    iget-object v1, v1, Lcom/squareup/okhttp/z;->c:Ljava/net/InetSocketAddress;

    .line 441
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/i;->i:Lcom/squareup/okhttp/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/i;->i:Lcom/squareup/okhttp/o;

    .line 443
    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/i;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
