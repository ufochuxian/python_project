.class public final Lcom/squareup/okhttp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/net/Proxy;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:Ljavax/net/SocketFactory;

.field final e:Ljavax/net/ssl/SSLSocketFactory;

.field final f:Ljavax/net/ssl/HostnameVerifier;

.field final g:Lcom/squareup/okhttp/g;

.field final h:Lcom/squareup/okhttp/b;

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 3
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p4, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p5, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "certificatePinner"    # Lcom/squareup/okhttp/g;
    .param p7, "authenticator"    # Lcom/squareup/okhttp/b;
    .param p8, "proxy"    # Ljava/net/Proxy;
    .param p11, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/squareup/okhttp/g;",
            "Lcom/squareup/okhttp/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p9, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    .local p10, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/k;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uriHost == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriPort <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p7, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    if-nez p9, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    if-nez p11, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    iput-object p8, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/squareup/okhttp/a;->c:I

    .line 63
    iput-object p3, p0, Lcom/squareup/okhttp/a;->d:Ljavax/net/SocketFactory;

    .line 64
    iput-object p4, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iput-object p5, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    iput-object p6, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    .line 67
    iput-object p7, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    .line 68
    invoke-static {p9}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    .line 69
    invoke-static {p10}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    .line 70
    iput-object p11, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    .line 71
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/squareup/okhttp/a;->c:I

    return v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/a;->d:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public e()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 143
    instance-of v2, p1, Lcom/squareup/okhttp/a;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Lcom/squareup/okhttp/a;

    .line 145
    .local v0, "that":Lcom/squareup/okhttp/a;
    iget-object v2, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/squareup/okhttp/a;->c:I

    iget v3, v0, Lcom/squareup/okhttp/a;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    .line 148
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 149
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    .line 150
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    .line 151
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    .line 152
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    .line 153
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    iget-object v3, v0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    .line 154
    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 156
    .end local v0    # "that":Lcom/squareup/okhttp/a;
    :cond_0
    return v1
.end method

.method public f()Lcom/squareup/okhttp/b;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 160
    const/16 v0, 0x11

    .line 161
    .local v0, "result":I
    iget-object v1, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 162
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 163
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/squareup/okhttp/a;->c:I

    add-int v0, v1, v3

    .line 164
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/a;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 165
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/a;->f:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/squareup/okhttp/a;->g:Lcom/squareup/okhttp/g;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/a;->h:Lcom/squareup/okhttp/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 169
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 171
    return v0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_0

    :cond_2
    move v1, v2

    .line 164
    goto :goto_1

    :cond_3
    move v1, v2

    .line 165
    goto :goto_2
.end method

.method public i()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/squareup/okhttp/a;->a:Ljava/net/Proxy;

    return-object v0
.end method

.method public j()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/a;->k:Ljava/net/ProxySelector;

    return-object v0
.end method