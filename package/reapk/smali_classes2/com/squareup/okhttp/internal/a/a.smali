.class public final Lcom/squareup/okhttp/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/b;


# static fields
.field public static final a:Lcom/squareup/okhttp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/squareup/okhttp/internal/a/a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/a/a;->a:Lcom/squareup/okhttp/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/Proxy;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/v;
    .locals 17
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/x;->n()Ljava/util/List;

    move-result-object v12

    .line 39
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/h;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v15

    .line 40
    .local v15, "request":Lcom/squareup/okhttp/v;
    invoke-virtual {v15}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v8

    .line 41
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "size":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 42
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/h;

    .line 43
    .local v11, "challenge":Lcom/squareup/okhttp/h;
    const-string v2, "Basic"

    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/squareup/okhttp/internal/a/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 45
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v10

    .line 48
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    .line 50
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v3}, Lcom/squareup/okhttp/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v2

    const-string v3, "Authorization"

    .line 52
    invoke-virtual {v2, v3, v13}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v2

    .line 55
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/squareup/okhttp/h;
    .end local v13    # "credential":Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public b(Ljava/net/Proxy;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/v;
    .locals 18
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/x;->n()Ljava/util/List;

    move-result-object v12

    .line 61
    .local v12, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/h;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v16

    .line 62
    .local v16, "request":Lcom/squareup/okhttp/v;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v8

    .line 63
    .local v8, "url":Ljava/net/URL;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    .local v17, "size":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 64
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/squareup/okhttp/h;

    .line 65
    .local v11, "challenge":Lcom/squareup/okhttp/h;
    const-string v2, "Basic"

    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v15

    check-cast v15, Ljava/net/InetSocketAddress;

    .line 69
    .local v15, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/squareup/okhttp/internal/a/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 70
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/squareup/okhttp/h;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 68
    invoke-static/range {v2 .. v9}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v10

    .line 72
    .local v10, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v10, :cond_0

    .line 74
    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v3}, Lcom/squareup/okhttp/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, "credential":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v2

    const-string v3, "Proxy-Authorization"

    .line 76
    invoke-virtual {v2, v3, v13}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v2

    .line 79
    .end local v10    # "auth":Ljava/net/PasswordAuthentication;
    .end local v11    # "challenge":Lcom/squareup/okhttp/h;
    .end local v13    # "credential":Ljava/lang/String;
    .end local v15    # "proxyAddress":Ljava/net/InetSocketAddress;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
