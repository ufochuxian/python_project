.class Lcom/squareup/okhttp/u$1;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/u;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/squareup/okhttp/u;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/u;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/u;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/squareup/okhttp/u$1;->b:Lcom/squareup/okhttp/u;

    iput-object p2, p0, Lcom/squareup/okhttp/u$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/squareup/okhttp/u$1;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/u$1;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/squareup/okhttp/u$1;->b:Lcom/squareup/okhttp/u;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/u;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/squareup/okhttp/u$1;->b:Lcom/squareup/okhttp/u;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/u;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
