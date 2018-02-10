.class public final Lokhttp3/internal/connection/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/l;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/connection/b;->b:I

    .line 46
    iput-object p1, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 135
    iget v0, p0, Lokhttp3/internal/connection/b;->b:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    iget-object v1, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/l;

    invoke-virtual {v1, p1}, Lokhttp3/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x1

    .line 140
    :goto_1
    return v1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lokhttp3/l;
    .locals 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "tlsConfiguration":Lokhttp3/l;
    iget v1, p0, Lokhttp3/internal/connection/b;->b:I

    .local v1, "i":I
    iget-object v4, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 58
    iget-object v4, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/l;

    .line 59
    .local v0, "connectionSpec":Lokhttp3/l;
    invoke-virtual {v0, p1}, Lokhttp3/l;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    move-object v3, v0

    .line 61
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lokhttp3/internal/connection/b;->b:I

    .line 66
    .end local v0    # "connectionSpec":Lokhttp3/l;
    :cond_0
    if-nez v3, :cond_2

    .line 70
    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lokhttp3/internal/connection/b;->d:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", modes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", supported protocols="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .restart local v0    # "connectionSpec":Lokhttp3/l;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "connectionSpec":Lokhttp3/l;
    :cond_2
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/b;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    iput-boolean v4, p0, Lokhttp3/internal/connection/b;->c:Z

    .line 78
    sget-object v4, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-boolean v5, p0, Lokhttp3/internal/connection/b;->d:Z

    invoke-virtual {v4, v3, p1, v5}, Lokhttp3/internal/a;->a(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V

    .line 80
    return-object v3
.end method

.method public a(Ljava/io/IOException;)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    iput-boolean v1, p0, Lokhttp3/internal/connection/b;->d:Z

    .line 94
    iget-boolean v2, p0, Lokhttp3/internal/connection/b;->c:Z

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-nez v2, :cond_0

    .line 106
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_0

    .line 112
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 119
    :cond_2
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    .line 126
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
