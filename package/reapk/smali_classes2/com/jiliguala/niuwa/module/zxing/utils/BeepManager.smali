.class public Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->updatePrefs()V

    .line 54
    return-void
.end method

.method private buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 8
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 92
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 93
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 99
    .local v6, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 103
    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 109
    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .end local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 102
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .end local v6    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 108
    .local v7, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v1, 0x1

    .line 58
    .local v1, "shouldPlayBeep":Z
    if-eqz v1, :cond_0

    .line 60
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 61
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 65
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_0
    return v1
.end method

.method private declared-synchronized updatePrefs()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->playBeep:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->vibrate:Z

    .line 72
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 77
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 117
    return-void
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 121
    monitor-enter p0

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 129
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->updatePrefs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->vibrate:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/utils/BeepManager;->activity:Landroid/app/Activity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 87
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
