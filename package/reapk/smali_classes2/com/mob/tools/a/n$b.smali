.class public final Lcom/mob/tools/a/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;

    .prologue
    const/4 v6, 0x0

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1378
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1379
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 1380
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1381
    :cond_0
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "no trust manager found."

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to initialize the standard trust manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1386
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mob/tools/a/n$b;->a:Ljavax/net/ssl/X509TrustManager;

    .line 1388
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1383
    .restart local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    iput-object v3, p0, Lcom/mob/tools/a/n$b;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1393
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1397
    if-nez p1, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "there were no certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1402
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 1408
    :goto_0
    return-void

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/a/n$b;->a:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/mob/tools/a/n$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_0

    .line 1406
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "there were one more certificates but no trust manager found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1412
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
