.class public final Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# static fields
.field private static final BOX_HEADER_SIZE:I = 0x8

.field private static final TYPE_payl:I

.field private static final TYPE_sttg:I

.field private static final TYPE_vttc:I


# instance fields
.field private final builder:Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

.field private final sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "payl"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_payl:I

    .line 36
    const-string v0, "sttg"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_sttg:I

    .line 37
    const-string v0, "vttc"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_vttc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->builder:Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 45
    return-void
.end method

.method private static parseVttCueBox(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;I)Lcom/google/android/exoplayer/text/Cue;
    .locals 6
    .param p0, "sampleData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .param p2, "remainingCueBoxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    .line 49
    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 50
    const/16 v4, 0x8

    if-ge p2, v4, :cond_1

    .line 51
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v5, "Incomplete vtt cue box header found."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 54
    .local v1, "boxSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 55
    .local v2, "boxType":I
    add-int/lit8 p2, p2, -0x8

    .line 56
    add-int/lit8 v3, v1, -0x8

    .line 57
    .local v3, "payloadLength":I
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 58
    .local v0, "boxPayload":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    sub-int/2addr p2, v3

    .line 60
    sget v4, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_sttg:I

    if-ne v2, v4, :cond_2

    .line 61
    invoke-static {v0, p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 62
    :cond_2
    sget v4, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_payl:I

    if-ne v2, v4, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 68
    .end local v0    # "boxPayload":Ljava/lang/String;
    .end local v1    # "boxSize":I
    .end local v2    # "boxType":I
    .end local v3    # "payloadLength":I
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->build()Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "application/x-mp4vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BII)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->parse([BII)Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    add-int v4, p2, p3

    invoke-virtual {v3, p1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 81
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "resultingCueList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lez v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 85
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 88
    .local v0, "boxSize":I
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 89
    .local v1, "boxType":I
    sget v3, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->TYPE_vttc:I

    if-ne v1, v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->builder:Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    add-int/lit8 v5, v0, -0x8

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->parseVttCueBox(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;I)Lcom/google/android/exoplayer/text/Cue;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttParser;->sampleData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    add-int/lit8 v4, v0, -0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 96
    .end local v0    # "boxSize":I
    .end local v1    # "boxType":I
    :cond_2
    new-instance v3, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/text/webvtt/Mp4WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v3
.end method
