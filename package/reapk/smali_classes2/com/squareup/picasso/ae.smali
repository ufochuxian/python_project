.class public Lcom/squareup/picasso/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/ae$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "X-Android-Response-Source"

.field static volatile b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/ae;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/ae;->d:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lcom/squareup/picasso/ae;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 86
    :try_start_0
    sget-object v1, Lcom/squareup/picasso/ae;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    sget-object v0, Lcom/squareup/picasso/ae;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/squareup/picasso/ae$a;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/squareup/picasso/ae;->b:Ljava/lang/Object;

    .line 90
    :cond_0
    monitor-exit v1

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Lcom/squareup/picasso/Downloader$a;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "localCacheOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 55
    iget-object v5, p0, Lcom/squareup/picasso/ae;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/squareup/picasso/ae;->a(Landroid/content/Context;)V

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/picasso/ae;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 59
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    const-string v5, "Cache-Control"

    const-string v6, "only-if-cached,max-age=2147483647"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 65
    .local v4, "responseCode":I
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    new-instance v5, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :cond_2
    const-string v5, "Content-Length"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v2, v5

    .line 71
    .local v2, "contentLength":J
    const-string v5, "X-Android-Response-Source"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;)Z

    move-result v1

    .line 73
    .local v1, "fromCache":Z
    new-instance v5, Lcom/squareup/picasso/Downloader$a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v1, v2, v3}, Lcom/squareup/picasso/Downloader$a;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v5
.end method

.method protected a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "path"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 48
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/squareup/picasso/ae;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/squareup/picasso/ae;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/squareup/picasso/ae$a;->a(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method
