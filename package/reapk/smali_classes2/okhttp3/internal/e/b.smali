.class public abstract Lokhttp3/internal/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;
    .locals 1
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 41
    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/internal/d/e;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/e/b;
    .locals 2
    .param p0, "caCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 45
    new-instance v0, Lokhttp3/internal/e/a;

    invoke-static {p0}, Lokhttp3/internal/e/e;->a([Ljava/security/cert/X509Certificate;)Lokhttp3/internal/e/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/e/a;-><init>(Lokhttp3/internal/e/e;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method
