.class final Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashSegmentIndex;


# instance fields
.field private final uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)V
    .locals 0
    .param p1, "uri"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 33
    return-void
.end method


# virtual methods
.method public getDurationUs(IJ)J
    .locals 0
    .param p1, "segmentNum"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 47
    return-wide p2
.end method

.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSegmentNum(J)I
    .locals 1
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .locals 1
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1
    .param p1, "segmentNum"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/DashSingleSegmentIndex;->uri:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method

.method public getTimeUs(I)J
    .locals 2
    .param p1, "segmentNum"    # I

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
