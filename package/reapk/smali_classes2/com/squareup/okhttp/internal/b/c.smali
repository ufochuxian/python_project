.class public final Lcom/squareup/okhttp/internal/b/c;
.super Lcom/squareup/okhttp/internal/b/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/b/b;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/b/b;)V
    .locals 0
    .param p1, "delegate"    # Lcom/squareup/okhttp/internal/b/b;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/b/a;-><init>(Ljava/net/HttpURLConnection;)V

    .line 34
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/t;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 29
    new-instance v0, Lcom/squareup/okhttp/internal/b/b;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/b/b;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/t;)V

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/b/c;-><init>(Lcom/squareup/okhttp/internal/b/b;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a()Lcom/squareup/okhttp/o;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->c:Lcom/squareup/okhttp/internal/a/g;

    .line 46
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/g;->h()Lcom/squareup/okhttp/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->f()Lcom/squareup/okhttp/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->d:Lcom/squareup/okhttp/o;

    goto :goto_0
.end method

.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/b/a;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->connect()V

    return-void
.end method

.method public bridge synthetic disconnect()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->disconnect()V

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentLength()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/b/b;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDate()J
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/b/a;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/b/a;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/b/b;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModified()J
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/b/b;->setFixedLengthStreamingMode(J)V

    .line 72
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/t;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/t;

    .line 52
    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/b/a;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/b/a;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b/c;->a:Lcom/squareup/okhttp/internal/b/b;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/t;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/t;

    .line 60
    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/b/a;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/squareup/okhttp/internal/b/a;->usingProxy()Z

    move-result v0

    return v0
.end method
