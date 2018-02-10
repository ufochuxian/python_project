.class public final Lokhttp3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/g$a;,
        Lokhttp3/g$b;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/g;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lokhttp3/internal/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lokhttp3/g$a;

    invoke-direct {v0}, Lokhttp3/g$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/g$a;->a()Lokhttp3/g;

    move-result-object v0

    sput-object v0, Lokhttp3/g;->a:Lokhttp3/g;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lokhttp3/internal/e/b;)V
    .locals 0
    .param p2, "certificateChainCleaner"    # Lokhttp3/internal/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/g$b;",
            ">;",
            "Lokhttp3/internal/e/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "pins":Ljava/util/List;, "Ljava/util/List<Lokhttp3/g$b;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lokhttp3/g;->b:Ljava/util/List;

    .line 132
    iput-object p2, p0, Lokhttp3/g;->c:Lokhttp3/internal/e/b;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lokhttp3/internal/e/b;Lokhttp3/g$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lokhttp3/internal/e/b;
    .param p3, "x2"    # Lokhttp3/g$1;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lokhttp3/g;-><init>(Ljava/util/List;Lokhttp3/internal/e/b;)V

    return-void
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 225
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "certificate":Ljava/security/cert/Certificate;
    invoke-static {p0}, Lokhttp3/g;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->b(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/g$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/g$b;>;"
    iget-object v2, p0, Lokhttp3/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/g$b;

    .line 203
    .local v0, "pin":Lokhttp3/g$b;
    invoke-virtual {v0, p1}, Lokhttp3/g$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/g$b;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/g$b;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "pin":Lokhttp3/g$b;
    :cond_2
    return-object v1
.end method

.method a(Lokhttp3/internal/e/b;)Lokhttp3/g;
    .locals 2
    .param p1, "certificateChainCleaner"    # Lokhttp3/internal/e/b;

    .prologue
    .line 213
    iget-object v0, p0, Lokhttp3/g;->c:Lokhttp3/internal/e/b;

    if-eq v0, p1, :cond_0

    new-instance v0, Lokhttp3/g;

    iget-object v1, p0, Lokhttp3/g;->b:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lokhttp3/g;-><init>(Ljava/util/List;Lokhttp3/internal/e/b;)V

    move-object p0, v0

    .end local p0    # "this":Lokhttp3/g;
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Lokhttp3/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 146
    .local v5, "pins":Ljava/util/List;, "Ljava/util/List<Lokhttp3/g$b;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v10, p0, Lokhttp3/g;->c:Lokhttp3/internal/e/b;

    if-eqz v10, :cond_2

    .line 149
    iget-object v10, p0, Lokhttp3/g;->c:Lokhttp3/internal/e/b;

    invoke-virtual {v10, p2, p1}, Lokhttp3/internal/e/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 152
    :cond_2
    const/4 v0, 0x0

    .local v0, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "certsSize":I
    :goto_1
    if-ge v0, v1, :cond_9

    .line 153
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 156
    .local v9, "x509Certificate":Ljava/security/cert/X509Certificate;
    const/4 v7, 0x0

    .line 157
    .local v7, "sha1":Lokio/ByteString;
    const/4 v8, 0x0

    .line 159
    .local v8, "sha256":Lokio/ByteString;
    const/4 v3, 0x0

    .local v3, "p":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "pinsSize":I
    :goto_2
    if-ge v3, v6, :cond_8

    .line 160
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/g$b;

    .line 161
    .local v4, "pin":Lokhttp3/g$b;
    iget-object v10, v4, Lokhttp3/g$b;->c:Ljava/lang/String;

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 162
    if-nez v8, :cond_3

    invoke-static {v9}, Lokhttp3/g;->b(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v8

    .line 163
    :cond_3
    iget-object v10, v4, Lokhttp3/g$b;->d:Lokio/ByteString;

    invoke-virtual {v10, v8}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 159
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 164
    :cond_5
    iget-object v10, v4, Lokhttp3/g$b;->c:Ljava/lang/String;

    const-string v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 165
    if-nez v7, :cond_6

    invoke-static {v9}, Lokhttp3/g;->a(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v7

    .line 166
    :cond_6
    iget-object v10, v4, Lokhttp3/g$b;->d:Lokio/ByteString;

    invoke-virtual {v10, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    .line 168
    :cond_7
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 152
    .end local v4    # "pin":Lokhttp3/g$b;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    .end local v3    # "p":I
    .end local v6    # "pinsSize":I
    .end local v7    # "sha1":Lokio/ByteString;
    .end local v8    # "sha256":Lokio/ByteString;
    .end local v9    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate pinning failure!"

    .line 175
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n  Peer certificate chain:"

    .line 176
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    .local v2, "message":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_a

    .line 178
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 179
    .restart local v9    # "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string v10, "\n    "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lokhttp3/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    .line 180
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 182
    .end local v9    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_a
    const-string v10, "\n  Pinned certificates for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/4 v3, 0x0

    .restart local v3    # "p":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "pinsSize":I
    :goto_4
    if-ge v3, v6, :cond_b

    .line 184
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/g$b;

    .line 185
    .restart local v4    # "pin":Lokhttp3/g$b;
    const-string v10, "\n    "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 187
    .end local v4    # "pin":Lokhttp3/g$b;
    :cond_b
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public varargs a(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "peerCertificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 194
    return-void
.end method
