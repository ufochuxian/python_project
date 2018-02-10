.class public final Lcom/google/android/exoplayer/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 55
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 134
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_0

    .line 135
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 142
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 134
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_1

    .line 135
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 136
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 140
    :cond_1
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 10
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 61
    :try_start_0
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 62
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v5, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 63
    .local v0, "assetFd":Landroid/content/res/AssetFileDescriptor;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 64
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 65
    .local v2, "skipped":J
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 68
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "skipped":J
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "assetFd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "skipped":J
    :cond_0
    :try_start_1
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 71
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :cond_1
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 86
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v4}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 90
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v4

    .line 73
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 74
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 78
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 95
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 96
    const/4 v0, -0x1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 100
    .local v0, "bytesRead":I
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    move v1, p3

    .line 101
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    if-lez v0, :cond_0

    .line 107
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 108
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 100
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
