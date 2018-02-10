.class public final Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field private static final HEADER_MASK:I = -0x1f400

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final forcedFirstSampleTimestampUs:J

.field private gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

.field private sampleBytesRemaining:I

.field private samplesRead:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    .line 54
    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    .line 55
    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 78
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "forcedFirstSampleTimestampUs"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 91
    return-void
.end method

.method private maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v6, -0x1f400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 166
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x4

    invoke-interface {p1, v4, v2, v5, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    :goto_0
    return v2

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 171
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 172
    .local v1, "sampleHeaderData":I
    and-int v4, v1, v6

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    and-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    .line 173
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v0

    .line 174
    .local v0, "frameSize":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 175
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    move v2, v3

    .line 176
    goto :goto_0

    .line 180
    .end local v0    # "frameSize":I
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 181
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v2

    goto :goto_0
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 12
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 133
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_2

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, -0x1

    .line 158
    :goto_0
    return v1

    .line 137
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 139
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v8

    .line 141
    .local v8, "embeddedFirstSampleTimestampUs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 144
    .end local v8    # "embeddedFirstSampleTimestampUs":J
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v5, 0x1

    invoke-interface {v1, p1, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 147
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 148
    const/4 v1, -0x1

    goto :goto_0

    .line 150
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 151
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_4

    .line 152
    const/4 v1, 0x0

    goto :goto_0

    .line 154
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    int-to-long v6, v1

    const-wide/32 v10, 0xf4240

    mul-long/2addr v6, v10

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v10, v1

    div-long/2addr v6, v10

    add-long v2, v4, v6

    .line 155
    .local v2, "timeUs":J
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 156
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v4, v4, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 14
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x24

    const/16 v13, 0x15

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 272
    .local v1, "frame":Lcom/google/android/exoplayer/util/ParsableByteArray;
    iget-object v6, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v6, v8, v7}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 274
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 275
    .local v2, "position":J
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 278
    .local v4, "length":J
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->version:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v6, v9, :cond_0

    move v13, v0

    .line 280
    .local v13, "xingBase":I
    :cond_0
    :goto_0
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 281
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 282
    .local v12, "headerData":I
    sget v6, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v12, v6, :cond_1

    sget v6, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v12, v6, :cond_6

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    if-nez v0, :cond_2

    .line 286
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 287
    add-int/lit16 v0, v13, 0x8d

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x3

    invoke-interface {p1, v0, v8, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/GaplessInfo;->createFromXingHeaderValue(I)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 303
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v0, :cond_4

    .line 306
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x4

    invoke-interface {p1, v0, v8, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 310
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v9, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->bitrate:I

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    iput-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 312
    :cond_4
    return-void

    .line 278
    .end local v12    # "headerData":I
    .end local v13    # "xingBase":I
    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-ne v6, v9, :cond_0

    const/16 v13, 0xd

    goto :goto_0

    .line 295
    .restart local v12    # "headerData":I
    .restart local v13    # "xingBase":I
    :cond_6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 296
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 297
    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v12, v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1
.end method

.method private synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, "searched":I
    const/4 v5, 0x0

    .line 199
    .local v5, "validFrameCount":I
    const/4 v0, 0x0

    .line 200
    .local v0, "candidateSynchronizedHeaderData":I
    const/4 v3, 0x0

    .line 201
    .local v3, "peekedId3Bytes":I
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 202
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 203
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp3/Id3Util;->parseId3(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    .line 204
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    long-to-int v3, v6

    .line 205
    if-nez p2, :cond_0

    .line 206
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 210
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/16 v6, 0x1000

    if-ne v4, v6, :cond_1

    .line 211
    const/4 v6, 0x0

    .line 253
    :goto_1
    return v6

    .line 213
    :cond_1
    if-nez p2, :cond_2

    const/high16 v6, 0x20000

    if-ne v4, v6, :cond_2

    .line 214
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Searched too many bytes."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 216
    :cond_2
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-interface {p1, v6, v7, v8, v9}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    const/4 v6, 0x0

    goto :goto_1

    .line 219
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 220
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 222
    .local v2, "headerData":I
    if-eqz v0, :cond_4

    const v6, -0x1f400

    and-int/2addr v6, v2

    const v7, -0x1f400

    and-int/2addr v7, v0

    if-ne v6, v7, :cond_5

    .line 223
    :cond_4
    invoke-static {v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    .local v1, "frameSize":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_7

    .line 225
    .end local v1    # "frameSize":I
    :cond_5
    const/4 v5, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 228
    if-eqz p2, :cond_6

    .line 229
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 230
    add-int v6, v3, v4

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 232
    :cond_6
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 236
    .restart local v1    # "frameSize":I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 237
    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 238
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v2, v6}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 239
    move v0, v2

    .line 243
    :cond_8
    add-int/lit8 v6, v1, -0x4

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    .line 240
    :cond_9
    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 247
    if-eqz p2, :cond_a

    .line 248
    add-int v6, v3, v4

    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 252
    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 253
    const/4 v6, 0x1

    goto :goto_1

    .line 250
    :cond_a
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_2
.end method

.method private synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/EOFException;
    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 101
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 102
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 103
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 11
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 115
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return v2

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v1, :cond_2

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/16 v3, 0x1000

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 122
    invoke-interface {v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getDurationUs()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move-object v8, v0

    move-object v9, v0

    .line 121
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v10

    .line 124
    .local v10, "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lcom/google/android/exoplayer/extractor/GaplessInfo;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    invoke-virtual {v10, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->copyWithGaplessInfo(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v10

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 129
    .end local v10    # "mediaFormat":Lcom/google/android/exoplayer/MediaFormat;
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I

    move-result v2

    goto :goto_0
.end method

.method public seek()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 108
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 110
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 111
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
