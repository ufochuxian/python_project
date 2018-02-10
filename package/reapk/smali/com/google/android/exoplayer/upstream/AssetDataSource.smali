.class public final Lcom/google/android/exoplayer/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 53
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 54
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v1, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 139
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 145
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 137
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v2, :cond_1

    .line 138
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 139
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_1
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    .line 59
    :try_start_0
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 60
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "path":Ljava/lang/String;
    const-string v4, "/android_asset/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 68
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 69
    .local v2, "skipped":J
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 72
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    .restart local v2    # "skipped":J
    :cond_2
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    .line 75
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 90
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v4, :cond_4

    .line 91
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v4}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 93
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v4

    .line 77
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    .line 78
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 82
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 98
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 99
    const/4 v0, -0x1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, "bytesRead":I
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    move v1, p3

    .line 104
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    if-lez v0, :cond_0

    .line 110
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 111
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 103
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
