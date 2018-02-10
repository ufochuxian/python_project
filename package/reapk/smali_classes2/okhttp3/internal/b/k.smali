.class public final Lokhttp3/internal/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static a(Lokhttp3/aa;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lokhttp3/aa;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p0, p1}, Lokhttp3/internal/b/k;->b(Lokhttp3/aa;Ljava/net/Proxy$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    :goto_0
    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/b/k;->a(Lokhttp3/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Lokhttp3/u;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Lokhttp3/u;

    .prologue
    .line 60
    invoke-virtual {p0}, Lokhttp3/u;->l()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lokhttp3/u;->o()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static b(Lokhttp3/aa;Ljava/net/Proxy$Type;)Z
    .locals 1
    .param p0, "request"    # Lokhttp3/aa;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .prologue
    .line 52
    invoke-virtual {p0}, Lokhttp3/aa;->h()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
