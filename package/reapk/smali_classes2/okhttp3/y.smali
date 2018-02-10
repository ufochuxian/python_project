.class public Lokhttp3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/y$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/p;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
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

.field final g:Ljava/net/ProxySelector;

.field final h:Lokhttp3/n;

.field final i:Lokhttp3/c;

.field final j:Lokhttp3/internal/a/f;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lokhttp3/internal/e/b;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lokhttp3/g;

.field final p:Lokhttp3/b;

.field final q:Lokhttp3/b;

.field final r:Lokhttp3/k;

.field final s:Lokhttp3/q;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v5, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->z:Ljava/util/List;

    .line 121
    new-array v0, v5, [Lokhttp3/l;

    sget-object v1, Lokhttp3/l;->a:Lokhttp3/l;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/l;->b:Lokhttp3/l;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/l;->c:Lokhttp3/l;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/y;->A:Ljava/util/List;

    .line 125
    new-instance v0, Lokhttp3/y$1;

    invoke-direct {v0}, Lokhttp3/y$1;-><init>()V

    sput-object v0, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/y;-><init>(Lokhttp3/y$a;)V

    .line 204
    return-void
.end method

.method private constructor <init>(Lokhttp3/y$a;)V
    .locals 5
    .param p1, "builder"    # Lokhttp3/y$a;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iget-object v3, p1, Lokhttp3/y$a;->a:Lokhttp3/p;

    iput-object v3, p0, Lokhttp3/y;->a:Lokhttp3/p;

    .line 208
    iget-object v3, p1, Lokhttp3/y$a;->b:Ljava/net/Proxy;

    iput-object v3, p0, Lokhttp3/y;->b:Ljava/net/Proxy;

    .line 209
    iget-object v3, p1, Lokhttp3/y$a;->c:Ljava/util/List;

    iput-object v3, p0, Lokhttp3/y;->c:Ljava/util/List;

    .line 210
    iget-object v3, p1, Lokhttp3/y$a;->d:Ljava/util/List;

    iput-object v3, p0, Lokhttp3/y;->d:Ljava/util/List;

    .line 211
    iget-object v3, p1, Lokhttp3/y$a;->e:Ljava/util/List;

    invoke-static {v3}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/y;->e:Ljava/util/List;

    .line 212
    iget-object v3, p1, Lokhttp3/y$a;->f:Ljava/util/List;

    invoke-static {v3}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/y;->f:Ljava/util/List;

    .line 213
    iget-object v3, p1, Lokhttp3/y$a;->g:Ljava/net/ProxySelector;

    iput-object v3, p0, Lokhttp3/y;->g:Ljava/net/ProxySelector;

    .line 214
    iget-object v3, p1, Lokhttp3/y$a;->h:Lokhttp3/n;

    iput-object v3, p0, Lokhttp3/y;->h:Lokhttp3/n;

    .line 215
    iget-object v3, p1, Lokhttp3/y$a;->i:Lokhttp3/c;

    iput-object v3, p0, Lokhttp3/y;->i:Lokhttp3/c;

    .line 216
    iget-object v3, p1, Lokhttp3/y$a;->j:Lokhttp3/internal/a/f;

    iput-object v3, p0, Lokhttp3/y;->j:Lokhttp3/internal/a/f;

    .line 217
    iget-object v3, p1, Lokhttp3/y$a;->k:Ljavax/net/SocketFactory;

    iput-object v3, p0, Lokhttp3/y;->k:Ljavax/net/SocketFactory;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "isTLS":Z
    iget-object v3, p0, Lokhttp3/y;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/l;

    .line 221
    .local v1, "spec":Lokhttp3/l;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lokhttp3/l;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_1
    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 224
    .end local v1    # "spec":Lokhttp3/l;
    :cond_2
    iget-object v3, p1, Lokhttp3/y$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_3

    if-nez v0, :cond_4

    .line 225
    :cond_3
    iget-object v3, p1, Lokhttp3/y$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v3, p0, Lokhttp3/y;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 226
    iget-object v3, p1, Lokhttp3/y$a;->m:Lokhttp3/internal/e/b;

    iput-object v3, p0, Lokhttp3/y;->m:Lokhttp3/internal/e/b;

    .line 233
    :goto_2
    iget-object v3, p1, Lokhttp3/y$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, p0, Lokhttp3/y;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 234
    iget-object v3, p1, Lokhttp3/y$a;->o:Lokhttp3/g;

    iget-object v4, p0, Lokhttp3/y;->m:Lokhttp3/internal/e/b;

    invoke-virtual {v3, v4}, Lokhttp3/g;->a(Lokhttp3/internal/e/b;)Lokhttp3/g;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/y;->o:Lokhttp3/g;

    .line 236
    iget-object v3, p1, Lokhttp3/y$a;->p:Lokhttp3/b;

    iput-object v3, p0, Lokhttp3/y;->p:Lokhttp3/b;

    .line 237
    iget-object v3, p1, Lokhttp3/y$a;->q:Lokhttp3/b;

    iput-object v3, p0, Lokhttp3/y;->q:Lokhttp3/b;

    .line 238
    iget-object v3, p1, Lokhttp3/y$a;->r:Lokhttp3/k;

    iput-object v3, p0, Lokhttp3/y;->r:Lokhttp3/k;

    .line 239
    iget-object v3, p1, Lokhttp3/y$a;->s:Lokhttp3/q;

    iput-object v3, p0, Lokhttp3/y;->s:Lokhttp3/q;

    .line 240
    iget-boolean v3, p1, Lokhttp3/y$a;->t:Z

    iput-boolean v3, p0, Lokhttp3/y;->t:Z

    .line 241
    iget-boolean v3, p1, Lokhttp3/y$a;->u:Z

    iput-boolean v3, p0, Lokhttp3/y;->u:Z

    .line 242
    iget-boolean v3, p1, Lokhttp3/y$a;->v:Z

    iput-boolean v3, p0, Lokhttp3/y;->v:Z

    .line 243
    iget v3, p1, Lokhttp3/y$a;->w:I

    iput v3, p0, Lokhttp3/y;->w:I

    .line 244
    iget v3, p1, Lokhttp3/y$a;->x:I

    iput v3, p0, Lokhttp3/y;->x:I

    .line 245
    iget v3, p1, Lokhttp3/y$a;->y:I

    iput v3, p0, Lokhttp3/y;->y:I

    .line 246
    return-void

    .line 228
    :cond_4
    invoke-direct {p0}, Lokhttp3/y;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 229
    .local v2, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct {p0, v2}, Lokhttp3/y;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/y;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    invoke-static {v2}, Lokhttp3/internal/e/b;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/y;->m:Lokhttp3/internal/e/b;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lokhttp3/y$a;Lokhttp3/y$1;)V
    .locals 0
    .param p1, "x0"    # Lokhttp3/y$a;
    .param p2, "x1"    # Lokhttp3/y$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lokhttp3/y;-><init>(Lokhttp3/y$a;)V

    return-void
.end method

.method static synthetic A()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/y;->A:Ljava/util/List;

    return-object v0
.end method

.method private B()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 252
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 253
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 254
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 255
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected default trust managers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 256
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 258
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 266
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 267
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 268
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 269
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static synthetic z()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/y;->z:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lokhttp3/y;->w:I

    return v0
.end method

.method public a(Lokhttp3/aa;)Lokhttp3/e;
    .locals 1
    .param p1, "request"    # Lokhttp3/aa;

    .prologue
    .line 387
    new-instance v0, Lokhttp3/z;

    invoke-direct {v0, p0, p1}, Lokhttp3/z;-><init>(Lokhttp3/y;Lokhttp3/aa;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lokhttp3/y;->x:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lokhttp3/y;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/y;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lokhttp3/y;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lokhttp3/n;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/y;->h:Lokhttp3/n;

    return-object v0
.end method

.method public g()Lokhttp3/c;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lokhttp3/y;->i:Lokhttp3/c;

    return-object v0
.end method

.method h()Lokhttp3/internal/a/f;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/y;->i:Lokhttp3/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/y;->i:Lokhttp3/c;

    iget-object v0, v0, Lokhttp3/c;->a:Lokhttp3/internal/a/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/y;->j:Lokhttp3/internal/a/f;

    goto :goto_0
.end method

.method public i()Lokhttp3/q;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/y;->s:Lokhttp3/q;

    return-object v0
.end method

.method public j()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/y;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lokhttp3/y;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public l()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/y;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public m()Lokhttp3/g;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lokhttp3/y;->o:Lokhttp3/g;

    return-object v0
.end method

.method public n()Lokhttp3/b;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lokhttp3/y;->q:Lokhttp3/b;

    return-object v0
.end method

.method public o()Lokhttp3/b;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lokhttp3/y;->p:Lokhttp3/b;

    return-object v0
.end method

.method public p()Lokhttp3/k;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lokhttp3/y;->r:Lokhttp3/k;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lokhttp3/y;->t:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lokhttp3/y;->u:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lokhttp3/y;->v:Z

    return v0
.end method

.method public t()Lokhttp3/p;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/y;->a:Lokhttp3/p;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/y;->c:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lokhttp3/y;->d:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
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
    .line 371
    iget-object v0, p0, Lokhttp3/y;->e:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/util/List;
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
    .line 380
    iget-object v0, p0, Lokhttp3/y;->f:Ljava/util/List;

    return-object v0
.end method

.method public y()Lokhttp3/y$a;
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0, p0}, Lokhttp3/y$a;-><init>(Lokhttp3/y;)V

    return-object v0
.end method
