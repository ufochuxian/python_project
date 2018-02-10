.class public Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;


# static fields
.field public static final GUARD_SPACE:J = 0x6400000L


# instance fields
.field private final mStoreDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getStoreDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->mStoreDirectory:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->mStoreDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 38
    return-void
.end method

.method private cleanUp(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 199
    return-void
.end method

.method private getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;
    .locals 3
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->mStoreDirectory:Ljava/io/File;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getInputStream(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;

    move-result-object v0

    .line 211
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method private getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method private writeBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    .line 185
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 185
    :cond_0
    return v1

    .line 187
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v1
.end method

.method private writeData([BLjava/io/File;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getOutputStream(Ljava/io/File;)Ljava/io/BufferedOutputStream;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 179
    :cond_0
    return-void

    .line 175
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z
    .locals 1
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "divisor"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getInputStream(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 119
    .local v1, "in":Ljava/io/FileInputStream;
    if-eqz v1, :cond_0

    .line 120
    invoke-static {v1, p2}, Lcom/jiliguala/niuwa/module/story/helpers/BitmapHelper;->decodeArtwork(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B
    .locals 8
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getInputStream(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 94
    .local v3, "in":Ljava/io/FileInputStream;
    if-eqz v3, :cond_0

    .line 95
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x2000

    new-array v1, v6, [B

    .line 100
    .local v1, "data":[B
    :goto_0
    const/4 v6, 0x0

    array-length v7, v1

    invoke-virtual {v3, v1, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 101
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v2

    .line 109
    :cond_0
    :goto_1
    return-object v5

    .line 104
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "nRead":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Landroid/media/MediaPlayer;
    .locals 6
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 135
    .local v3, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getInputStream(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 136
    .local v2, "in":Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 138
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .local v4, "mp":Landroid/media/MediaPlayer;
    :try_start_1
    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 151
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "mp":Landroid/media/MediaPlayer;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    :cond_0
    :goto_0
    return-object v3

    .line 141
    .end local v3    # "mp":Landroid/media/MediaPlayer;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .end local v4    # "mp":Landroid/media/MediaPlayer;
    .restart local v3    # "mp":Landroid/media/MediaPlayer;
    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->mStoreDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 53
    .local v7, "files":[Ljava/io/File;
    if-nez v7, :cond_0

    move v1, v0

    .line 56
    .local v1, "itemCount":I
    :goto_0
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "totalSize":J
    if-eqz v7, :cond_1

    .line 58
    array-length v4, v7

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v6, v7, v0

    .line 59
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "itemCount":I
    .end local v2    # "totalSize":J
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    array-length v1, v7

    goto :goto_0

    .line 63
    .restart local v1    # "itemCount":I
    .restart local v2    # "totalSize":J
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->mStoreDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/32 v8, 0x6400000

    sub-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;-><init>(IJJ)V

    return-object v0
.end method

.method protected getStoreDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 43
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStoreException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "cacheDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public purge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->writeBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->cleanUp(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V

    goto :goto_0
.end method

.method public putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "data"    # [B

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->getFile(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->writeData([BLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->cleanUp(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V

    goto :goto_0
.end method

.method public remove(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
    .locals 0
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderDiskStore;->cleanUp(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V

    .line 157
    return-void
.end method
