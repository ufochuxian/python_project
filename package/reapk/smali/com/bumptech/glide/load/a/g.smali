.class public Lcom/bumptech/glide/load/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/g$1;,
        Lcom/bumptech/glide/load/a/g$a;,
        Lcom/bumptech/glide/load/a/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HttpUrlFetcher"

.field private static final b:I = 0x5

.field private static final c:Lcom/bumptech/glide/load/a/g$b;


# instance fields
.field private final d:Lcom/bumptech/glide/load/b/d;

.field private final e:Lcom/bumptech/glide/load/a/g$b;

.field private f:Ljava/net/HttpURLConnection;

.field private g:Ljava/io/InputStream;

.field private volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/bumptech/glide/load/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/a/g$a;-><init>(Lcom/bumptech/glide/load/a/g$1;)V

    sput-object v0, Lcom/bumptech/glide/load/a/g;->c:Lcom/bumptech/glide/load/a/g$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/d;)V
    .locals 1
    .param p1, "glideUrl"    # Lcom/bumptech/glide/load/b/d;

    .prologue
    .line 33
    sget-object v0, Lcom/bumptech/glide/load/a/g;->c:Lcom/bumptech/glide/load/a/g$b;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/a/g;-><init>(Lcom/bumptech/glide/load/b/d;Lcom/bumptech/glide/load/a/g$b;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/d;Lcom/bumptech/glide/load/a/g$b;)V
    .locals 0
    .param p1, "glideUrl"    # Lcom/bumptech/glide/load/b/d;
    .param p2, "connectionFactory"    # Lcom/bumptech/glide/load/a/g$b;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/a/g;->d:Lcom/bumptech/glide/load/b/d;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/a/g;->e:Lcom/bumptech/glide/load/a/g$b;

    .line 40
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 98
    .local v0, "contentLength":I
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/i/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/a/g;->g:Ljava/io/InputStream;

    .line 105
    .end local v0    # "contentLength":I
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/a/g;->g:Ljava/io/InputStream;

    return-object v1

    .line 100
    :cond_0
    const-string v1, "HttpUrlFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v1, "HttpUrlFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got non empty content encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/a/g;->g:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "redirects"    # I
    .param p3, "lastUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v8, 0x9c4

    .line 49
    const/4 v5, 0x5

    if-lt p2, v5, :cond_0

    .line 50
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Too many (> 5) redirects!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    new-instance v5, Ljava/io/IOException;

    const-string v6, "In re-direct loop"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    move-exception v5

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->e:Lcom/bumptech/glide/load/a/g$b;

    invoke-interface {v5, p1}, Lcom/bumptech/glide/load/a/g$b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    .line 63
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 69
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 72
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    iget-boolean v5, p0, Lcom/bumptech/glide/load/a/g;->h:Z

    if-eqz v5, :cond_3

    .line 74
    const/4 v5, 0x0

    .line 85
    :goto_1
    return-object v5

    .line 76
    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 77
    .local v4, "statusCode":I
    div-int/lit8 v5, v4, 0x64

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 78
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/a/g;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    .line 79
    :cond_4
    div-int/lit8 v5, v4, 0x64

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 80
    iget-object v5, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "redirectUrlString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 82
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Received empty or null redirect url"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 85
    .local v2, "redirectUrl":Ljava/net/URL;
    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v2, v5, p1, p4}, Lcom/bumptech/glide/load/a/g;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    .line 87
    .end local v2    # "redirectUrl":Ljava/net/URL;
    .end local v3    # "redirectUrlString":Ljava/lang/String;
    :cond_6
    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 88
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to retrieve response code from HttpUrlConnection."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_7
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/a/g;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 120
    :cond_1
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 4
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->d:Lcom/bumptech/glide/load/b/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d;->a()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/load/a/g;->d:Lcom/bumptech/glide/load/b/d;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/d;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bumptech/glide/load/a/g;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/load/a/g;->d:Lcom/bumptech/glide/load/b/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/g;->h:Z

    .line 132
    return-void
.end method
