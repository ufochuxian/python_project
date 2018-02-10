.class public Lcom/pingplusplus/android/crypto/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "AES/CBC/PKCS5Padding"

    sput-object v0, Lcom/pingplusplus/android/crypto/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a([B[B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/pingplusplus/android/crypto/a;->c([B[B)[B

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pingplusplus/android/crypto/a;->b([B[B)[B

    move-result-object v0

    .line 36
    return-object v0
.end method

.method private static b([B[B)[B
    .locals 4

    .prologue
    .line 46
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 47
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 48
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    sget-object v2, Lcom/pingplusplus/android/crypto/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 53
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 57
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 58
    return-object v0
.end method

.method private static c([B[B)[B
    .locals 4

    .prologue
    .line 77
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 78
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 79
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    sget-object v2, Lcom/pingplusplus/android/crypto/a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 84
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 87
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 89
    return-object v0
.end method
