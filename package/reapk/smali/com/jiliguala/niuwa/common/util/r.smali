.class public Lcom/jiliguala/niuwa/common/util/r;
.super Lcom/jiliguala/niuwa/common/util/xutils/a/d;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/jiliguala/niuwa/common/util/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/d;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 20
    const-string v0, ""

    .line 22
    .local v0, "cacheKey":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 23
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/common/util/r;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    goto :goto_0
.end method
