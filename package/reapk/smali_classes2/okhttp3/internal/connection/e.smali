.class public final Lokhttp3/internal/connection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/a;

.field private final b:Lokhttp3/internal/connection/d;

.field private c:Ljava/net/Proxy;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/a;Lokhttp3/internal/connection/d;)V
    .locals 2
    .param p1, "address"    # Lokhttp3/a;
    .param p2, "routeDatabase"    # Lokhttp3/internal/connection/d;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 57
    iput-object p2, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    .line 59
    invoke-virtual {p1}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/a;->h()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/connection/e;->a(Lokhttp3/u;Ljava/net/Proxy;)V

    .line 60
    return-void
.end method

.method static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 189
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 197
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
    .line 145
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_2

    .line 150
    :cond_0
    iget-object v8, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v8}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "socketHost":Ljava/lang/String;
    iget-object v8, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v8}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/u;->j()I

    move-result v7

    .line 163
    .local v7, "socketPort":I
    :goto_0
    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    const v8, 0xffff

    if-le v7, v8, :cond_4

    .line 164
    :cond_1
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; port is out of range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    .end local v6    # "socketHost":Ljava/lang/String;
    .end local v7    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 154
    .local v3, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v8, v3, Ljava/net/InetSocketAddress;

    if-nez v8, :cond_3

    .line 155
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object v4, v3

    .line 158
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 159
    .local v4, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v4}, Lokhttp3/internal/connection/e;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .restart local v6    # "socketHost":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .restart local v7    # "socketPort":I
    goto :goto_0

    .line 168
    .end local v3    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v4    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_6

    .line 169
    iget-object v8, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, Lokhttp3/internal/connection/e;->h:I

    .line 180
    return-void

    .line 172
    :cond_6
    iget-object v8, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v8}, Lokhttp3/a;->b()Lokhttp3/q;

    move-result-object v8

    invoke-interface {v8, v6}, Lokhttp3/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 175
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v8, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lokhttp3/u;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "url"    # Lokhttp3/u;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 112
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 123
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lokhttp3/internal/connection/e;->f:I

    .line 124
    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    .line 117
    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->g()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/u;->b()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lokhttp3/internal/connection/e;->f:I

    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

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
    .line 133
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v3}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/e;->e:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/connection/e;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lokhttp3/internal/connection/e;->f:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 138
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/e;->a(Ljava/net/Proxy;)V

    .line 139
    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lokhttp3/internal/connection/e;->h:I

    iget-object v1, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v2}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/u;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->g:Ljava/util/List;

    iget v1, p0, Lokhttp3/internal/connection/e;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lokhttp3/internal/connection/e;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

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

.method private h()Lokhttp3/ae;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ae;

    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/ae;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lokhttp3/ae;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 99
    invoke-virtual {p1}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->g()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 102
    invoke-virtual {v1}, Lokhttp3/a;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/u;->b()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/ae;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/d;->a(Lokhttp3/ae;)V

    .line 106
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lokhttp3/ae;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 78
    :cond_0
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->h()Lokhttp3/ae;

    move-result-object v0

    .line 91
    :cond_1
    :goto_0
    return-object v0

    .line 80
    :cond_2
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->d()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Proxy;

    .line 82
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/connection/e;->f()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/InetSocketAddress;

    .line 84
    new-instance v0, Lokhttp3/ae;

    iget-object v1, p0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    iget-object v2, p0, Lokhttp3/internal/connection/e;->c:Ljava/net/Proxy;

    iget-object v3, p0, Lokhttp3/internal/connection/e;->d:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/ae;-><init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 85
    .local v0, "route":Lokhttp3/ae;
    iget-object v1, p0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/d;->c(Lokhttp3/ae;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lokhttp3/internal/connection/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lokhttp3/internal/connection/e;->b()Lokhttp3/ae;

    move-result-object v0

    goto :goto_0
.end method
