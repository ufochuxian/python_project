.class public Lcom/squareup/picasso/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# static fields
.field static final a:Ljava/lang/String; = "X-Android-Response-Source"

.field static final b:Ljava/lang/String; = "OkHttp-Response-Source"


# instance fields
.field private final c:Lcom/squareup/okhttp/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/r;-><init>(Ljava/io/File;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxSize"    # J

    .prologue
    .line 61
    invoke-static {p1}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/squareup/picasso/r;-><init>(Ljava/io/File;J)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/t;)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/squareup/okhttp/u;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/u;-><init>(Lcom/squareup/okhttp/t;)V

    iput-object v0, p0, Lcom/squareup/picasso/r;->c:Lcom/squareup/okhttp/u;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/picasso/r;-><init>(Ljava/io/File;J)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 72
    new-instance v0, Lcom/squareup/okhttp/t;

    invoke-direct {v0}, Lcom/squareup/okhttp/t;-><init>()V

    invoke-direct {p0, v0}, Lcom/squareup/picasso/r;-><init>(Lcom/squareup/okhttp/t;)V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/squareup/picasso/r;->c:Lcom/squareup/okhttp/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/u;->a()Lcom/squareup/okhttp/t;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/squareup/okhttp/c;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/t;->a(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/t;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$a;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "localCacheOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/r;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 100
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    const-string v6, "Cache-Control"

    const-string v7, "only-if-cached,max-age=2147483647"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 106
    .local v4, "responseCode":I
    const/16 v6, 0x12c

    if-lt v4, v6, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    new-instance v6, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_1
    const-string v6, "OkHttp-Response-Source"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "responseSource":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 113
    const-string v6, "X-Android-Response-Source"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    :cond_2
    const-string v6, "Content-Length"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    .line 117
    .local v2, "contentLength":J
    invoke-static {v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;)Z

    move-result v1

    .line 119
    .local v1, "fromCache":Z
    new-instance v6, Lcom/squareup/picasso/Downloader$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2, v3}, Lcom/squareup/picasso/Downloader$a;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v6
.end method

.method protected a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lcom/squareup/picasso/r;->c:Lcom/squareup/okhttp/u;

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/u;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 89
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 91
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/squareup/picasso/r;->c:Lcom/squareup/okhttp/u;

    invoke-virtual {v1}, Lcom/squareup/okhttp/u;->a()Lcom/squareup/okhttp/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->h()Lcom/squareup/okhttp/c;

    move-result-object v0

    .line 124
    .local v0, "cache":Lcom/squareup/okhttp/c;
    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/c;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b()Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/picasso/r;->c:Lcom/squareup/okhttp/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/u;->a()Lcom/squareup/okhttp/t;

    move-result-object v0

    return-object v0
.end method
