.class Lcom/squareup/okhttp/internal/h$a;
.super Lcom/squareup/okhttp/internal/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/okhttp/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Lcom/squareup/okhttp/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/squareup/okhttp/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/g;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/g;)V
    .locals 0
    .param p3, "trafficStatsTagSocket"    # Ljava/lang/reflect/Method;
    .param p4, "trafficStatsUntagSocket"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lcom/squareup/okhttp/internal/g",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "setUseSessionTickets":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local p2, "setHostname":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local p5, "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local p6, "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/h;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/squareup/okhttp/internal/h$a;->a:Lcom/squareup/okhttp/internal/g;

    .line 187
    iput-object p2, p0, Lcom/squareup/okhttp/internal/h$a;->b:Lcom/squareup/okhttp/internal/g;

    .line 188
    iput-object p3, p0, Lcom/squareup/okhttp/internal/h$a;->c:Ljava/lang/reflect/Method;

    .line 189
    iput-object p4, p0, Lcom/squareup/okhttp/internal/h$a;->d:Ljava/lang/reflect/Method;

    .line 190
    iput-object p5, p0, Lcom/squareup/okhttp/internal/h$a;->e:Lcom/squareup/okhttp/internal/g;

    .line 191
    iput-object p6, p0, Lcom/squareup/okhttp/internal/h$a;->f:Lcom/squareup/okhttp/internal/g;

    .line 192
    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 201
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "ioException":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 210
    if-eqz p2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->a:Lcom/squareup/okhttp/internal/g;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Lcom/squareup/okhttp/internal/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->b:Lcom/squareup/okhttp/internal/g;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, p1, v2}, Lcom/squareup/okhttp/internal/g;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->f:Lcom/squareup/okhttp/internal/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->f:Lcom/squareup/okhttp/internal/g;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/g;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/squareup/okhttp/internal/h$a;->a(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v5

    .line 218
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->f:Lcom/squareup/okhttp/internal/g;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/g;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v0    # "parameters":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->e:Lcom/squareup/okhttp/internal/g;

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->e:Lcom/squareup/okhttp/internal/g;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/g;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->e:Lcom/squareup/okhttp/internal/g;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Lcom/squareup/okhttp/internal/g;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 227
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/squareup/okhttp/internal/j;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public b(Ljava/net/Socket;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/h$a;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 249
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
