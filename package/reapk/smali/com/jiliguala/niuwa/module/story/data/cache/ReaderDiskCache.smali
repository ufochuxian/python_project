.class public Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;
.implements Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatisticsProvider;


# static fields
.field static final IO_BUFFER_SIZE:I = 0x2000

.field protected static final MAX_CACHE_SIZE:J = 0x3200000L

.field public static final ONE_GIGABYTE:J = 0x40000000L


# instance fields
.field protected final mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
        }
    .end annotation

    .prologue
    .line 36
    const-wide/32 v0, 0x3200000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "cacheSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, "cacheDir":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v2, v3, p3, p4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;IIJ)Lcom/jiliguala/niuwa/logic/image/a;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;

    invoke-direct {v2, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public static deleteCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->deleteRecursive(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 70
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 71
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 72
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->deleteRecursive(Ljava/io/File;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 51
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 53
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "cacheDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private writeBitmap(Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/logic/image/a$a;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 295
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 293
    :cond_0
    return v2

    .line 295
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 298
    :cond_1
    throw v2

    .line 295
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private writeData([BLcom/jiliguala/niuwa/logic/image/a$a;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "editor"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->c(I)Ljava/io/OutputStream;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    move-object v0, v1

    .line 287
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v2

    .line 283
    :goto_1
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 286
    :cond_1
    throw v2

    .line 283
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 281
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z
    .locals 5
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v1, 0x0

    .line 149
    .local v1, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 154
    :cond_0
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 152
    :cond_1
    :goto_0
    return v2

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 157
    :cond_2
    throw v2
.end method

.method public getBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "divisor"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 200
    .local v2, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 201
    if-nez v2, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 211
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 216
    :cond_0
    :goto_0
    return-object v3

    .line 204
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v1

    .line 205
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 206
    invoke-static {v1, p2}, Lcom/jiliguala/niuwa/module/story/helpers/BitmapHelper;->decodeArtwork(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 211
    :cond_2
    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .end local v1    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    move-object v3, v0

    .line 216
    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    .line 211
    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 212
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 214
    :cond_4
    throw v3
.end method

.method public getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B
    .locals 9
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 163
    const/4 v5, 0x0

    .line 166
    .local v5, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_start_0
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 167
    if-nez v5, :cond_1

    .line 188
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 186
    :cond_0
    :goto_0
    return-object v6

    .line 170
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v7}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v3

    .line 171
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x2000

    new-array v1, v7, [B

    .line 177
    .local v1, "data":[B
    :goto_1
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v3, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 178
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_0

    .line 181
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "nRead":I
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 188
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_0

    .line 188
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v4    # "nRead":I
    :cond_3
    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_0

    .line 188
    .end local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    .line 189
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 191
    :cond_4
    throw v6
.end method

.method public getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Landroid/media/MediaPlayer;
    .locals 8
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "mp":Landroid/media/MediaPlayer;
    const/4 v5, 0x0

    .line 226
    .local v5, "snapshot":Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_start_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 227
    if-nez v5, :cond_1

    .line 228
    const/4 v6, 0x0

    .line 251
    if-eqz v5, :cond_0

    .line 252
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 256
    :cond_0
    :goto_0
    return-object v6

    .line 230
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Lcom/jiliguala/niuwa/logic/image/a$c;->a(I)Ljava/io/InputStream;

    move-result-object v2

    .line 231
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_4

    .line 232
    instance-of v6, v2, Ljava/io/FileInputStream;

    if-nez v6, :cond_3

    .line 233
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "DiskLruCache.getInputStream() returned an object that wasn\'t a FileInputStream. Perhaps the internals changed? MediaPlayer won\'tplay from a generic InputStream, a FileInputStream is needed."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 251
    if-eqz v5, :cond_2

    .line 252
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    :cond_2
    :goto_1
    move-object v6, v3

    .line 256
    goto :goto_0

    .line 237
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    check-cast v2, Ljava/io/FileInputStream;

    .end local v2    # "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 238
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .local v4, "mp":Landroid/media/MediaPlayer;
    :try_start_3
    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v4

    .line 251
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "mp":Landroid/media/MediaPlayer;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    :cond_4
    :goto_2
    if-eqz v5, :cond_2

    .line 252
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    goto :goto_1

    .line 241
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "mp":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .end local v4    # "mp":Landroid/media/MediaPlayer;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    goto :goto_2

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v5, :cond_5

    .line 252
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/a$c;->close()V

    .line 254
    :cond_5
    throw v6

    .line 251
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v4    # "mp":Landroid/media/MediaPlayer;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "mp":Landroid/media/MediaPlayer;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    goto :goto_3
.end method

.method public getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .locals 8

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/a;->a()Ljava/io/File;

    move-result-object v6

    .line 87
    .local v6, "directory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 88
    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_0

    const/4 v1, 0x0

    .line 89
    .local v1, "itemCount":I
    :goto_0
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/image/a;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;-><init>(IJJ)V

    return-object v0

    .line 88
    .end local v1    # "itemCount":I
    :cond_0
    array-length v0, v7

    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method public purge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(J)V

    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/a;->e()V

    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    const-wide/32 v2, 0x3200000

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(J)V

    .line 272
    return-void
.end method

.method public putBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v1

    .line 123
    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->writeBitmap(Landroid/graphics/Bitmap;Lcom/jiliguala/niuwa/logic/image/a$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a;->e()V

    .line 129
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v2

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V
    .locals 4
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "data"    # [B

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v1

    .line 99
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->writeData([BLcom/jiliguala/niuwa/logic/image/a$a;)V

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a;->e()V

    .line 105
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public remove(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskCache;->mDiskLruCache:Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method
