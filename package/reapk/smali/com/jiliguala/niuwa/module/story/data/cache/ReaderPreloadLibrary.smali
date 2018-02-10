.class public Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;


# static fields
.field public static final LIBRARY_ASSET_PATH:Ljava/lang/String; = "preload_library/assets"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAssets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssets:Ljava/util/HashSet;

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v3, "preload_library/assets"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 38
    .local v0, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssets:Ljava/util/HashSet;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    :cond_0
    return-void
.end method

.method private static assetPath(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/lang/String;
    .locals 1
    .param p0, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->assetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static assetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "assetHash"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preload_library/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z
    .locals 2
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssets:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "divisor"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->assetPath(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 116
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p2}, Lcom/jiliguala/niuwa/module/story/helpers/BitmapHelper;->decodeArtwork(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)[B
    .locals 7
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->assetPath(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 95
    .local v3, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v1, v5, [B

    .line 100
    .local v1, "data":[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {v3, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 105
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 104
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "nRead":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public getMediaPlayer(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Landroid/media/MediaPlayer;
    .locals 9
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 127
    const/4 v8, 0x0

    .line 130
    .local v8, "mp":Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->assetPath(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 131
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v8    # "mp":Landroid/media/MediaPlayer;
    .local v0, "mp":Landroid/media/MediaPlayer;
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 134
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "mp":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v1

    move-object v0, v8

    .end local v8    # "mp":Landroid/media/MediaPlayer;
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    goto :goto_0
.end method

.method public getStatistics()Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;
    .locals 8

    .prologue
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .local v2, "totalSize":J
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssets:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 63
    .local v6, "assetHash":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->assetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 64
    :catch_0
    move-exception v7

    .line 66
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v6    # "assetHash":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/cache/ReaderPreloadLibrary;->mAssets:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/data/cache/CacheStatistics;-><init>(IJJ)V

    return-object v0
.end method

.method public purge()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putBitmap(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putBytes(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;[B)V
    .locals 1
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .param p2, "data"    # [B

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
