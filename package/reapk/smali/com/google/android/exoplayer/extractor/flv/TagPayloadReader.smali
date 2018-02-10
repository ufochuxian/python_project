.class abstract Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field private durationUs:J

.field protected final output:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 38
    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .locals 2
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 78
    :cond_0
    return-void
.end method

.method public final getDurationUs()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method protected abstract parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method

.method public final setDurationUs(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 55
    return-void
.end method
