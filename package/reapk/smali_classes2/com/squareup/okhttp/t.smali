.class public Lcom/squareup/okhttp/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:I

.field private final d:Lcom/squareup/okhttp/internal/i;

.field private e:Lcom/squareup/okhttp/m;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/ProxySelector;

.field private l:Ljava/net/CookieHandler;

.field private m:Lcom/squareup/okhttp/internal/d;

.field private n:Lcom/squareup/okhttp/c;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:Lcom/squareup/okhttp/g;

.field private s:Lcom/squareup/okhttp/b;

.field private t:Lcom/squareup/okhttp/j;

.field private u:Lcom/squareup/okhttp/internal/f;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/t;->a:Ljava/util/List;

    .line 56
    new-array v0, v5, [Lcom/squareup/okhttp/k;

    sget-object v1, Lcom/squareup/okhttp/k;->a:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/k;->b:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/k;->c:Lcom/squareup/okhttp/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/t;->b:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/squareup/okhttp/t$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/t$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/c;->b:Lcom/squareup/okhttp/internal/c;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->i:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->j:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->v:Z

    .line 167
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->w:Z

    .line 168
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->x:Z

    .line 174
    new-instance v0, Lcom/squareup/okhttp/internal/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->d:Lcom/squareup/okhttp/internal/i;

    .line 175
    new-instance v0, Lcom/squareup/okhttp/m;

    invoke-direct {v0}, Lcom/squareup/okhttp/m;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->e:Lcom/squareup/okhttp/m;

    .line 176
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/t;)V
    .locals 2
    .param p1, "okHttpClient"    # Lcom/squareup/okhttp/t;

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->i:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/t;->j:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->v:Z

    .line 167
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->w:Z

    .line 168
    iput-boolean v1, p0, Lcom/squareup/okhttp/t;->x:Z

    .line 179
    iget-object v0, p1, Lcom/squareup/okhttp/t;->d:Lcom/squareup/okhttp/internal/i;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->d:Lcom/squareup/okhttp/internal/i;

    .line 180
    iget-object v0, p1, Lcom/squareup/okhttp/t;->e:Lcom/squareup/okhttp/m;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->e:Lcom/squareup/okhttp/m;

    .line 181
    iget-object v0, p1, Lcom/squareup/okhttp/t;->f:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->f:Ljava/net/Proxy;

    .line 182
    iget-object v0, p1, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    .line 183
    iget-object v0, p1, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lcom/squareup/okhttp/t;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/t;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/t;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/t;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p1, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    .line 187
    iget-object v0, p1, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    .line 188
    iget-object v0, p1, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    iget-object v0, v0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/internal/d;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/t;->m:Lcom/squareup/okhttp/internal/d;

    .line 190
    iget-object v0, p1, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    .line 191
    iget-object v0, p1, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 192
    iget-object v0, p1, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 193
    iget-object v0, p1, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    .line 194
    iget-object v0, p1, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    .line 195
    iget-object v0, p1, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    .line 196
    iget-object v0, p1, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    iput-object v0, p0, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    .line 197
    iget-boolean v0, p1, Lcom/squareup/okhttp/t;->v:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/t;->v:Z

    .line 198
    iget-boolean v0, p1, Lcom/squareup/okhttp/t;->w:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/t;->w:Z

    .line 199
    iget-boolean v0, p1, Lcom/squareup/okhttp/t;->x:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/t;->x:Z

    .line 200
    iget v0, p1, Lcom/squareup/okhttp/t;->y:I

    iput v0, p0, Lcom/squareup/okhttp/t;->y:I

    .line 201
    iget v0, p1, Lcom/squareup/okhttp/t;->z:I

    iput v0, p0, Lcom/squareup/okhttp/t;->z:I

    .line 202
    iget v0, p1, Lcom/squareup/okhttp/t;->A:I

    iput v0, p0, Lcom/squareup/okhttp/t;->A:I

    .line 203
    return-void

    .line 189
    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/t;->m:Lcom/squareup/okhttp/internal/d;

    goto :goto_0
.end method

.method static synthetic a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/f;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/t;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/f;)Lcom/squareup/okhttp/internal/f;
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/t;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/f;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    return-object p1
.end method

.method private declared-synchronized z()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/squareup/okhttp/t;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 639
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 640
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 641
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Lcom/squareup/okhttp/t;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_2
    sget-object v2, Lcom/squareup/okhttp/t;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/squareup/okhttp/t;->y:I

    return v0
.end method

.method public a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/e;
    .locals 1
    .param p1, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 571
    new-instance v0, Lcom/squareup/okhttp/e;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/e;-><init>(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/v;)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/b;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "authenticator"    # Lcom/squareup/okhttp/b;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    .line 400
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/t;
    .locals 1
    .param p1, "cache"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/t;->m:Lcom/squareup/okhttp/internal/d;

    .line 325
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/g;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "certificatePinner"    # Lcom/squareup/okhttp/g;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    .line 384
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/j;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "connectionPool"    # Lcom/squareup/okhttp/j;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    .line 415
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/m;)Lcom/squareup/okhttp/t;
    .locals 2
    .param p1, "dispatcher"    # Lcom/squareup/okhttp/m;

    .prologue
    .line 482
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/t;->e:Lcom/squareup/okhttp/m;

    .line 484
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/squareup/okhttp/t;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->s()Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->a(Ljava/lang/Object;)V

    .line 580
    return-object p0
.end method

.method public final a(Ljava/net/CookieHandler;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    .line 305
    return-object p0
.end method

.method public final a(Ljava/net/Proxy;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/squareup/okhttp/t;->f:Ljava/net/Proxy;

    .line 271
    return-object p0
.end method

.method public final a(Ljava/net/ProxySelector;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    .line 289
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/squareup/okhttp/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lcom/squareup/okhttp/t;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    invoke-static {p1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 523
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_2
    invoke-static {p1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    .line 533
    return-object p0
.end method

.method public final a(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    .line 340
    return-object p0
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 369
    return-object p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 354
    return-object p0
.end method

.method public final a(Z)Lcom/squareup/okhttp/t;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/squareup/okhttp/t;->v:Z

    .line 431
    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 212
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 215
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/t;->y:I

    .line 218
    return-void
.end method

.method final a(Lcom/squareup/okhttp/internal/d;)V
    .locals 1
    .param p1, "internalCache"    # Lcom/squareup/okhttp/internal/d;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/squareup/okhttp/t;->m:Lcom/squareup/okhttp/internal/d;

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    .line 316
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/squareup/okhttp/t;->z:I

    return v0
.end method

.method public final b(Ljava/util/List;)Lcom/squareup/okhttp/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;)",
            "Lcom/squareup/okhttp/t;"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/k;>;"
    invoke-static {p1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    .line 542
    return-object p0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 232
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 235
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/t;->z:I

    .line 238
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/squareup/okhttp/t;->w:Z

    .line 441
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/squareup/okhttp/t;->A:I

    return v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 250
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 253
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/squareup/okhttp/t;->A:I

    .line 256
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/squareup/okhttp/t;->x:Z

    .line 467
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/squareup/okhttp/t;->y()Lcom/squareup/okhttp/t;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/squareup/okhttp/t;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public final e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final f()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    return-object v0
.end method

.method final g()Lcom/squareup/okhttp/internal/d;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/squareup/okhttp/t;->m:Lcom/squareup/okhttp/internal/d;

    return-object v0
.end method

.method public final h()Lcom/squareup/okhttp/c;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/squareup/okhttp/t;->n:Lcom/squareup/okhttp/c;

    return-object v0
.end method

.method public final i()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final l()Lcom/squareup/okhttp/g;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    return-object v0
.end method

.method public final m()Lcom/squareup/okhttp/b;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public final n()Lcom/squareup/okhttp/j;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/squareup/okhttp/t;->v:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/squareup/okhttp/t;->w:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/squareup/okhttp/t;->x:Z

    return v0
.end method

.method final r()Lcom/squareup/okhttp/internal/i;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/squareup/okhttp/t;->d:Lcom/squareup/okhttp/internal/i;

    return-object v0
.end method

.method public final s()Lcom/squareup/okhttp/m;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/squareup/okhttp/t;->e:Lcom/squareup/okhttp/m;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Lcom/squareup/okhttp/t;->i:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/squareup/okhttp/t;->j:Ljava/util/List;

    return-object v0
.end method

.method final x()Lcom/squareup/okhttp/t;
    .locals 2

    .prologue
    .line 588
    new-instance v0, Lcom/squareup/okhttp/t;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/t;-><init>(Lcom/squareup/okhttp/t;)V

    .line 589
    .local v0, "result":Lcom/squareup/okhttp/t;
    iget-object v1, v0, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 590
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/t;->k:Ljava/net/ProxySelector;

    .line 592
    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 593
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/t;->l:Ljava/net/CookieHandler;

    .line 595
    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 596
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/t;->o:Ljavax/net/SocketFactory;

    .line 598
    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 599
    invoke-direct {p0}, Lcom/squareup/okhttp/t;->z()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/t;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 601
    :cond_3
    iget-object v1, v0, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 602
    sget-object v1, Lcom/squareup/okhttp/internal/d/b;->a:Lcom/squareup/okhttp/internal/d/b;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 604
    :cond_4
    iget-object v1, v0, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    if-nez v1, :cond_5

    .line 605
    sget-object v1, Lcom/squareup/okhttp/g;->a:Lcom/squareup/okhttp/g;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->r:Lcom/squareup/okhttp/g;

    .line 607
    :cond_5
    iget-object v1, v0, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    if-nez v1, :cond_6

    .line 608
    sget-object v1, Lcom/squareup/okhttp/internal/a/a;->a:Lcom/squareup/okhttp/b;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->s:Lcom/squareup/okhttp/b;

    .line 610
    :cond_6
    iget-object v1, v0, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    if-nez v1, :cond_7

    .line 611
    invoke-static {}, Lcom/squareup/okhttp/j;->a()Lcom/squareup/okhttp/j;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/t;->t:Lcom/squareup/okhttp/j;

    .line 613
    :cond_7
    iget-object v1, v0, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    if-nez v1, :cond_8

    .line 614
    sget-object v1, Lcom/squareup/okhttp/t;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->g:Ljava/util/List;

    .line 616
    :cond_8
    iget-object v1, v0, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    if-nez v1, :cond_9

    .line 617
    sget-object v1, Lcom/squareup/okhttp/t;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->h:Ljava/util/List;

    .line 619
    :cond_9
    iget-object v1, v0, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    if-nez v1, :cond_a

    .line 620
    sget-object v1, Lcom/squareup/okhttp/internal/f;->a:Lcom/squareup/okhttp/internal/f;

    iput-object v1, v0, Lcom/squareup/okhttp/t;->u:Lcom/squareup/okhttp/internal/f;

    .line 622
    :cond_a
    return-object v0
.end method

.method public final y()Lcom/squareup/okhttp/t;
    .locals 2

    .prologue
    .line 652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/t;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
