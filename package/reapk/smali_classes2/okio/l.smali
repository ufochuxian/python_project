.class public final Lokio/l;
.super Lokio/g;
.source "SourceFile"


# instance fields
.field private final a:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lokio/w;Ljava/lang/String;)V
    .locals 2
    .param p1, "sink"    # Lokio/w;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lokio/g;-><init>(Lokio/w;)V

    .line 61
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lokio/l;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static a(Lokio/w;)Lokio/l;
    .locals 2
    .param p0, "sink"    # Lokio/w;

    .prologue
    .line 45
    new-instance v0, Lokio/l;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lokio/l;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lokio/w;)Lokio/l;
    .locals 2
    .param p0, "sink"    # Lokio/w;

    .prologue
    .line 50
    new-instance v0, Lokio/l;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lokio/l;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Lokio/w;)Lokio/l;
    .locals 2
    .param p0, "sink"    # Lokio/w;

    .prologue
    .line 55
    new-instance v0, Lokio/l;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lokio/l;-><init>(Lokio/w;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lokio/c;J)V
    .locals 10
    .param p1, "source"    # Lokio/c;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-wide v0, p1, Lokio/c;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/z;->a(JJJ)V

    .line 71
    const-wide/16 v6, 0x0

    .line 72
    .local v6, "hashedCount":J
    iget-object v8, p1, Lokio/c;->b:Lokio/t;

    .local v8, "s":Lokio/t;
    :goto_0
    cmp-long v0, v6, p2

    if-gez v0, :cond_0

    .line 73
    sub-long v0, p2, v6

    iget v2, v8, Lokio/t;->e:I

    iget v3, v8, Lokio/t;->d:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v9, v0

    .line 74
    .local v9, "toHash":I
    iget-object v0, p0, Lokio/l;->a:Ljava/security/MessageDigest;

    iget-object v1, v8, Lokio/t;->c:[B

    iget v2, v8, Lokio/t;->d:I

    invoke-virtual {v0, v1, v2, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 75
    int-to-long v0, v9

    add-long/2addr v6, v0

    .line 72
    iget-object v8, v8, Lokio/t;->h:Lokio/t;

    goto :goto_0

    .line 79
    .end local v9    # "toHash":I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lokio/g;->a(Lokio/c;J)V

    .line 80
    return-void
.end method

.method public b()Lokio/ByteString;
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lokio/l;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 90
    .local v0, "result":[B
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method
