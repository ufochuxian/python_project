.class public Lcom/android/volley/toolbox/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/f$b;,
        Lcom/android/volley/toolbox/f$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x500000

.field private static final b:F = 0.9f

.field private static final c:I = 0x20150306


# instance fields
.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 93
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 82
    iput-object p1, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    .line 83
    iput p2, p0, Lcom/android/volley/toolbox/f;->f:I

    .line 84
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "n":I
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 134
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 135
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 136
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 137
    return v0
.end method

.method private a(I)V
    .locals 14
    .param p1, "neededSpace"    # I

    .prologue
    .line 383
    iget-wide v10, p0, Lcom/android/volley/toolbox/f;->g:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    iget v7, p0, Lcom/android/volley/toolbox/f;->f:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    sget-boolean v7, Lcom/android/volley/n;->b:Z

    if-eqz v7, :cond_2

    .line 387
    const-string v7, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/android/volley/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    :cond_2
    iget-wide v0, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 391
    .local v0, "before":J
    const/4 v6, 0x0

    .line 392
    .local v6, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 394
    .local v8, "startTime":J
    iget-object v7, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 395
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/f$a;>;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 396
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 397
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/f$a;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/f$a;

    .line 398
    .local v3, "e":Lcom/android/volley/toolbox/f$a;
    iget-object v7, v3, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v2

    .line 399
    .local v2, "deleted":Z
    if-eqz v2, :cond_5

    .line 400
    iget-wide v10, p0, Lcom/android/volley/toolbox/f;->g:J

    iget-wide v12, v3, Lcom/android/volley/toolbox/f$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 404
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 405
    add-int/lit8 v6, v6, 0x1

    .line 407
    iget-wide v10, p0, Lcom/android/volley/toolbox/f;->g:J

    int-to-long v12, p1

    add-long/2addr v10, v12

    long-to-float v7, v10

    iget v10, p0, Lcom/android/volley/toolbox/f;->f:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    .line 412
    .end local v2    # "deleted":Z
    .end local v3    # "e":Lcom/android/volley/toolbox/f$a;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/f$a;>;"
    :cond_4
    sget-boolean v7, Lcom/android/volley/n;->b:Z

    if-eqz v7, :cond_0

    .line 413
    const-string v7, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/android/volley/toolbox/f;->g:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/android/volley/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 402
    .restart local v2    # "deleted":Z
    .restart local v3    # "e":Lcom/android/volley/toolbox/f$a;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/volley/toolbox/f$a;>;"
    :cond_5
    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 126
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 127
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 128
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 129
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 142
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 143
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 144
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 145
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 146
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 147
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 148
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 149
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 166
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    .line 167
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/toolbox/f$a;

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/f$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/f$a;

    .line 428
    .local v0, "oldEntry":Lcom/android/volley/toolbox/f$a;
    iget-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    iget-wide v4, p2, Lcom/android/volley/toolbox/f$a;->a:J

    iget-wide v6, v0, Lcom/android/volley/toolbox/f$a;->a:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 178
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    .line 179
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    .line 186
    :cond_1
    return-void
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-array v0, p1, [B

    .line 102
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 103
    .local v2, "pos":I
    :goto_0
    if-ge v2, p1, :cond_0

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 104
    add-int/2addr v2, v1

    goto :goto_0

    .line 106
    .end local v1    # "count":I
    :cond_0
    if-eq v2, p1, :cond_1

    .line 107
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    :cond_1
    return-object v0
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xff

    .line 152
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "n":J
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 154
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 155
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 156
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 157
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 158
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 159
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 160
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 161
    return-wide v0
.end method

.method static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 172
    .local v1, "n":I
    invoke-static {p0, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 173
    .local v0, "b":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 365
    .local v0, "firstHalfLength":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "localFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    return-object v1
.end method

.method static d(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;)I

    move-result v3

    .line 190
    .local v3, "size":I
    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 191
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 192
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 196
    .restart local v0    # "i":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method private static e(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 118
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 119
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 121
    :cond_0
    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/f$a;

    .line 438
    .local v0, "entry":Lcom/android/volley/toolbox/f$a;
    if-eqz v0, :cond_0

    .line 439
    iget-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    iget-wide v4, v0, Lcom/android/volley/toolbox/f$a;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 440
    iget-object v1, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/android/volley/b$a;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    .local v4, "entry":Lcom/android/volley/toolbox/f$a;
    if-nez v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 226
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 227
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 229
    .local v0, "cis":Lcom/android/volley/toolbox/f$b;
    :try_start_2
    new-instance v1, Lcom/android/volley/toolbox/f$b;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/android/volley/toolbox/f$b;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/f$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .end local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .local v1, "cis":Lcom/android/volley/toolbox/f$b;
    :try_start_3
    invoke-static {v1}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;

    .line 231
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v1}, Lcom/android/volley/toolbox/f$b;->a(Lcom/android/volley/toolbox/f$b;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 232
    .local v2, "data":[B
    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/f$a;->a([B)Lcom/android/volley/b$a;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    .line 242
    if-eqz v1, :cond_2

    .line 244
    :try_start_4
    invoke-virtual {v1}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v7, v8

    .line 232
    goto :goto_0

    .line 245
    :catch_0
    move-exception v6

    .line 246
    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 233
    .end local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    .end local v2    # "data":[B
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    :catch_1
    move-exception v3

    .line 234
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    if-eqz v0, :cond_0

    .line 244
    :try_start_6
    invoke-virtual {v0}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 245
    :catch_2
    move-exception v6

    .line 246
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 237
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/NegativeArraySizeException;
    :goto_2
    :try_start_7
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/NegativeArraySizeException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 242
    if-eqz v0, :cond_0

    .line 244
    :try_start_8
    invoke-virtual {v0}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 245
    :catch_4
    move-exception v6

    .line 246
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 242
    .end local v3    # "e":Ljava/lang/NegativeArraySizeException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_3

    .line 244
    :try_start_9
    invoke-virtual {v0}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 246
    :cond_3
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 220
    .end local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .end local v4    # "entry":Lcom/android/volley/toolbox/f$a;
    .end local v5    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 245
    .restart local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v4    # "entry":Lcom/android/volley/toolbox/f$a;
    .restart local v5    # "file":Ljava/io/File;
    :catch_5
    move-exception v6

    .line 246
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto/16 :goto_0

    .line 242
    .end local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    goto :goto_3

    .line 237
    .end local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    goto :goto_2

    .line 233
    .end local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/volley/toolbox/f$b;
    .restart local v0    # "cis":Lcom/android/volley/toolbox/f$b;
    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 259
    iget-object v6, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    const-string v6, "Unable to create cache dir %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/android/volley/n;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    :cond_0
    monitor-exit p0

    return-void

    .line 265
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 266
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 269
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 272
    .local v4, "fis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .local v5, "fis":Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-static {v5}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;

    move-result-object v1

    .line 274
    .local v1, "entry":Lcom/android/volley/toolbox/f$a;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/volley/toolbox/f$a;->a:J

    .line 275
    iget-object v8, v1, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 282
    if-eqz v5, :cond_2

    .line 283
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v4, v5

    .line 269
    .end local v1    # "entry":Lcom/android/volley/toolbox/f$a;
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v1    # "entry":Lcom/android/volley/toolbox/f$a;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 287
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 276
    .end local v1    # "entry":Lcom/android/volley/toolbox/f$a;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_4

    .line 278
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 282
    :cond_4
    if-eqz v4, :cond_3

    .line 283
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 285
    :catch_2
    move-exception v8

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 282
    :goto_3
    if-eqz v4, :cond_5

    .line 283
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 286
    :cond_5
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 258
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 285
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 281
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 276
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/android/volley/b$a;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/volley/b$a;

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v5, p2, Lcom/android/volley/b$a;->a:[B

    array-length v5, v5

    invoke-direct {p0, v5}, Lcom/android/volley/toolbox/f;->a(I)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 325
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v3, "fos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/android/volley/toolbox/f$a;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/f$a;-><init>(Ljava/lang/String;Lcom/android/volley/b$a;)V

    .line 327
    .local v1, "e":Lcom/android/volley/toolbox/f$a;
    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/OutputStream;)Z

    move-result v4

    .line 328
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 329
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 330
    const-string v5, "Failed to write header for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v1    # "e":Lcom/android/volley/toolbox/f$a;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catch_0
    move-exception v5

    .line 339
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 340
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 341
    const-string v5, "Could not clean up file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    .end local v0    # "deleted":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    .restart local v1    # "e":Lcom/android/volley/toolbox/f$a;
    .restart local v3    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "success":Z
    :cond_1
    :try_start_3
    iget-object v5, p2, Lcom/android/volley/b$a;->a:[B

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 334
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 335
    invoke-direct {p0, p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 322
    .end local v1    # "e":Lcom/android/volley/toolbox/f$a;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fullExpire"    # Z

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;)Lcom/android/volley/b$a;

    move-result-object v0

    .line 300
    .local v0, "entry":Lcom/android/volley/b$a;
    if-eqz v0, :cond_1

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/b$a;->f:J

    .line 302
    if-eqz p2, :cond_0

    .line 303
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/volley/b$a;->e:J

    .line 305
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_1
    monitor-exit p0

    return-void

    .line 299
    .end local v0    # "entry":Lcom/android/volley/b$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 205
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 206
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 207
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/android/volley/toolbox/f;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 211
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/toolbox/f;->g:J

    .line 212
    const-string v2, "Cache cleared."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 204
    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 351
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;->e(Ljava/lang/String;)V

    .line 352
    if-nez v0, :cond_0

    .line 353
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/n;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    monitor-exit p0

    return-void

    .line 350
    .end local v0    # "deleted":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/f;->e:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
