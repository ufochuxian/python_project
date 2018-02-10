.class public abstract Lcom/google/android/exoplayer/TrackRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;


# static fields
.field public static final END_OF_TRACK_US:J = -0x3L

.field public static final MATCH_LONGEST_US:J = -0x2L

.field protected static final STATE_ENABLED:I = 0x2

.field protected static final STATE_PREPARED:I = 0x1

.field protected static final STATE_RELEASED:I = -0x1

.field protected static final STATE_STARTED:I = 0x3

.field protected static final STATE_UNPREPARED:I = 0x0

.field public static final UNKNOWN_TIME_US:J = -0x1L


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final disable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 227
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 228
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 229
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onDisabled()V

    .line 230
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract doPrepare(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract doSomeWork(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final enable(IJZ)V
    .locals 2
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 154
    iget v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 156
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/TrackRenderer;->onEnabled(IJZ)V

    .line 157
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getBufferedPositionUs()J
.end method

.method protected abstract getDurationUs()J
.end method

.method protected abstract getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
.end method

.method protected getMediaClock()Lcom/google/android/exoplayer/MediaClock;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getState()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0
.end method

.method protected abstract getTrackCount()I
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 355
    return-void
.end method

.method protected abstract isEnded()Z
.end method

.method protected abstract isReady()Z
.end method

.method protected abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected onDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method protected onEnabled(IJZ)V
    .locals 0
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method protected onReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method final prepare(J)I
    .locals 3
    .param p1, "positionUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->doPrepare(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 107
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    return v0

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v1, v2

    .line 106
    goto :goto_1
.end method

.method final release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 249
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 250
    iput v2, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 251
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onReleased()V

    .line 252
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStarted()V

    .line 186
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->state:I

    .line 207
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->onStopped()V

    .line 208
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
