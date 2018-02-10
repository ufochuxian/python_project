.class public final Lokhttp3/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lokhttp3/a;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(Lokhttp3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Lokhttp3/a;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "inetSocketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    if-nez p3, :cond_2

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p1, p0, Lokhttp3/ae;->a:Lokhttp3/a;

    .line 52
    iput-object p2, p0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    .line 53
    iput-object p3, p0, Lokhttp3/ae;->c:Ljava/net/InetSocketAddress;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lokhttp3/ae;->a:Lokhttp3/a;

    return-object v0
.end method

.method public b()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public c()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lokhttp3/ae;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lokhttp3/ae;->a:Lokhttp3/a;

    iget-object v0, v0, Lokhttp3/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 83
    instance-of v2, p1, Lokhttp3/ae;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lokhttp3/ae;

    .line 85
    .local v0, "other":Lokhttp3/ae;
    iget-object v2, p0, Lokhttp3/ae;->a:Lokhttp3/a;

    iget-object v3, v0, Lokhttp3/ae;->a:Lokhttp3/a;

    invoke-virtual {v2, v3}, Lokhttp3/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    iget-object v3, v0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/ae;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v0, Lokhttp3/ae;->c:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 89
    .end local v0    # "other":Lokhttp3/ae;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0x11

    .line 94
    .local v0, "result":I
    iget-object v1, p0, Lokhttp3/ae;->a:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 95
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/ae;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 96
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/ae;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 97
    return v0
.end method
