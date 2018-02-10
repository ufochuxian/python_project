.class public final Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# static fields
.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

.field private parserState:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field public tagDataSize:I

.field private final tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field private videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "FLV"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 76
    return-void
.end method

.method private prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;
    .locals 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    iget v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0
.end method

.method private readFlvHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 8
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v7, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 182
    :goto_0
    return v3

    .line 162
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 163
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 164
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 165
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    move v1, v4

    .line 166
    .local v1, "hasAudio":Z
    :goto_1
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_5

    move v2, v4

    .line 167
    .local v2, "hasVideo":Z
    :goto_2
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-nez v3, :cond_1

    .line 168
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    .line 170
    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-nez v3, :cond_2

    .line 171
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v5, v7}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-nez v3, :cond_3

    .line 174
    new-instance v3, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 177
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v3, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 180
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 181
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v3, v4

    .line 182
    goto :goto_0

    .end local v1    # "hasAudio":Z
    .end local v2    # "hasVideo":Z
    :cond_4
    move v1, v3

    .line 165
    goto :goto_1

    .restart local v1    # "hasAudio":Z
    :cond_5
    move v2, v3

    .line 166
    goto :goto_2
.end method

.method private readTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    .line 238
    .local v0, "wasConsumed":Z
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 256
    :cond_0
    :goto_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 257
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 258
    return v0

    .line 240
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    goto :goto_0

    .line 242
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    if-eqz v1, :cond_4

    .line 243
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->consume(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/flv/AudioTagPayloadReader;->setDurationUs(J)V

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/flv/VideoTagPayloadReader;->setDurationUs(J)V

    goto :goto_0

    .line 253
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 254
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v3, 0xb

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagType:I

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 222
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    move v0, v1

    .line 223
    goto :goto_0
.end method

.method private skipToTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 197
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 198
    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .locals 2
    .param p1, "timeUs"    # J

    .prologue
    .line 281
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 112
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 2
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 123
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readFlvHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_1
    return v0

    .line 130
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->skipToTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readTagHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 138
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->readTagData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->parserState:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 118
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x3

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->FLV_TAG:I

    if-eq v2, v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 89
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    and-int/lit16 v2, v2, 0xfa

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 99
    .local v0, "dataOffset":I
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 100
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 103
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
