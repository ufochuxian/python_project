.class public Lcom/a/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/i$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/a/a/i$a;
    .locals 1
    .param p1, "certificateBase64"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/a/a/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object p0
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 91
    :try_start_0
    const-string v11, "X.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 92
    .local v3, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v9

    .line 93
    .local v9, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 94
    .local v5, "keyStore":Ljava/security/KeyStore;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 97
    const/4 v6, 0x1

    .line 98
    .local v6, "nextName":I
    iget-object v11, p0, Lcom/a/a/i$a;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v7, v6

    .end local v6    # "nextName":I
    .local v7, "nextName":I
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "certificateBase64":Ljava/lang/String;
    new-instance v12, Lokio/c;

    invoke-direct {v12}, Lokio/c;-><init>()V

    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokio/c;->a(Lokio/ByteString;)Lokio/c;

    move-result-object v2

    .line 101
    .local v2, "certificateBuffer":Lokio/c;
    invoke-virtual {v2}, Lokio/c;->g()Ljava/io/InputStream;

    move-result-object v12

    .line 100
    invoke-virtual {v3, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 102
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "nextName":I
    .restart local v6    # "nextName":I
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    move v7, v6

    .line 103
    .end local v6    # "nextName":I
    .restart local v7    # "nextName":I
    goto :goto_0

    .line 106
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificateBase64":Ljava/lang/String;
    .end local v2    # "certificateBuffer":Lokio/c;
    :cond_0
    invoke-virtual {v9, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 107
    const-string v11, "TLS"

    invoke-static {v11}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 108
    .local v8, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    .end local v3    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "keyStore":Ljava/security/KeyStore;
    .end local v7    # "nextName":I
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v9    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    :goto_1
    return-object v8

    .line 110
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-static {}, Lcom/a/a/i;->x()Lcom/a/a/d;

    move-result-object v11

    const-string v12, "com.amplitude.api.PinnedAmplitudeClient"

    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    move-object v8, v10

    .line 115
    goto :goto_1

    .line 112
    :catch_1
    move-exception v4

    .line 113
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/a/a/i;->x()Lcom/a/a/d;

    move-result-object v11

    const-string v12, "com.amplitude.api.PinnedAmplitudeClient"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
