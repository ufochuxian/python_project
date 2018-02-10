.class public final Lcom/google/android/exoplayer/util/MpegAudioHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0xe

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    .line 33
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    .line 35
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 35
    :array_3
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    .line 36
    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    .line 37
    :array_5
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 13
    .param p0, "header"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, -0x200000

    const/4 v9, 0x3

    const/4 v7, -0x1

    .line 57
    and-int v8, p0, v10

    if-eq v8, v10, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v7

    .line 61
    :cond_1
    ushr-int/lit8 v8, p0, 0x13

    and-int/lit8 v6, v8, 0x3

    .line 62
    .local v6, "version":I
    if-eq v6, v11, :cond_0

    .line 66
    ushr-int/lit8 v8, p0, 0x11

    and-int/lit8 v2, v8, 0x3

    .line 67
    .local v2, "layer":I
    if-eqz v2, :cond_0

    .line 71
    ushr-int/lit8 v8, p0, 0xc

    and-int/lit8 v1, v8, 0xf

    .line 72
    .local v1, "bitrateIndex":I
    if-eqz v1, :cond_0

    const/16 v8, 0xf

    if-eq v1, v8, :cond_0

    .line 77
    ushr-int/lit8 v8, p0, 0xa

    and-int/lit8 v5, v8, 0x3

    .line 78
    .local v5, "samplingRateIndex":I
    if-eq v5, v9, :cond_0

    .line 82
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v7, v5

    .line 83
    .local v4, "samplingRate":I
    if-ne v6, v12, :cond_3

    .line 85
    div-int/lit8 v4, v4, 0x2

    .line 92
    :cond_2
    :goto_1
    ushr-int/lit8 v7, p0, 0x9

    and-int/lit8 v3, v7, 0x1

    .line 93
    .local v3, "padding":I
    if-ne v2, v9, :cond_5

    .line 95
    if-ne v6, v9, :cond_4

    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 96
    .local v0, "bitrate":I
    :goto_2
    mul-int/lit16 v7, v0, 0x2ee0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x4

    goto :goto_0

    .line 86
    .end local v0    # "bitrate":I
    .end local v3    # "padding":I
    :cond_3
    if-nez v6, :cond_2

    .line 88
    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 95
    .restart local v3    # "padding":I
    :cond_4
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_2

    .line 99
    :cond_5
    if-ne v6, v9, :cond_7

    .line 100
    if-ne v2, v12, :cond_6

    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .line 107
    .restart local v0    # "bitrate":I
    :goto_3
    if-ne v6, v9, :cond_8

    .line 109
    const v7, 0x23280

    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    .line 100
    .end local v0    # "bitrate":I
    :cond_6
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    goto :goto_3

    .line 103
    :cond_7
    sget-object v7, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v8, v1, -0x1

    aget v0, v7, v8

    .restart local v0    # "bitrate":I
    goto :goto_3

    .line 112
    :cond_8
    if-ne v2, v11, :cond_9

    const v7, 0x11940

    :goto_4
    mul-int/2addr v7, v0

    div-int/2addr v7, v4

    add-int/2addr v7, v3

    goto :goto_0

    :cond_9
    const v7, 0x23280

    goto :goto_4
.end method

.method public static populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z
    .locals 13
    .param p0, "headerData"    # I
    .param p1, "header"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .prologue
    .line 125
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    const/high16 v6, -0x200000

    if-eq v0, v6, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 129
    :cond_0
    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v1, v0, 0x3

    .line 130
    .local v1, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v10, v0, 0x3

    .line 135
    .local v10, "layer":I
    if-nez v10, :cond_2

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_2
    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v9, v0, 0xf

    .line 140
    .local v9, "bitrateIndex":I
    if-eqz v9, :cond_3

    const/16 v0, 0xf

    if-ne v9, v0, :cond_4

    .line 142
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_4
    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v12, v0, 0x3

    .line 146
    .local v12, "samplingRateIndex":I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_5

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_5
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v0, v12

    .line 151
    .local v4, "sampleRate":I
    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 153
    div-int/lit8 v4, v4, 0x2

    .line 159
    :cond_6
    :goto_1
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v11, v0, 0x1

    .line 161
    .local v11, "padding":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_9

    .line 163
    const/4 v0, 0x3

    if-ne v1, v0, :cond_8

    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 164
    .local v8, "bitrate":I
    :goto_2
    mul-int/lit16 v0, v8, 0x2ee0

    div-int/2addr v0, v4

    add-int/2addr v0, v11

    mul-int/lit8 v3, v0, 0x4

    .line 165
    .local v3, "frameSize":I
    const/16 v7, 0x180

    .line 181
    .local v7, "samplesPerFrame":I
    :goto_3
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v6, v10, 0x3

    aget-object v2, v0, v6

    .line 182
    .local v2, "mimeType":Ljava/lang/String;
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e

    const/4 v5, 0x1

    .line 183
    .local v5, "channels":I
    :goto_4
    mul-int/lit16 v6, v8, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "frameSize":I
    .end local v5    # "channels":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    .end local v11    # "padding":I
    :cond_7
    if-nez v1, :cond_6

    .line 156
    div-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 163
    .restart local v11    # "padding":I
    :cond_8
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_2

    .line 168
    :cond_9
    const/4 v0, 0x3

    if-ne v1, v0, :cond_b

    .line 170
    const/4 v0, 0x2

    if-ne v10, v0, :cond_a

    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 171
    .restart local v8    # "bitrate":I
    :goto_5
    const/16 v7, 0x480

    .line 172
    .restart local v7    # "samplesPerFrame":I
    const v0, 0x23280

    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_3

    .line 170
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    .end local v8    # "bitrate":I
    :cond_a
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    goto :goto_5

    .line 175
    :cond_b
    sget-object v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v6, v9, -0x1

    aget v8, v0, v6

    .line 176
    .restart local v8    # "bitrate":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_c

    const/16 v7, 0x240

    .line 177
    .restart local v7    # "samplesPerFrame":I
    :goto_6
    const/4 v0, 0x1

    if-ne v10, v0, :cond_d

    const v0, 0x11940

    :goto_7
    mul-int/2addr v0, v8

    div-int/2addr v0, v4

    add-int v3, v0, v11

    .restart local v3    # "frameSize":I
    goto :goto_3

    .line 176
    .end local v3    # "frameSize":I
    .end local v7    # "samplesPerFrame":I
    :cond_c
    const/16 v7, 0x480

    goto :goto_6

    .line 177
    .restart local v7    # "samplesPerFrame":I
    :cond_d
    const v0, 0x23280

    goto :goto_7

    .line 182
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "frameSize":I
    :cond_e
    const/4 v5, 0x2

    goto :goto_4
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "frameSize"    # I
    .param p4, "sampleRate"    # I
    .param p5, "channels"    # I
    .param p6, "bitrate"    # I
    .param p7, "samplesPerFrame"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->version:I

    .line 189
    iput-object p2, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    .line 190
    iput p3, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    .line 191
    iput p4, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    .line 192
    iput p5, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    .line 193
    iput p6, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->bitrate:I

    .line 194
    iput p7, p0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    .line 195
    return-void
.end method
