.class final Lokhttp3/y$1;
.super Lokhttp3/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lokhttp3/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/k;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;
    .locals 1
    .param p1, "pool"    # Lokhttp3/k;
    .param p2, "address"    # Lokhttp3/a;
    .param p3, "streamAllocation"    # Lokhttp3/internal/connection/f;

    .prologue
    .line 145
    invoke-virtual {p1, p2, p3}, Lokhttp3/k;->a(Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/k;)Lokhttp3/internal/connection/d;
    .locals 1
    .param p1, "connectionPool"    # Lokhttp3/k;

    .prologue
    .line 153
    iget-object v0, p1, Lokhttp3/k;->a:Lokhttp3/internal/connection/d;

    return-object v0
.end method

.method public a(Lokhttp3/e;)Lokhttp3/internal/connection/f;
    .locals 1
    .param p1, "call"    # Lokhttp3/e;

    .prologue
    .line 157
    check-cast p1, Lokhttp3/z;

    .end local p1    # "call":Lokhttp3/e;
    invoke-virtual {p1}, Lokhttp3/z;->g()Lokhttp3/internal/connection/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/u;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1}, Lokhttp3/u;->h(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lokhttp3/l;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .prologue
    .line 162
    invoke-virtual {p1, p2, p3}, Lokhttp3/l;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 163
    return-void
.end method

.method public a(Lokhttp3/t$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lokhttp3/t$a;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p1, p2}, Lokhttp3/t$a;->a(Ljava/lang/String;)Lokhttp3/t$a;

    .line 128
    return-void
.end method

.method public a(Lokhttp3/t$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lokhttp3/t$a;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p1, p2, p3}, Lokhttp3/t$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/t$a;

    .line 132
    return-void
.end method

.method public a(Lokhttp3/y$a;Lokhttp3/internal/a/f;)V
    .locals 0
    .param p1, "builder"    # Lokhttp3/y$a;
    .param p2, "internalCache"    # Lokhttp3/internal/a/f;

    .prologue
    .line 135
    invoke-virtual {p1, p2}, Lokhttp3/y$a;->a(Lokhttp3/internal/a/f;)V

    .line 136
    return-void
.end method

.method public a(Lokhttp3/k;Lokhttp3/internal/connection/c;)Z
    .locals 1
    .param p1, "pool"    # Lokhttp3/k;
    .param p2, "connection"    # Lokhttp3/internal/connection/c;

    .prologue
    .line 140
    invoke-virtual {p1, p2}, Lokhttp3/k;->b(Lokhttp3/internal/connection/c;)Z

    move-result v0

    return v0
.end method

.method public b(Lokhttp3/e;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/e;

    .prologue
    .line 171
    check-cast p1, Lokhttp3/z;

    .end local p1    # "call":Lokhttp3/e;
    invoke-virtual {p1}, Lokhttp3/z;->f()V

    .line 172
    return-void
.end method

.method public b(Lokhttp3/k;Lokhttp3/internal/connection/c;)V
    .locals 0
    .param p1, "pool"    # Lokhttp3/k;
    .param p2, "connection"    # Lokhttp3/internal/connection/c;

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Lokhttp3/k;->a(Lokhttp3/internal/connection/c;)V

    .line 150
    return-void
.end method
