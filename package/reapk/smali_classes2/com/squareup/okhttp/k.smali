.class public final Lcom/squareup/okhttp/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/squareup/okhttp/k;

.field public static final b:Lcom/squareup/okhttp/k;

.field public static final c:Lcom/squareup/okhttp/k;


# instance fields
.field final d:Z

.field final e:Z

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    new-instance v0, Lcom/squareup/okhttp/k$a;

    invoke-direct {v0, v4}, Lcom/squareup/okhttp/k$a;-><init>(Z)V

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v6

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v3, v1, v2

    .line 33
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/k$a;->a([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/k$a;

    move-result-object v0

    new-array v1, v7, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_1:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v6

    .line 56
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/k$a;->a([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/k$a;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/k$a;->a(Z)Lcom/squareup/okhttp/k$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/squareup/okhttp/k$a;->a()Lcom/squareup/okhttp/k;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/k;->a:Lcom/squareup/okhttp/k;

    .line 61
    new-instance v0, Lcom/squareup/okhttp/k$a;

    sget-object v1, Lcom/squareup/okhttp/k;->a:Lcom/squareup/okhttp/k;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/k$a;-><init>(Lcom/squareup/okhttp/k;)V

    new-array v1, v4, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 62
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/k$a;->a([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/k$a;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/k$a;->a(Z)Lcom/squareup/okhttp/k$a;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/squareup/okhttp/k$a;->a()Lcom/squareup/okhttp/k;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/k;->b:Lcom/squareup/okhttp/k;

    .line 67
    new-instance v0, Lcom/squareup/okhttp/k$a;

    invoke-direct {v0, v5}, Lcom/squareup/okhttp/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/k$a;->a()Lcom/squareup/okhttp/k;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/k;->c:Lcom/squareup/okhttp/k;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/k$a;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/k$a;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/squareup/okhttp/k$a;->a(Lcom/squareup/okhttp/k$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/k;->d:Z

    .line 84
    invoke-static {p1}, Lcom/squareup/okhttp/k$a;->b(Lcom/squareup/okhttp/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/squareup/okhttp/k$a;->c(Lcom/squareup/okhttp/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/squareup/okhttp/k$a;->d(Lcom/squareup/okhttp/k$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/k;->e:Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/k$a;Lcom/squareup/okhttp/k$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/k$a;
    .param p2, "x1"    # Lcom/squareup/okhttp/k$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/k;-><init>(Lcom/squareup/okhttp/k$a;)V

    return-void
.end method

.method private a(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/k;
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 164
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "cipherSuitesToSelectFrom":[Ljava/lang/String;
    const-class v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    .line 166
    invoke-static {v4, v5, v1}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cipherSuitesToEnable":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 169
    .end local v1    # "cipherSuitesToSelectFrom":[Ljava/lang/String;
    .restart local v0    # "cipherSuitesToEnable":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "protocolsToSelectFrom":[Ljava/lang/String;
    const-class v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 171
    .local v3, "tlsVersionsToEnable":[Ljava/lang/String;
    new-instance v4, Lcom/squareup/okhttp/k$a;

    invoke-direct {v4, p0}, Lcom/squareup/okhttp/k$a;-><init>(Lcom/squareup/okhttp/k;)V

    .line 172
    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/k$a;->a([Ljava/lang/String;)Lcom/squareup/okhttp/k$a;

    move-result-object v4

    .line 173
    invoke-virtual {v4, v3}, Lcom/squareup/okhttp/k$a;->b([Ljava/lang/String;)Lcom/squareup/okhttp/k$a;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lcom/squareup/okhttp/k$a;->a()Lcom/squareup/okhttp/k;

    move-result-object v4

    return-object v4
.end method

.method static synthetic a(Lcom/squareup/okhttp/k;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/k;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/k;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/k;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/z;)V
    .locals 10
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "route"    # Lcom/squareup/okhttp/z;

    .prologue
    const/4 v9, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/k;->a(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/k;

    move-result-object v6

    .line 124
    .local v6, "specToApply":Lcom/squareup/okhttp/k;
    iget-object v7, v6, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 126
    iget-object v0, v6, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    .line 127
    .local v0, "cipherSuitesToEnable":[Ljava/lang/String;
    iget-boolean v7, p2, Lcom/squareup/okhttp/z;->e:Z

    if-eqz v7, :cond_0

    .line 130
    const-string v1, "TLS_FALLBACK_SCSV"

    .line 132
    .local v1, "fallbackScsv":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "TLS_FALLBACK_SCSV"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 134
    .local v5, "socketSupportsFallbackScsv":Z
    if-eqz v5, :cond_0

    .line 136
    if-eqz v0, :cond_3

    move-object v3, v0

    .line 139
    .local v3, "oldEnabledCipherSuites":[Ljava/lang/String;
    :goto_0
    array-length v7, v3

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    .line 140
    .local v2, "newEnabledCipherSuites":[Ljava/lang/String;
    array-length v7, v3

    invoke-static {v3, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    const-string v8, "TLS_FALLBACK_SCSV"

    aput-object v8, v2, v7

    .line 143
    move-object v0, v2

    .line 147
    .end local v1    # "fallbackScsv":Ljava/lang/String;
    .end local v2    # "newEnabledCipherSuites":[Ljava/lang/String;
    .end local v3    # "oldEnabledCipherSuites":[Ljava/lang/String;
    .end local v5    # "socketSupportsFallbackScsv":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v4

    .line 152
    .local v4, "platform":Lcom/squareup/okhttp/internal/h;
    iget-boolean v7, v6, Lcom/squareup/okhttp/k;->e:Z

    if-eqz v7, :cond_2

    .line 153
    iget-object v7, p2, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v7, v7, Lcom/squareup/okhttp/a;->b:Ljava/lang/String;

    iget-object v8, p2, Lcom/squareup/okhttp/z;->a:Lcom/squareup/okhttp/a;

    iget-object v8, v8, Lcom/squareup/okhttp/a;->i:Ljava/util/List;

    invoke-virtual {v4, p1, v7, v8}, Lcom/squareup/okhttp/internal/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 155
    :cond_2
    return-void

    .line 138
    .end local v4    # "platform":Lcom/squareup/okhttp/internal/h;
    .restart local v1    # "fallbackScsv":Ljava/lang/String;
    .restart local v5    # "socketSupportsFallbackScsv":Z
    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/squareup/okhttp/k;->d:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v2, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/CipherSuite;

    .line 102
    .local v1, "result":[Lcom/squareup/okhttp/CipherSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v2, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/TlsVersion;

    .line 110
    .local v1, "result":[Lcom/squareup/okhttp/TlsVersion;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v1}, Lcom/squareup/okhttp/internal/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/squareup/okhttp/k;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    instance-of v3, p1, Lcom/squareup/okhttp/k;

    if-nez v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 179
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/squareup/okhttp/k;

    .line 182
    .local v0, "that":Lcom/squareup/okhttp/k;
    iget-boolean v3, p0, Lcom/squareup/okhttp/k;->d:Z

    iget-boolean v4, v0, Lcom/squareup/okhttp/k;->d:Z

    if-ne v3, v4, :cond_0

    .line 184
    iget-boolean v3, p0, Lcom/squareup/okhttp/k;->d:Z

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    iget-object v4, v0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-boolean v3, p0, Lcom/squareup/okhttp/k;->e:Z

    iget-boolean v4, v0, Lcom/squareup/okhttp/k;->e:Z

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 190
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 194
    const/16 v0, 0x11

    .line 195
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/squareup/okhttp/k;->d:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/squareup/okhttp/k;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/squareup/okhttp/k;->g:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/squareup/okhttp/k;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 200
    :cond_0
    return v0

    .line 198
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    iget-boolean v2, p0, Lcom/squareup/okhttp/k;->d:Z

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/squareup/okhttp/k;->b()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    if-nez v0, :cond_0

    const-string v1, "[use default]"

    .line 207
    .local v1, "cipherSuitesString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/squareup/okhttp/k;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/squareup/okhttp/k;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    .end local v1    # "cipherSuitesString":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 206
    .restart local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 212
    .end local v0    # "cipherSuites":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/CipherSuite;>;"
    :cond_1
    const-string v2, "ConnectionSpec()"

    goto :goto_1
.end method
