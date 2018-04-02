.class Lcom/chivox/android/AIRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chivox/android/AIRecorder;->playback()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chivox/android/AIRecorder;


# direct methods
.method constructor <init>(Lcom/chivox/android/AIRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v13, 0x1

    .line 228
    const/4 v8, 0x0

    .line 230
    .local v8, "file":Ljava/io/RandomAccessFile;
    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$300()I

    move-result v1

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$400()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$500()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v5, v1, 0x8

    .line 231
    .local v5, "bufferSize":I
    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v1

    invoke-static {v1, v4, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v10

    .line 234
    .local v10, "minBufferSize":I
    if-le v10, v5, :cond_0

    .line 235
    move v5, v10

    .line 238
    :cond_0
    new-array v7, v5, [B

    .line 240
    .local v7, "buffer":[B
    const/4 v11, 0x0

    .line 244
    .local v11, "player":Landroid/media/AudioTrack;
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    invoke-static {}, Lcom/chivox/android/AIRecorder;->access$200()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v11    # "player":Landroid/media/AudioTrack;
    .local v0, "player":Landroid/media/AudioTrack;
    :try_start_1
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1}, Lcom/chivox/android/AIRecorder;->access$1000(Lcom/chivox/android/AIRecorder;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v9, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .local v9, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x2c

    :try_start_2
    invoke-virtual {v9, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    invoke-static {v1}, Lcom/chivox/android/AIRecorder;->access$600(Lcom/chivox/android/AIRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v9, v7, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v12

    .line 257
    .local v12, "size":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_6

    .line 264
    .end local v12    # "size":I
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 272
    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v13, :cond_2

    .line 274
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 276
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 281
    :cond_3
    if-eqz v9, :cond_4

    .line 282
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    move-object v8, v9

    .line 289
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    :cond_5
    :goto_1
    return-void

    .line 261
    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "size":I
    :cond_6
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0, v7, v1, v12}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 266
    .end local v12    # "size":I
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 270
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 272
    if-eqz v0, :cond_8

    .line 273
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v13, :cond_7

    .line 274
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 276
    :cond_7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 281
    :cond_8
    if-eqz v8, :cond_5

    .line 282
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 284
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v1

    move-object v8, v9

    .line 287
    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 269
    .end local v0    # "player":Landroid/media/AudioTrack;
    .restart local v11    # "player":Landroid/media/AudioTrack;
    :catchall_0
    move-exception v1

    move-object v0, v11

    .line 270
    .end local v11    # "player":Landroid/media/AudioTrack;
    .restart local v0    # "player":Landroid/media/AudioTrack;
    :goto_3
    :try_start_6
    iget-object v2, p0, Lcom/chivox/android/AIRecorder$2;->this$0:Lcom/chivox/android/AIRecorder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/chivox/android/AIRecorder;->access$602(Lcom/chivox/android/AIRecorder;Z)Z

    .line 272
    if-eqz v0, :cond_a

    .line 273
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v2, v13, :cond_9

    .line 274
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 276
    :cond_9
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 281
    :cond_a
    if-eqz v8, :cond_b

    .line 282
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 287
    :cond_b
    :goto_4
    throw v1

    .line 284
    :catch_3
    move-exception v2

    goto :goto_4

    .line 269
    :catchall_1
    move-exception v1

    goto :goto_3

    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 266
    .end local v0    # "player":Landroid/media/AudioTrack;
    .restart local v11    # "player":Landroid/media/AudioTrack;
    :catch_4
    move-exception v1

    move-object v0, v11

    .end local v11    # "player":Landroid/media/AudioTrack;
    .restart local v0    # "player":Landroid/media/AudioTrack;
    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method
