.class public Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/jiliguala/niuwa/module/audio/MusicFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;,
        Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;,
        Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;,
        Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;
    }
.end annotation


# static fields
.field private static final Focused:I = 0x2

.field private static final NoFocusCanDuck:I = 0x1

.field private static final NoFocusNoDuck:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

.field public errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

.field private mAudioFocus:I

.field private mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPausePos:I

.field private prepared:Z

.field public preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

.field private shouldPauseAfterPrepared:Z

.field private vsChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepared:Z

    .line 39
    iput v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    .line 40
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 47
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 48
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekToPause()V

    return-void
.end method

.method private prepareAndStart(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 201
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->tryToGetAudioFocus()V

    .line 203
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 204
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepared:Z

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 236
    :goto_0
    return-void

    .line 209
    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://"

    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 223
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 214
    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 216
    .local v2, "fileDescriptor":Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_4

    .line 220
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 225
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v5

    .line 234
    :goto_2
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    :catch_1
    move-exception v5

    .line 234
    :goto_3
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 229
    :catch_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 229
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 227
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 225
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private seekToPause()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mPausePos:I

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mPausePos:I

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekTo(I)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mPausePos:I

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method configAndStartMediaPlayer()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->pause()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->resume()V

    goto :goto_0
.end method

.method public getCurrentPos()I
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 350
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method giveUpAudioFocus()V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->abandonFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    .line 163
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepared:Z

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->giveUpAudioFocus()V

    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;->onComplete()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->giveUpAudioFocus()V

    .line 316
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 317
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 319
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 320
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 321
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 322
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 324
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->giveUpAudioFocus()V

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;->onError(I)V

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onGainedAudioFocus()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    .line 132
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->configAndStartMediaPlayer()V

    .line 133
    return-void
.end method

.method public onLostAudioFocus(Z)V
    .locals 1
    .param p1, "canDuck"    # Z

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    .line 157
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->configAndStartMediaPlayer()V

    .line 158
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepared:Z

    .line 56
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 60
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$1;-><init>(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;->onPrepared()V

    .line 78
    :cond_1
    return-void

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->seekToPause()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->vsChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->vsChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, p2, p3}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChange(II)V

    .line 92
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 281
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->giveUpAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public playRightNow()V
    .locals 1

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public releaseRes()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 375
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->tryToGetAudioFocus()V

    .line 290
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "posA"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 251
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 330
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "preparedListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;
    .param p2, "completeListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;
    .param p3, "errorListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;)V

    .line 173
    return-void
.end method

.method public setMediaPlayerListener(Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1, "preparedListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;
    .param p2, "completeListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;
    .param p3, "errorListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;
    .param p4, "vsChangedListener"    # Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->preparedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnPreparedListener;

    .line 178
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->completeListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnCompleteListener;

    .line 179
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->errorListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnErrorListener;

    .line 180
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->vsChangedListener:Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer$OnVideoSizeChangedListener;

    .line 181
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 185
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->start(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seekPos"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    .line 193
    iput p2, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mPausePos:I

    .line 194
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepareAndStart(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public startAndPauseWhilePrepared(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    .line 240
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepareAndStart(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public startAndPauseWhilePrepared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seekPos"    # I

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->shouldPauseAfterPrepared:Z

    .line 245
    iput p2, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mPausePos:I

    .line 246
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepareAndStart(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public startThenPause()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 262
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->prepared:Z

    .line 264
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->giveUpAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method tryToGetAudioFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 166
    iget v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocusHelper:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iput v1, p0, Lcom/jiliguala/niuwa/module/mediaplayer/SimpleMediaPlayer;->mAudioFocus:I

    .line 168
    :cond_0
    return-void
.end method
