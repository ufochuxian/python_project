.class public final Lcom/squareup/okhttp/internal/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/a;

.field private final b:Ljava/net/URI;

.field private final c:Lcom/squareup/okhttp/internal/f;

.field private final d:Lcom/squareup/okhttp/t;

.field private final e:Lcom/squareup/okhttp/internal/i;

.field private final f:Lcom/squareup/okhttp/v;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/net/InetSocketAddress;

.field private i:Lcom/squareup/okhttp/k;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/a;Ljava/net/URI;Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)V
    .locals 1
    .param p1, "address"    # Lcom/squareup/okhttp/a;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "client"    # Lcom/squareup/okhttp/t;
    .param p4, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->p:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    .line 78
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    .line 79
    iput-object p3, p0, Lcom/squareup/okhttp/internal/a/n;->d:Lcom/squareup/okhttp/t;

    .line 80
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/c;->b(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->e:Lcom/squareup/okhttp/internal/i;

    .line 81
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/c;->c(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/f;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/f;

    .line 82
    iput-object p4, p0, Lcom/squareup/okhttp/internal/a/n;->f:Lcom/squareup/okhttp/v;

    .line 84
    invoke-virtual {p1}, Lcom/squareup/okhttp/a;->i()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 85
    return-void
.end method

.method public static a(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/a/n;
    .locals 2
    .param p0, "address"    # Lcom/squareup/okhttp/a;
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .param p2, "client"    # Lcom/squareup/okhttp/t;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->b()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/squareup/okhttp/internal/a/n;-><init>(Lcom/squareup/okhttp/a;Ljava/net/URI;Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)V

    return-object v0
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 237
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    .line 204
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v7, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v5, v7, :cond_2

    .line 205
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v5}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "socketHost":Ljava/lang/String;
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URI;)I

    move-result v4

    .line 218
    .local v4, "socketPort":I
    :goto_0
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const v5, 0xffff

    if-le v4, v5, :cond_4

    .line 219
    :cond_1
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; port is out of range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    .end local v3    # "socketHost":Ljava/lang/String;
    .end local v4    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    .line 209
    .local v1, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v5, v1, Ljava/net/InetSocketAddress;

    if-nez v5, :cond_3

    .line 210
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    move-object v2, v1

    .line 213
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 214
    .local v2, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/n;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .restart local v3    # "socketHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .restart local v4    # "socketPort":I
    goto :goto_0

    .line 224
    .end local v1    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v2    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/n;->c:Lcom/squareup/okhttp/internal/f;

    invoke-interface {v5, v3}, Lcom/squareup/okhttp/internal/f;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v0, v7, v5

    .line 225
    .local v0, "inetAddress":Ljava/net/InetAddress;
    iget-object v9, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    iput v6, p0, Lcom/squareup/okhttp/internal/a/n;->m:I

    .line 228
    return-void
.end method

.method private a(Ljava/net/URI;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 165
    if-eqz p2, :cond_0

    .line 167
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    .line 178
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/okhttp/internal/a/n;->k:I

    .line 179
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    .line 172
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->d:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->e()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/squareup/okhttp/k;)Z
    .locals 2
    .param p1, "connectionSpec"    # Lcom/squareup/okhttp/k;

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/squareup/okhttp/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/squareup/okhttp/internal/a/n;->k:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v3}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->j:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp/internal/a/n;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/a/n;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 193
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Ljava/net/Proxy;)V

    .line 194
    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/squareup/okhttp/internal/a/n;->m:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Ljava/net/InetSocketAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v3}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted inet socket addresses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->l:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp/internal/a/n;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/a/n;->m:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 260
    .local v0, "result":Ljava/net/InetSocketAddress;
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->g()V

    .line 261
    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    .line 267
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v4}, Lcom/squareup/okhttp/a;->h()Ljava/util/List;

    move-result-object v3

    .line 268
    .local v3, "specs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/k;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 269
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/k;

    .line 270
    .local v2, "spec":Lcom/squareup/okhttp/k;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/n;->f:Lcom/squareup/okhttp/v;

    invoke-virtual {v4}, Lcom/squareup/okhttp/v;->j()Z

    move-result v4

    invoke-virtual {v2}, Lcom/squareup/okhttp/k;->a()Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 271
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "spec":Lcom/squareup/okhttp/k;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    .line 275
    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Lcom/squareup/okhttp/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    .line 286
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v2}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; no connection specs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "//"

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    new-instance v1, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    .line 291
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v2}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; exhausted connection specs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "//"

    goto :goto_1

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    iget v1, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/k;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Lcom/squareup/okhttp/z;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/n;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/z;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/z;Ljava/io/IOException;)V
    .locals 6
    .param p1, "failedRoute"    # Lcom/squareup/okhttp/z;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/squareup/okhttp/z;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v1}, Lcom/squareup/okhttp/a;->j()Ljava/net/ProxySelector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    invoke-virtual {v1}, Lcom/squareup/okhttp/a;->j()Ljava/net/ProxySelector;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->b:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/squareup/okhttp/z;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->e:Lcom/squareup/okhttp/internal/i;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/i;->a(Lcom/squareup/okhttp/z;)V

    .line 151
    instance-of v1, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljavax/net/ssl/SSLProtocolException;

    if-nez v1, :cond_1

    .line 152
    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->n:Ljava/util/List;

    iget v2, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/squareup/okhttp/internal/a/n;->o:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/k;

    .line 155
    .local v4, "connectionSpec":Lcom/squareup/okhttp/k;
    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/k;)Z

    move-result v5

    .line 156
    .local v5, "shouldSendTlsFallbackIndicator":Z
    new-instance v0, Lcom/squareup/okhttp/z;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->g:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->h:Ljava/net/InetSocketAddress;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/z;-><init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lcom/squareup/okhttp/k;Z)V

    .line 158
    .local v0, "toSuppress":Lcom/squareup/okhttp/z;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->e:Lcom/squareup/okhttp/internal/i;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/i;->a(Lcom/squareup/okhttp/z;)V

    goto :goto_0

    .line 161
    .end local v0    # "toSuppress":Lcom/squareup/okhttp/z;
    .end local v4    # "connectionSpec":Lcom/squareup/okhttp/k;
    .end local v5    # "shouldSendTlsFallbackIndicator":Z
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->j()Z

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

.method public b()Lcom/squareup/okhttp/z;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->k()Lcom/squareup/okhttp/z;

    move-result-object v0

    .line 128
    :cond_1
    :goto_0
    return-object v0

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->d()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->g:Ljava/net/Proxy;

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->f()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->h:Ljava/net/InetSocketAddress;

    .line 117
    :cond_4
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/n;->i()Lcom/squareup/okhttp/k;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->i:Lcom/squareup/okhttp/k;

    .line 119
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->i:Lcom/squareup/okhttp/k;

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/k;)Z

    move-result v5

    .line 120
    .local v5, "shouldSendTlsFallbackIndicator":Z
    new-instance v0, Lcom/squareup/okhttp/z;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/n;->g:Ljava/net/Proxy;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/n;->h:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/n;->i:Lcom/squareup/okhttp/k;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/z;-><init>(Lcom/squareup/okhttp/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lcom/squareup/okhttp/k;Z)V

    .line 122
    .local v0, "route":Lcom/squareup/okhttp/z;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->e:Lcom/squareup/okhttp/internal/i;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/i;->c(Lcom/squareup/okhttp/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/n;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/n;->b()Lcom/squareup/okhttp/z;

    move-result-object v0

    goto :goto_0
.end method
