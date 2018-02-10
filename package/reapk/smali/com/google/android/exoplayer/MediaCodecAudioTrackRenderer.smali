.class public Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    }
.end annotation


# static fields
.field public static final MSG_SET_PLAYBACK_PARAMS:I = 0x2

.field public static final MSG_SET_VOLUME:I = 0x1


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

.field private audioTrackHasData:Z

.field private currentPositionUs:J

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

.field private lastFeedElapsedRealtimeMs:J

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;)V
    .locals 2
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 7
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 103
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;Z)V
    .locals 7
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z

    .prologue
    const/4 v5, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;)V
    .locals 9
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .prologue
    .line 127
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 157
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 158
    iput-object p6, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 160
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-direct {v0, p7, p8}, Lcom/google/android/exoplayer/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    return-object v0
.end method

.method private notifyAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 2
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    return-void
.end method

.method private notifyAudioTrackUnderrun(IJJ)V
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    :cond_0
    return-void
.end method

.method private notifyAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 2
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    :cond_0
    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "codecIsAdaptive"    # Z
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "crypto"    # Landroid/media/MediaCrypto;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 200
    const-string v1, "mime"

    invoke-virtual {p3, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "mimeType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 205
    const-string v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-object p3, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 209
    iput-object v3, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 3
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "requiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getPassthroughDecoderName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "passthroughDecoderName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 179
    new-instance v1, Lcom/google/android/exoplayer/DecoderInfo;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Z)V

    .line 183
    .end local v0    # "passthroughDecoderName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 182
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecoderInfo(Lcom/google/android/exoplayer/MediaCodecSelector;Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    goto :goto_0
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .locals 0

    .prologue
    .line 215
    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    .prologue
    .line 263
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->isEnded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 264
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 265
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    .end local v0    # "newCurrentPositionUs":J
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 266
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 268
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    return-wide v2

    .line 265
    .restart local v0    # "newCurrentPositionUs":J
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 370
    packed-switch p1, :pswitch_data_0

    .line 378
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 381
    .end local p2    # "message":Ljava/lang/Object;
    :goto_0
    return-void

    .line 372
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    .line 375
    .restart local p2    # "message":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    .end local p2    # "message":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handlesTrack(Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 3
    .param p1, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p2, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p2, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 166
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "audio/x-unknown"

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getPassthroughDecoderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 166
    :cond_2
    return v1
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 237
    return-void
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 278
    throw v0
.end method

.method protected onDiscontinuity(J)V
    .locals 1
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDiscontinuity(J)V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->reset()V

    .line 285
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->currentPositionUs:J

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 287
    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "outputFormat"    # Landroid/media/MediaFormat;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 221
    .local v0, "passthrough":Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    .end local p1    # "outputFormat":Landroid/media/MediaFormat;
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->configure(Landroid/media/MediaFormat;Z)V

    .line 222
    return-void

    .line 220
    .end local v0    # "passthrough":Z
    .restart local p1    # "outputFormat":Landroid/media/MediaFormat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleEndOfStream()V

    .line 362
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->play()V

    .line 243
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->pause()V

    .line 248
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    .line 249
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 19
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "codec"    # Landroid/media/MediaCodec;
    .param p6, "buffer"    # Ljava/nio/ByteBuffer;
    .param p7, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p8, "bufferIndex"    # I
    .param p9, "shouldSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p7

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 295
    const/4 v2, 0x1

    .line 356
    :goto_0
    return v2

    .line 298
    :cond_0
    if-eqz p9, :cond_1

    .line 299
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v3, v2, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleDiscontinuity()V

    .line 302
    const/4 v2, 0x1

    goto :goto_0

    .line 305
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    if-eqz v2, :cond_4

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize(I)I

    .line 314
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->play()V

    .line 336
    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    move-object/from16 v0, p7

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p7

    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p7

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v9, p6

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;IIJ)I

    move-result v18

    .line 337
    .local v18, "handleBufferResult":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J
    :try_end_1
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->handleAudioTrackDiscontinuity()V

    .line 346
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->allowPositionDiscontinuity:Z

    .line 350
    :cond_3
    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_7

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v3, v2, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 353
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    .end local v18    # "handleBufferResult":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->initialize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 312
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioSessionId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->onAudioSessionId(I)V
    :try_end_2
    .catch Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v15

    .line 316
    .local v15, "e":Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 317
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 324
    .end local v15    # "e":Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 325
    .local v14, "audioTrackHadData":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->hasPendingData()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    .line 326
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrackHasData:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->lastFeedElapsedRealtimeMs:J

    sub-long v6, v2, v8

    .line 328
    .local v6, "elapsedSinceLastFeedMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->getBufferSizeUs()J

    move-result-wide v16

    .line 329
    .local v16, "bufferSizeUs":J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_6

    const-wide/16 v4, -0x1

    .line 330
    .local v4, "bufferSizeMs":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->audioTrack:Lcom/google/android/exoplayer/audio/AudioTrack;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->getBufferSize()I

    move-result v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackUnderrun(IJJ)V

    goto/16 :goto_2

    .line 329
    .end local v4    # "bufferSizeMs":J
    :cond_6
    const-wide/16 v2, 0x3e8

    div-long v4, v16, v2

    goto :goto_3

    .line 338
    .end local v6    # "elapsedSinceLastFeedMs":J
    .end local v14    # "audioTrackHadData":Z
    .end local v16    # "bufferSizeUs":J
    :catch_1
    move-exception v15

    .line 339
    .local v15, "e":Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->notifyAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 340
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v2, v15}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 356
    .end local v15    # "e":Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;
    .restart local v18    # "handleBufferResult":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
