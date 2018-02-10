.class public final Lcom/squareup/okhttp/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final a:Lcom/squareup/okhttp/t;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/t;)V
    .locals 0
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/squareup/okhttp/u;->a:Lcom/squareup/okhttp/t;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/u;->a:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/squareup/okhttp/u;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->d()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/u;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/squareup/okhttp/u;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v2}, Lcom/squareup/okhttp/t;->x()Lcom/squareup/okhttp/t;

    move-result-object v0

    .line 54
    .local v0, "copy":Lcom/squareup/okhttp/t;
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/t;->a(Ljava/net/Proxy;)Lcom/squareup/okhttp/t;

    .line 56
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/squareup/okhttp/internal/b/b;

    invoke-direct {v2, p1, v0}, Lcom/squareup/okhttp/internal/b/b;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/t;)V

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/squareup/okhttp/internal/b/c;

    invoke-direct {v2, p1, v0}, Lcom/squareup/okhttp/internal/b/c;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/t;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b()Lcom/squareup/okhttp/u;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/squareup/okhttp/u;

    iget-object v1, p0, Lcom/squareup/okhttp/u;->a:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->y()Lcom/squareup/okhttp/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/u;-><init>(Lcom/squareup/okhttp/t;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/squareup/okhttp/u;->b()Lcom/squareup/okhttp/u;

    move-result-object v0

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/u$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/u$1;-><init>(Lcom/squareup/okhttp/u;Ljava/lang/String;)V

    goto :goto_0
.end method
