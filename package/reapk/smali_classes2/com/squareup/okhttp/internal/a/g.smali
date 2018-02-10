.class public final Lcom/squareup/okhttp/internal/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/a/g$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x14

.field private static final e:Lcom/squareup/okhttp/y;


# instance fields
.field final b:Lcom/squareup/okhttp/t;

.field c:J

.field public final d:Z

.field private f:Lcom/squareup/okhttp/i;

.field private g:Lcom/squareup/okhttp/a;

.field private h:Lcom/squareup/okhttp/internal/a/n;

.field private i:Lcom/squareup/okhttp/z;

.field private final j:Lcom/squareup/okhttp/x;

.field private k:Lcom/squareup/okhttp/internal/a/q;

.field private l:Z

.field private final m:Lcom/squareup/okhttp/v;

.field private n:Lcom/squareup/okhttp/v;

.field private o:Lcom/squareup/okhttp/x;

.field private p:Lcom/squareup/okhttp/x;

.field private q:Lokio/w;

.field private r:Lokio/d;

.field private final s:Z

.field private final t:Z

.field private u:Lcom/squareup/okhttp/internal/a/b;

.field private v:Lcom/squareup/okhttp/internal/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/squareup/okhttp/internal/a/g$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/g$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/a/g;->e:Lcom/squareup/okhttp/y;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;ZZZLcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/n;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)V
    .locals 2
    .param p1, "client"    # Lcom/squareup/okhttp/t;
    .param p2, "request"    # Lcom/squareup/okhttp/v;
    .param p3, "bufferRequestBody"    # Z
    .param p4, "callerWritesRequestBody"    # Z
    .param p5, "forWebSocket"    # Z
    .param p6, "connection"    # Lcom/squareup/okhttp/i;
    .param p7, "routeSelector"    # Lcom/squareup/okhttp/internal/a/n;
    .param p8, "requestBodyOut"    # Lcom/squareup/okhttp/internal/a/m;
    .param p9, "priorResponse"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/g;->c:J

    .line 191
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    .line 192
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    .line 193
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/a/g;->d:Z

    .line 194
    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/a/g;->s:Z

    .line 195
    iput-boolean p5, p0, Lcom/squareup/okhttp/internal/a/g;->t:Z

    .line 196
    iput-object p6, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 197
    iput-object p7, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    .line 198
    iput-object p8, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    .line 199
    iput-object p9, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    .line 201
    if-eqz p6, :cond_0

    .line 202
    sget-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v0, p6, p0}, Lcom/squareup/okhttp/internal/c;->b(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)V

    .line 203
    invoke-virtual {p6}, Lcom/squareup/okhttp/i;->d()Lcom/squareup/okhttp/z;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->i:Lcom/squareup/okhttp/z;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->i:Lcom/squareup/okhttp/z;

    goto :goto_0
.end method

.method private static a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/a;
    .locals 12
    .param p0, "client"    # Lcom/squareup/okhttp/t;
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "uriHost":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_1
    const/4 v4, 0x0

    .line 1060
    .local v4, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v5, 0x0

    .line 1061
    .local v5, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v6, 0x0

    .line 1062
    .local v6, "certificatePinner":Lcom/squareup/okhttp/g;
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 1064
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 1065
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->l()Lcom/squareup/okhttp/g;

    move-result-object v6

    .line 1068
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v2

    .line 1069
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->i()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 1070
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->m()Lcom/squareup/okhttp/b;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->d()Ljava/net/Proxy;

    move-result-object v8

    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->t()Ljava/util/List;

    move-result-object v9

    .line 1071
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->u()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->e()Ljava/net/ProxySelector;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/squareup/okhttp/a;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/g;Lcom/squareup/okhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/i;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/g;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    return-object v0
.end method

.method private static a(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;
    .locals 6
    .param p0, "cachedHeaders"    # Lcom/squareup/okhttp/p;
    .param p1, "networkHeaders"    # Lcom/squareup/okhttp/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 938
    new-instance v2, Lcom/squareup/okhttp/p$a;

    invoke-direct {v2}, Lcom/squareup/okhttp/p$a;-><init>()V

    .line 940
    .local v2, "result":Lcom/squareup/okhttp/p$a;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 941
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 940
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_1
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 947
    :cond_2
    invoke-virtual {v2, v0, v4}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_1

    .line 951
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/p;->a()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_6

    .line 952
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 953
    .restart local v0    # "fieldName":Ljava/lang/String;
    const-string v5, "Content-Length"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 951
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 956
    :cond_5
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 957
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/squareup/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    goto :goto_3

    .line 961
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v5

    return-object v5
.end method

.method private a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/v;
    .locals 6
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v3

    .line 622
    .local v3, "result":Lcom/squareup/okhttp/v$a;
    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 623
    const-string v4, "Host"

    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 626
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v4}, Lcom/squareup/okhttp/i;->m()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-eq v4, v5, :cond_2

    :cond_1
    const-string v4, "Connection"

    .line 627
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 628
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 631
    :cond_2
    const-string v4, "Accept-Encoding"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 632
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/squareup/okhttp/internal/a/g;->l:Z

    .line 633
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 636
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v4}, Lcom/squareup/okhttp/t;->f()Ljava/net/CookieHandler;

    move-result-object v0

    .line 637
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_4

    .line 641
    invoke-virtual {v3}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/v;->e()Lcom/squareup/okhttp/p;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 643
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->b()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 646
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/v$a;Ljava/util/Map;)V

    .line 649
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    const-string v4, "User-Agent"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 650
    const-string v4, "User-Agent"

    invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 653
    :cond_5
    invoke-virtual {v3}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v4

    return-object v4
.end method

.method private a(Lcom/squareup/okhttp/internal/a/b;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 8
    .param p1, "cacheRequest"    # Lcom/squareup/okhttp/internal/a/b;
    .param p2, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    if-nez p1, :cond_1

    .line 906
    .end local p2    # "response":Lcom/squareup/okhttp/x;
    :cond_0
    :goto_0
    return-object p2

    .line 856
    .restart local p2    # "response":Lcom/squareup/okhttp/x;
    :cond_1
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/a/b;->b()Lokio/w;

    move-result-object v1

    .line 857
    .local v1, "cacheBodyUnbuffered":Lokio/w;
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {p2}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/y;->c()Lokio/e;

    move-result-object v3

    .line 860
    .local v3, "source":Lokio/e;
    invoke-static {v1}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v0

    .line 862
    .local v0, "cacheBody":Lokio/d;
    new-instance v2, Lcom/squareup/okhttp/internal/a/g$2;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/squareup/okhttp/internal/a/g$2;-><init>(Lcom/squareup/okhttp/internal/a/g;Lokio/e;Lcom/squareup/okhttp/internal/a/b;Lokio/d;)V

    .line 904
    .local v2, "cacheWritingSource":Lokio/x;
    invoke-virtual {p2}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v4

    new-instance v5, Lcom/squareup/okhttp/internal/a/k;

    .line 905
    invoke-virtual {p2}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v6

    invoke-static {v2}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/squareup/okhttp/internal/a/k;-><init>(Lcom/squareup/okhttp/p;Lokio/e;)V

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    .line 906
    invoke-virtual {v4}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 657
    invoke-static {p0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/squareup/okhttp/internal/a/n;Ljava/io/IOException;)V
    .locals 3
    .param p1, "routeSelector"    # Lcom/squareup/okhttp/internal/a/n;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 423
    sget-object v1, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/c;->b(Lcom/squareup/okhttp/i;)I

    move-result v1

    if-lez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v1}, Lcom/squareup/okhttp/i;->d()Lcom/squareup/okhttp/z;

    move-result-object v0

    .line 425
    .local v0, "failedRoute":Lcom/squareup/okhttp/z;
    invoke-virtual {p1, v0, p2}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/z;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public static a(Lcom/squareup/okhttp/x;)Z
    .locals 8
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->c()I

    move-result v0

    .line 596
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 599
    goto :goto_0

    .line 605
    :cond_3
    invoke-static {p0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/x;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    .line 606
    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 607
    goto :goto_0
.end method

.method private static a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)Z
    .locals 8
    .param p0, "cached"    # Lcom/squareup/okhttp/x;
    .param p1, "network"    # Lcom/squareup/okhttp/x;

    .prologue
    const/4 v2, 0x1

    .line 914
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->c()I

    move-result v3

    const/16 v4, 0x130

    if-ne v3, v4, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v2

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/p;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 922
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/p;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 924
    .local v1, "networkLastModified":Ljava/util/Date;
    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 930
    .end local v1    # "networkLastModified":Ljava/util/Date;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/g;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    return-object v0
.end method

.method private static b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 2
    .param p0, "response"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 305
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object p0

    .end local p0    # "response":Lcom/squareup/okhttp/x;
    :cond_0
    return-object p0
.end method

.method private b(Ljava/io/IOException;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v0, 0x0

    .line 434
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_0

    .line 446
    :cond_2
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-nez v1, :cond_0

    .line 451
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    .line 455
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/x;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->t()Lcom/squareup/okhttp/x;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;
    .locals 5
    .param p1, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/a/g;->l:Z

    if-eqz v2, :cond_0

    const-string v2, "gzip"

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 582
    .end local p1    # "response":Lcom/squareup/okhttp/x;
    :cond_0
    :goto_0
    return-object p1

    .line 570
    .restart local p1    # "response":Lcom/squareup/okhttp/x;
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 574
    new-instance v0, Lokio/k;

    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/y;->c()Lokio/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lokio/k;-><init>(Lokio/x;)V

    .line 575
    .local v0, "responseBody":Lokio/k;
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/p;->c()Lcom/squareup/okhttp/p$a;

    move-result-object v2

    const-string v3, "Content-Encoding"

    .line 576
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 577
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/p$a;->c(Ljava/lang/String;)Lcom/squareup/okhttp/p$a;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Lcom/squareup/okhttp/p$a;->a()Lcom/squareup/okhttp/p;

    move-result-object v1

    .line 579
    .local v1, "strippedHeaders":Lcom/squareup/okhttp/p;
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v2

    .line 580
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/x$a;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp/internal/a/k;

    .line 581
    invoke-static {v0}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/squareup/okhttp/internal/a/k;-><init>(Lcom/squareup/okhttp/p;Lokio/e;)V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object p1

    goto :goto_0
.end method

.method private p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->g:Lcom/squareup/okhttp/a;

    .line 316
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->g:Lcom/squareup/okhttp/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->q()Lcom/squareup/okhttp/i;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 320
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/i;->d()Lcom/squareup/okhttp/z;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->i:Lcom/squareup/okhttp/z;

    .line 321
    return-void
.end method

.method private q()Lcom/squareup/okhttp/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->r()Lcom/squareup/okhttp/i;

    move-result-object v0

    .line 330
    .local v0, "connection":Lcom/squareup/okhttp/i;
    sget-object v1, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/v;)V

    .line 331
    return-object v0
.end method

.method private r()Lcom/squareup/okhttp/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v3}, Lcom/squareup/okhttp/t;->n()Lcom/squareup/okhttp/j;

    move-result-object v0

    .line 338
    .local v0, "pool":Lcom/squareup/okhttp/j;
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->g:Lcom/squareup/okhttp/a;

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/j;->a(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/i;

    move-result-object v1

    .local v1, "pooled":Lcom/squareup/okhttp/i;
    if-eqz v1, :cond_2

    .line 339
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-virtual {v3}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/internal/c;->c(Lcom/squareup/okhttp/i;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    .end local v1    # "pooled":Lcom/squareup/okhttp/i;
    :cond_0
    :goto_1
    return-object v1

    .line 342
    .restart local v1    # "pooled":Lcom/squareup/okhttp/i;
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/okhttp/i;->e()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/n;->b()Lcom/squareup/okhttp/z;

    move-result-object v2

    .line 345
    .local v2, "route":Lcom/squareup/okhttp/z;
    new-instance v1, Lcom/squareup/okhttp/i;

    .end local v1    # "pooled":Lcom/squareup/okhttp/i;
    invoke-direct {v1, v0, v2}, Lcom/squareup/okhttp/i;-><init>(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/z;)V

    goto :goto_1
.end method

.method private s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    sget-object v1, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;

    move-result-object v0

    .line 468
    .local v0, "responseCache":Lcom/squareup/okhttp/internal/d;
    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/a/c;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/v;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/d;->b(Lcom/squareup/okhttp/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->u:Lcom/squareup/okhttp/internal/a/b;

    goto :goto_0
.end method

.method private t()Lcom/squareup/okhttp/x;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/q;->a()V

    .line 830
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/q;->b()Lcom/squareup/okhttp/x$a;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    .line 831
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 832
    invoke-virtual {v2}, Lcom/squareup/okhttp/i;->k()Lcom/squareup/okhttp/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/x$a;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/internal/a/j;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/g;->c:J

    .line 833
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/internal/a/j;->c:Ljava/lang/String;

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v1

    .line 835
    invoke-virtual {v1}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v0

    .line 837
    .local v0, "networkResponse":Lcom/squareup/okhttp/x;
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/a/g;->t:Z

    if-nez v1, :cond_0

    .line 838
    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    .line 839
    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v1

    .line 840
    invoke-virtual {v1}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v0

    .line 843
    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/Protocol;)V

    .line 844
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/IOException;)Lcom/squareup/okhttp/internal/a/g;
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/io/IOException;Lokio/w;)Lcom/squareup/okhttp/internal/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/IOException;Lokio/w;)Lcom/squareup/okhttp/internal/a/g;
    .locals 11
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestBodyOut"    # Lokio/w;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/n;Ljava/io/IOException;)V

    .line 406
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/squareup/okhttp/internal/a/m;

    if-eqz v0, :cond_5

    :cond_1
    const/4 v10, 0x1

    .line 407
    .local v10, "canRetryRequestBody":Z
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    .line 408
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/n;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a/g;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v10, :cond_6

    .line 411
    :cond_4
    const/4 v0, 0x0

    .line 417
    :goto_1
    return-object v0

    .line 406
    .end local v10    # "canRetryRequestBody":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 414
    .restart local v10    # "canRetryRequestBody":Z
    :cond_6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->m()Lcom/squareup/okhttp/i;

    move-result-object v6

    .line 417
    .local v6, "connection":Lcom/squareup/okhttp/i;
    new-instance v0, Lcom/squareup/okhttp/internal/a/g;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/a/g;->d:Z

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/g;->s:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/a/g;->t:Z

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->h:Lcom/squareup/okhttp/internal/a/n;

    move-object v8, p2

    check-cast v8, Lcom/squareup/okhttp/internal/a/m;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/a/g;-><init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;ZZZLcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/n;Lcom/squareup/okhttp/internal/a/m;Lcom/squareup/okhttp/x;)V

    goto :goto_1
.end method

.method public a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 215
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    if-eqz v8, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    if-eqz v8, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 218
    :cond_2
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-direct {p0, v8}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/v;

    move-result-object v1

    .line 220
    .local v1, "request":Lcom/squareup/okhttp/v;
    sget-object v8, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v8, v9}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;

    move-result-object v6

    .line 221
    .local v6, "responseCache":Lcom/squareup/okhttp/internal/d;
    if-eqz v6, :cond_6

    .line 222
    invoke-interface {v6, v1}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;

    move-result-object v0

    .line 225
    .local v0, "cacheCandidate":Lcom/squareup/okhttp/x;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 226
    .local v4, "now":J
    new-instance v8, Lcom/squareup/okhttp/internal/a/c$a;

    invoke-direct {v8, v4, v5, v1, v0}, Lcom/squareup/okhttp/internal/a/c$a;-><init>(JLcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)V

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/a/c$a;->a()Lcom/squareup/okhttp/internal/a/c;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    .line 227
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/a/c;->a:Lcom/squareup/okhttp/v;

    iput-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    .line 228
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/a/c;->b:Lcom/squareup/okhttp/x;

    iput-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    .line 230
    if-eqz v6, :cond_3

    .line 231
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v6, v8}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/a/c;)V

    .line 234
    :cond_3
    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    if-nez v8, :cond_4

    .line 235
    invoke-virtual {v0}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v8

    invoke-static {v8}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 238
    :cond_4
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    if-eqz v8, :cond_a

    .line 240
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-nez v7, :cond_5

    .line 241
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->p()V

    .line 244
    :cond_5
    sget-object v7, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v7, v8, p0}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    .line 250
    iget-boolean v7, p0, Lcom/squareup/okhttp/internal/a/g;->s:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    if-nez v7, :cond_0

    .line 251
    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/v;)J

    move-result-wide v2

    .line 252
    .local v2, "contentLength":J
    iget-boolean v7, p0, Lcom/squareup/okhttp/internal/a/g;->d:Z

    if-eqz v7, :cond_9

    .line 253
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-lez v7, :cond_7

    .line 254
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "cacheCandidate":Lcom/squareup/okhttp/x;
    .end local v2    # "contentLength":J
    .end local v4    # "now":J
    :cond_6
    move-object v0, v7

    .line 222
    goto :goto_1

    .line 258
    .restart local v0    # "cacheCandidate":Lcom/squareup/okhttp/x;
    .restart local v2    # "contentLength":J
    .restart local v4    # "now":J
    :cond_7
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_8

    .line 260
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v7, v8}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;)V

    .line 261
    new-instance v7, Lcom/squareup/okhttp/internal/a/m;

    long-to-int v8, v2

    invoke-direct {v7, v8}, Lcom/squareup/okhttp/internal/a/m;-><init>(I)V

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    goto/16 :goto_0

    .line 266
    :cond_8
    new-instance v7, Lcom/squareup/okhttp/internal/a/m;

    invoke-direct {v7}, Lcom/squareup/okhttp/internal/a/m;-><init>()V

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    goto/16 :goto_0

    .line 269
    :cond_9
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v7, v8}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;)V

    .line 270
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v7, v8, v2, v3}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;J)Lokio/w;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    goto/16 :goto_0

    .line 276
    .end local v2    # "contentLength":J
    :cond_a
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v8, :cond_b

    .line 277
    sget-object v8, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v9}, Lcom/squareup/okhttp/t;->n()Lcom/squareup/okhttp/j;

    move-result-object v9

    iget-object v10, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v8, v9, v10}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;)V

    .line 278
    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 281
    :cond_b
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    if-eqz v7, :cond_c

    .line 283
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    invoke-virtual {v7}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    .line 284
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    .line 285
    invoke-static {v8}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    .line 286
    invoke-static {v8}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    .line 287
    invoke-virtual {v7}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    .line 300
    :goto_2
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-direct {p0, v7}, Lcom/squareup/okhttp/internal/a/g;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    goto/16 :goto_0

    .line 290
    :cond_c
    new-instance v7, Lcom/squareup/okhttp/x$a;

    invoke-direct {v7}, Lcom/squareup/okhttp/x$a;-><init>()V

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    .line 291
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    .line 292
    invoke-static {v8}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    .line 293
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    const/16 v8, 0x1f8

    .line 294
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(I)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    const-string v8, "Unsatisfiable Request (only-if-cached)"

    .line 295
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    sget-object v8, Lcom/squareup/okhttp/internal/a/g;->e:Lcom/squareup/okhttp/y;

    .line 296
    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/y;)Lcom/squareup/okhttp/x$a;

    move-result-object v7

    .line 297
    invoke-virtual {v7}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v7

    iput-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    goto :goto_2
.end method

.method public a(Lcom/squareup/okhttp/p;)V
    .locals 3
    .param p1, "headers"    # Lcom/squareup/okhttp/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v1}, Lcom/squareup/okhttp/t;->f()Ljava/net/CookieHandler;

    move-result-object v0

    .line 966
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    .line 967
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->b()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/p;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 969
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a/g;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 354
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/a/g;->c:J

    .line 355
    return-void
.end method

.method public b(Ljava/net/URL;)Z
    .locals 3
    .param p1, "followUp"    # Ljava/net/URL;

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v0

    .line 1047
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1049
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Lokio/w;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->v:Lcom/squareup/okhttp/internal/a/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    return-object v0
.end method

.method public e()Lokio/d;
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    .line 369
    .local v1, "result":Lokio/d;
    if-eqz v1, :cond_0

    .line 372
    .end local v1    # "result":Lokio/d;
    :goto_0
    return-object v1

    .line 370
    .restart local v1    # "result":Lokio/d;
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->d()Lokio/w;

    move-result-object v0

    .line 371
    .local v0, "requestBody":Lokio/w;
    if-eqz v0, :cond_1

    .line 372
    invoke-static {v0}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method public h()Lcom/squareup/okhttp/x;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    return-object v0
.end method

.method public i()Lcom/squareup/okhttp/i;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    return-object v0
.end method

.method public j()Lcom/squareup/okhttp/z;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->i:Lcom/squareup/okhttp/z;

    return-object v0
.end method

.method public k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/q;->c()V

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 496
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/internal/a/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public m()Lcom/squareup/okhttp/i;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    if-eqz v2, :cond_2

    .line 520
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 526
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    if-nez v2, :cond_3

    .line 527
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v2}, Lcom/squareup/okhttp/i;->e()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/Socket;)V

    .line 528
    :cond_1
    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    move-object v0, v1

    .line 549
    :goto_1
    return-object v0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-virtual {v2}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 536
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/q;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 537
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v2}, Lcom/squareup/okhttp/i;->e()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/net/Socket;)V

    .line 538
    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    move-object v0, v1

    .line 539
    goto :goto_1

    .line 543
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/i;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 544
    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 547
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    .line 548
    .local v0, "result":Lcom/squareup/okhttp/i;
    iput-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->f:Lcom/squareup/okhttp/i;

    goto :goto_1
.end method

.method public n()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 667
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    if-eqz v4, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    if-nez v4, :cond_2

    .line 671
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "call sendRequest() first!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 673
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    if-eqz v4, :cond_0

    .line 679
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/g;->t:Z

    if-eqz v4, :cond_3

    .line 680
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;)V

    .line 681
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->t()Lcom/squareup/okhttp/x;

    move-result-object v2

    .line 720
    .local v2, "networkResponse":Lcom/squareup/okhttp/x;
    :goto_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/p;)V

    .line 723
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    if-eqz v4, :cond_b

    .line 724
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    invoke-static {v4, v2}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 725
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    invoke-virtual {v4}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    .line 726
    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    .line 727
    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    .line 728
    invoke-virtual {v5}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v5

    invoke-virtual {v2}, Lcom/squareup/okhttp/x;->g()Lcom/squareup/okhttp/p;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/p;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    .line 729
    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    .line 730
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    .line 731
    invoke-virtual {v4}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    .line 732
    invoke-virtual {v2}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/y;->close()V

    .line 733
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->k()V

    .line 737
    sget-object v4, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/c;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;

    move-result-object v3

    .line 738
    .local v3, "responseCache":Lcom/squareup/okhttp/internal/d;
    invoke-interface {v3}, Lcom/squareup/okhttp/internal/d;->a()V

    .line 739
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V

    .line 740
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/a/g;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    goto/16 :goto_0

    .line 683
    .end local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    .end local v3    # "responseCache":Lcom/squareup/okhttp/internal/d;
    :cond_3
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/a/g;->s:Z

    if-nez v4, :cond_4

    .line 684
    new-instance v4, Lcom/squareup/okhttp/internal/a/g$a;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-direct {v4, p0, v5, v6}, Lcom/squareup/okhttp/internal/a/g$a;-><init>(Lcom/squareup/okhttp/internal/a/g;ILcom/squareup/okhttp/v;)V

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/a/g$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;

    move-result-object v2

    .restart local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    goto/16 :goto_1

    .line 688
    .end local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    :cond_4
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    invoke-interface {v4}, Lokio/d;->b()Lokio/c;

    move-result-object v4

    invoke-virtual {v4}, Lokio/c;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 689
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    invoke-interface {v4}, Lokio/d;->e()Lokio/d;

    .line 693
    :cond_5
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a/g;->c:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 694
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/v;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    instance-of v4, v4, Lcom/squareup/okhttp/internal/a/m;

    if-eqz v4, :cond_6

    .line 696
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    check-cast v4, Lcom/squareup/okhttp/internal/a/m;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a/m;->a()J

    move-result-wide v0

    .line 697
    .local v0, "contentLength":J
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-virtual {v4}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v4

    const-string v5, "Content-Length"

    .line 698
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    move-result-object v4

    .line 699
    invoke-virtual {v4}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    .line 701
    .end local v0    # "contentLength":J
    :cond_6
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->n:Lcom/squareup/okhttp/v;

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/v;)V

    .line 705
    :cond_7
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    if-eqz v4, :cond_8

    .line 706
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    if-eqz v4, :cond_9

    .line 708
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->r:Lokio/d;

    invoke-interface {v4}, Lokio/d;->close()V

    .line 712
    :goto_2
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    instance-of v4, v4, Lcom/squareup/okhttp/internal/a/m;

    if-eqz v4, :cond_8

    .line 713
    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->k:Lcom/squareup/okhttp/internal/a/q;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    check-cast v4, Lcom/squareup/okhttp/internal/a/m;

    invoke-interface {v5, v4}, Lcom/squareup/okhttp/internal/a/q;->a(Lcom/squareup/okhttp/internal/a/m;)V

    .line 717
    :cond_8
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->t()Lcom/squareup/okhttp/x;

    move-result-object v2

    .restart local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    goto/16 :goto_1

    .line 710
    .end local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    :cond_9
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->q:Lokio/w;

    invoke-interface {v4}, Lokio/w;->close()V

    goto :goto_2

    .line 743
    .restart local v2    # "networkResponse":Lcom/squareup/okhttp/x;
    :cond_a
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    invoke-virtual {v4}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 747
    :cond_b
    invoke-virtual {v2}, Lcom/squareup/okhttp/x;->i()Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    .line 748
    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->j:Lcom/squareup/okhttp/x;

    .line 749
    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->o:Lcom/squareup/okhttp/x;

    .line 750
    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    .line 751
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a/g;->b(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/x$a;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x$a;

    move-result-object v4

    .line 752
    invoke-virtual {v4}, Lcom/squareup/okhttp/x$a;->a()Lcom/squareup/okhttp/x;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    .line 754
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/x;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a/g;->s()V

    .line 756
    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->u:Lcom/squareup/okhttp/internal/a/b;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-direct {p0, v4, v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/b;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/a/g;->c(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/x;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    goto/16 :goto_0
.end method

.method public o()Lcom/squareup/okhttp/v;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 977
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    if-nez v7, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->j()Lcom/squareup/okhttp/z;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 979
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a/g;->j()Lcom/squareup/okhttp/z;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/z;->b()Ljava/net/Proxy;

    move-result-object v4

    .line 981
    .local v4, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-virtual {v7}, Lcom/squareup/okhttp/x;->c()I

    move-result v2

    .line 983
    .local v2, "responseCode":I
    sparse-switch v2, :sswitch_data_0

    .line 1037
    :cond_1
    :goto_1
    return-object v6

    .line 979
    .end local v2    # "responseCode":I
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    :cond_2
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    .line 980
    invoke-virtual {v7}, Lcom/squareup/okhttp/t;->d()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_0

    .line 985
    .restart local v2    # "responseCode":I
    .restart local v4    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_3

    .line 986
    new-instance v6, Ljava/net/ProtocolException;

    const-string v7, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 990
    :cond_3
    :sswitch_1
    iget-object v6, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v6}, Lcom/squareup/okhttp/t;->m()Lcom/squareup/okhttp/b;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    invoke-static {v6, v7, v4}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/x;Ljava/net/Proxy;)Lcom/squareup/okhttp/v;

    move-result-object v6

    goto :goto_1

    .line 996
    :sswitch_2
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v7}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v7}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HEAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1005
    :cond_4
    :sswitch_3
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v7}, Lcom/squareup/okhttp/t;->p()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1007
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->p:Lcom/squareup/okhttp/x;

    const-string v8, "Location"

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1009
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v7}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1012
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1015
    :cond_5
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v8}, Lcom/squareup/okhttp/v;->a()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1016
    .local v3, "sameProtocol":Z
    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/t;

    invoke-virtual {v7}, Lcom/squareup/okhttp/t;->o()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1019
    :cond_6
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v7}, Lcom/squareup/okhttp/v;->h()Lcom/squareup/okhttp/v$a;

    move-result-object v1

    .line 1020
    .local v1, "requestBuilder":Lcom/squareup/okhttp/v$a;
    iget-object v7, p0, Lcom/squareup/okhttp/internal/a/g;->m:Lcom/squareup/okhttp/v;

    invoke-virtual {v7}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/squareup/okhttp/internal/a/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1021
    const-string v7, "GET"

    invoke-virtual {v1, v7, v6}, Lcom/squareup/okhttp/v$a;->a(Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/v$a;

    .line 1022
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 1023
    const-string v6, "Content-Length"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 1024
    const-string v6, "Content-Type"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 1030
    :cond_7
    invoke-virtual {p0, v5}, Lcom/squareup/okhttp/internal/a/g;->b(Ljava/net/URL;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1031
    const-string v6, "Authorization"

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/v$a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v$a;

    .line 1034
    :cond_8
    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/v$a;->a(Ljava/net/URL;)Lcom/squareup/okhttp/v$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/v$a;->d()Lcom/squareup/okhttp/v;

    move-result-object v6

    goto/16 :goto_1

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method
