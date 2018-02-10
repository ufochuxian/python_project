.class public Lcom/github/sahasbhop/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/sahasbhop/a/a/f$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x4c4b40L

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/sahasbhop/a/a/f;->b:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 122
    .local v1, "workingDir":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Ljava/io/File;

    .end local v1    # "workingDir":Ljava/io/File;
    const-string v2, "%s/apng/.nomedia/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v1    # "workingDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    const-string v4, "%s.png"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/github/sahasbhop/a/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    .local v2, "filename":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/github/sahasbhop/a/a/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 152
    .local v3, "workingDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 154
    .local v1, "f":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    return-object v1

    .line 147
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "workingDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 165
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/github/sahasbhop/a/a/f;->a([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 169
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 171
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 172
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 173
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/github/sahasbhop/a/a/f;->b:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 174
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/github/sahasbhop/a/a/f;->b:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static a(Ljava/io/File;J)V
    .locals 9
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "maxSize"    # J

    .prologue
    const-wide/32 v6, 0x4c4b40

    .line 27
    invoke-static {p0}, Lcom/github/sahasbhop/a/a/f;->c(Ljava/io/File;)J

    move-result-wide v0

    .line 28
    .local v0, "cacheSize":J
    sget-boolean v2, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "checkCacheSize: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_2

    .line 31
    sub-long v2, v0, v6

    invoke-static {p0, v2, v3}, Lcom/github/sahasbhop/a/a/f;->b(Ljava/io/File;J)V

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    .line 34
    sub-long v2, v0, p1

    invoke-static {p0, v2, v3}, Lcom/github/sahasbhop/a/a/f;->b(Ljava/io/File;J)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)[Ljava/io/File;
    .locals 5
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "files":[Ljava/io/File;
    array-length v3, v0

    new-array v2, v3, [Lcom/github/sahasbhop/a/a/f$a;

    .line 72
    .local v2, "pairs":[Lcom/github/sahasbhop/a/a/f$a;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 73
    new-instance v3, Lcom/github/sahasbhop/a/a/f$a;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Lcom/github/sahasbhop/a/a/f$a;-><init>(Ljava/io/File;)V

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 80
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 81
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/github/sahasbhop/a/a/f$a;->b:Ljava/io/File;

    aput-object v3, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    return-object v0
.end method

.method private static b(Ljava/io/File;J)V
    .locals 13
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "bytes"    # J

    .prologue
    const/4 v7, 0x0

    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .local v0, "bytesDeleted":J
    invoke-static {p0}, Lcom/github/sahasbhop/a/a/f;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 42
    .local v3, "files":[Ljava/io/File;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 43
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v0, v10

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 46
    .local v4, "isSuccess":Z
    sget-boolean v5, Lcom/github/sahasbhop/a/b;->a:Z

    if-eqz v5, :cond_0

    const-string v9, "Delete(%s): %s"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    const-string v5, "success"

    :goto_1
    aput-object v5, v10, v7

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    cmp-long v5, v0, p1

    if-ltz v5, :cond_3

    .line 52
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "isSuccess":Z
    :cond_1
    return-void

    .line 46
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "isSuccess":Z
    :cond_2
    const-string v5, "failed"

    goto :goto_1

    .line 42
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 93
    const/4 v2, 0x0

    .line 96
    .local v2, "isApng":Z
    :try_start_0
    new-instance v3, Lar/com/hjg/pngj/aa;

    invoke-direct {v3, p0}, Lar/com/hjg/pngj/aa;-><init>(Ljava/io/File;)V

    .line 97
    .local v3, "reader":Lar/com/hjg/pngj/aa;
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->i()V

    .line 99
    invoke-virtual {v3}, Lar/com/hjg/pngj/aa;->w()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    .local v0, "apngNumFrames":I
    if-le v0, v4, :cond_1

    move v2, v4

    .line 107
    .end local v0    # "apngNumFrames":I
    .end local v3    # "reader":Lar/com/hjg/pngj/aa;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "apngNumFrames":I
    .restart local v3    # "reader":Lar/com/hjg/pngj/aa;
    :cond_1
    move v2, v5

    .line 101
    goto :goto_0

    .line 103
    .end local v0    # "apngNumFrames":I
    .end local v3    # "reader":Lar/com/hjg/pngj/aa;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/github/sahasbhop/a/b;->b:Z

    if-eqz v6, :cond_0

    const-string v6, "Error: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Lcom/github/sahasbhop/flog/FLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static c(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .local v2, "size":J
    invoke-static {p0}, Lcom/github/sahasbhop/a/a/f;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "files":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 59
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-wide v2
.end method
