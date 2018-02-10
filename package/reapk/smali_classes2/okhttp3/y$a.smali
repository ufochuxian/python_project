.class public final Lokhttp3/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lokhttp3/p;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/n;

.field i:Lokhttp3/c;

.field j:Lokhttp3/internal/a/f;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lokhttp3/internal/e/b;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/g;

.field p:Lokhttp3/b;

.field q:Lokhttp3/b;

.field r:Lokhttp3/k;

.field s:Lokhttp3/q;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lokhttp3/p;

    invoke-direct {v0}, Lokhttp3/p;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->a:Lokhttp3/p;

    .line 423
    invoke-static {}, Lokhttp3/y;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lokhttp3/y;->A()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lokhttp3/n;->a:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/y$a;->h:Lokhttp3/n;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Lokhttp3/internal/e/d;->a:Lokhttp3/internal/e/d;

    iput-object v0, p0, Lokhttp3/y$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lokhttp3/g;->a:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/y$a;->o:Lokhttp3/g;

    .line 430
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/y$a;->p:Lokhttp3/b;

    .line 431
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/y$a;->q:Lokhttp3/b;

    .line 432
    new-instance v0, Lokhttp3/k;

    invoke-direct {v0}, Lokhttp3/k;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->r:Lokhttp3/k;

    .line 433
    sget-object v0, Lokhttp3/q;->a:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/y$a;->s:Lokhttp3/q;

    .line 434
    iput-boolean v1, p0, Lokhttp3/y$a;->t:Z

    .line 435
    iput-boolean v1, p0, Lokhttp3/y$a;->u:Z

    .line 436
    iput-boolean v1, p0, Lokhttp3/y$a;->v:Z

    .line 437
    iput v2, p0, Lokhttp3/y$a;->w:I

    .line 438
    iput v2, p0, Lokhttp3/y$a;->x:I

    .line 439
    iput v2, p0, Lokhttp3/y$a;->y:I

    .line 440
    return-void
.end method

.method constructor <init>(Lokhttp3/y;)V
    .locals 2
    .param p1, "okHttpClient"    # Lokhttp3/y;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/y$a;->f:Ljava/util/List;

    .line 443
    iget-object v0, p1, Lokhttp3/y;->a:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/y$a;->a:Lokhttp3/p;

    .line 444
    iget-object v0, p1, Lokhttp3/y;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/y$a;->b:Ljava/net/Proxy;

    .line 445
    iget-object v0, p1, Lokhttp3/y;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/y$a;->c:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lokhttp3/y;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/y$a;->d:Ljava/util/List;

    .line 447
    iget-object v0, p0, Lokhttp3/y$a;->e:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/y;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v0, p0, Lokhttp3/y$a;->f:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/y;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p1, Lokhttp3/y;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/y$a;->g:Ljava/net/ProxySelector;

    .line 450
    iget-object v0, p1, Lokhttp3/y;->h:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/y$a;->h:Lokhttp3/n;

    .line 451
    iget-object v0, p1, Lokhttp3/y;->j:Lokhttp3/internal/a/f;

    iput-object v0, p0, Lokhttp3/y$a;->j:Lokhttp3/internal/a/f;

    .line 452
    iget-object v0, p1, Lokhttp3/y;->i:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/y$a;->i:Lokhttp3/c;

    .line 453
    iget-object v0, p1, Lokhttp3/y;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/y$a;->k:Ljavax/net/SocketFactory;

    .line 454
    iget-object v0, p1, Lokhttp3/y;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/y$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 455
    iget-object v0, p1, Lokhttp3/y;->m:Lokhttp3/internal/e/b;

    iput-object v0, p0, Lokhttp3/y$a;->m:Lokhttp3/internal/e/b;

    .line 456
    iget-object v0, p1, Lokhttp3/y;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/y$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 457
    iget-object v0, p1, Lokhttp3/y;->o:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/y$a;->o:Lokhttp3/g;

    .line 458
    iget-object v0, p1, Lokhttp3/y;->p:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/y$a;->p:Lokhttp3/b;

    .line 459
    iget-object v0, p1, Lokhttp3/y;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/y$a;->q:Lokhttp3/b;

    .line 460
    iget-object v0, p1, Lokhttp3/y;->r:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/y$a;->r:Lokhttp3/k;

    .line 461
    iget-object v0, p1, Lokhttp3/y;->s:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/y$a;->s:Lokhttp3/q;

    .line 462
    iget-boolean v0, p1, Lokhttp3/y;->t:Z

    iput-boolean v0, p0, Lokhttp3/y$a;->t:Z

    .line 463
    iget-boolean v0, p1, Lokhttp3/y;->u:Z

    iput-boolean v0, p0, Lokhttp3/y$a;->u:Z

    .line 464
    iget-boolean v0, p1, Lokhttp3/y;->v:Z

    iput-boolean v0, p0, Lokhttp3/y$a;->v:Z

    .line 465
    iget v0, p1, Lokhttp3/y;->w:I

    iput v0, p0, Lokhttp3/y$a;->w:I

    .line 466
    iget v0, p1, Lokhttp3/y;->x:I

    iput v0, p0, Lokhttp3/y$a;->x:I

    .line 467
    iget v0, p1, Lokhttp3/y;->y:I

    iput v0, p0, Lokhttp3/y$a;->y:I

    .line 468
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lokhttp3/y$a;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 476
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 479
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lokhttp3/y$a;->w:I

    .line 482
    return-object p0
.end method

.method public a(Ljava/net/Proxy;)Lokhttp3/y$a;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 519
    iput-object p1, p0, Lokhttp3/y$a;->b:Ljava/net/Proxy;

    .line 520
    return-object p0
.end method

.method public a(Ljava/net/ProxySelector;)Lokhttp3/y$a;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 532
    iput-object p1, p0, Lokhttp3/y$a;->g:Ljava/net/ProxySelector;

    .line 533
    return-object p0
.end method

.method public a(Ljava/util/List;)Lokhttp3/y$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/y$a;"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    invoke-static {p1}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 783
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
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

    .line 786
    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
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

    .line 789
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2
    invoke-static {p1}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->c:Ljava/util/List;

    .line 793
    return-object p0
.end method

.method public a(Ljavax/net/SocketFactory;)Lokhttp3/y$a;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 580
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->k:Ljavax/net/SocketFactory;

    .line 582
    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/y$a;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 652
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 654
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/y$a;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 595
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sslSocketFactory == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_0
    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/internal/d/e;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 597
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_1

    .line 598
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :cond_1
    iput-object p1, p0, Lokhttp3/y$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 602
    invoke-static {v0}, Lokhttp3/internal/e/b;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/y$a;->m:Lokhttp3/internal/e/b;

    .line 603
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/y$a;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 638
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    iput-object p1, p0, Lokhttp3/y$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 641
    invoke-static {p2}, Lokhttp3/internal/e/b;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->m:Lokhttp3/internal/e/b;

    .line 642
    return-object p0
.end method

.method public a(Lokhttp3/b;)Lokhttp3/y$a;
    .locals 2
    .param p1, "authenticator"    # Lokhttp3/b;

    .prologue
    .line 675
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->q:Lokhttp3/b;

    .line 677
    return-object p0
.end method

.method public a(Lokhttp3/c;)Lokhttp3/y$a;
    .locals 1
    .param p1, "cache"    # Lokhttp3/c;

    .prologue
    .line 555
    iput-object p1, p0, Lokhttp3/y$a;->i:Lokhttp3/c;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/y$a;->j:Lokhttp3/internal/a/f;

    .line 557
    return-object p0
.end method

.method public a(Lokhttp3/g;)Lokhttp3/y$a;
    .locals 2
    .param p1, "certificatePinner"    # Lokhttp3/g;

    .prologue
    .line 663
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->o:Lokhttp3/g;

    .line 665
    return-object p0
.end method

.method public a(Lokhttp3/k;)Lokhttp3/y$a;
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/k;

    .prologue
    .line 698
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->r:Lokhttp3/k;

    .line 700
    return-object p0
.end method

.method public a(Lokhttp3/n;)Lokhttp3/y$a;
    .locals 2
    .param p1, "cookieJar"    # Lokhttp3/n;

    .prologue
    .line 543
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->h:Lokhttp3/n;

    .line 545
    return-object p0
.end method

.method public a(Lokhttp3/p;)Lokhttp3/y$a;
    .locals 2
    .param p1, "dispatcher"    # Lokhttp3/p;

    .prologue
    .line 747
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->a:Lokhttp3/p;

    .line 749
    return-object p0
.end method

.method public a(Lokhttp3/q;)Lokhttp3/y$a;
    .locals 2
    .param p1, "dns"    # Lokhttp3/q;

    .prologue
    .line 566
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->s:Lokhttp3/q;

    .line 568
    return-object p0
.end method

.method public a(Lokhttp3/v;)Lokhttp3/y$a;
    .locals 1
    .param p1, "interceptor"    # Lokhttp3/v;

    .prologue
    .line 811
    iget-object v0, p0, Lokhttp3/y$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    return-object p0
.end method

.method public a(Z)Lokhttp3/y$a;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lokhttp3/y$a;->t:Z

    .line 711
    return-object p0
.end method

.method a(Lokhttp3/internal/a/f;)V
    .locals 1
    .param p1, "internalCache"    # Lokhttp3/internal/a/f;

    .prologue
    .line 550
    iput-object p1, p0, Lokhttp3/y$a;->j:Lokhttp3/internal/a/f;

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/y$a;->i:Lokhttp3/c;

    .line 552
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lokhttp3/y$a;->f:Ljava/util/List;

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 490
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 493
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lokhttp3/y$a;->x:I

    .line 496
    return-object p0
.end method

.method public b(Ljava/util/List;)Lokhttp3/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;)",
            "Lokhttp3/y$a;"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/l;>;"
    invoke-static {p1}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y$a;->d:Ljava/util/List;

    .line 798
    return-object p0
.end method

.method public b(Lokhttp3/b;)Lokhttp3/y$a;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lokhttp3/b;

    .prologue
    .line 687
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iput-object p1, p0, Lokhttp3/y$a;->p:Lokhttp3/b;

    .line 689
    return-object p0
.end method

.method public b(Lokhttp3/v;)Lokhttp3/y$a;
    .locals 1
    .param p1, "interceptor"    # Lokhttp3/v;

    .prologue
    .line 825
    iget-object v0, p0, Lokhttp3/y$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method

.method public b(Z)Lokhttp3/y$a;
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 716
    iput-boolean p1, p0, Lokhttp3/y$a;->u:Z

    .line 717
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/y$a;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 504
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 507
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lokhttp3/y$a;->y:I

    .line 510
    return-object p0
.end method

.method public c(Z)Lokhttp3/y$a;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lokhttp3/y$a;->v:Z

    .line 740
    return-object p0
.end method

.method public c()Lokhttp3/y;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lokhttp3/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/y;-><init>(Lokhttp3/y$a;Lokhttp3/y$1;)V

    return-object v0
.end method
