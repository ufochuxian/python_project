.class public final Lcom/google/android/exoplayer/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;,
        Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final codecs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 4
    .param p0, "avcLevel"    # I

    .prologue
    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    .line 327
    sparse-switch p0, :sswitch_data_0

    .line 359
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 333
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 335
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 337
    goto :goto_0

    .line 339
    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    .line 341
    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 343
    goto :goto_0

    .line 345
    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    .line 347
    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    .line 349
    goto :goto_0

    :sswitch_a
    move v0, v3

    .line 351
    goto :goto_0

    .line 353
    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    .line 355
    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    .line 357
    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 57
    .local v0, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/DecoderInfo;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    invoke-direct {v3, v1, v2}, Lcom/google/android/exoplayer/DecoderInfo;-><init>(Ljava/lang/String;Z)V

    move-object v1, v3

    goto :goto_0
.end method

.method private static getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    .locals 3
    .param p0, "key"    # Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfoInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static declared-synchronized getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x15

    .line 93
    const-class v4, Lcom/google/android/exoplayer/MediaCodecUtil;

    monitor-enter v4

    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    .line 94
    .local v1, "key":Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    sget-object v3, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    sget-object v3, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit v4

    return-object v3

    .line 97
    :cond_0
    :try_start_1
    sget v3, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-lt v3, v5, :cond_2

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    .line 98
    .local v2, "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    :goto_1
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;

    move-result-object v0

    .line 99
    .local v0, "codecInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    sget v3, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-gt v5, v3, :cond_1

    sget v3, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v3, v5, :cond_1

    .line 104
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    .end local v2    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V

    .line 105
    .restart local v2    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    const-string v5, "MediaCodecUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ". Assuming: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v0

    .line 110
    goto :goto_0

    .line 97
    .end local v0    # "codecInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    .end local v2    # "mediaCodecList":Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer/MediaCodecUtil$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 93
    .end local v1    # "key":Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getMediaCodecInfoInternal(Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;)Landroid/util/Pair;
    .locals 16
    .param p0, "key"    # Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 125
    .local v6, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v7

    .line 126
    .local v7, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v9

    .line 128
    .local v9, "secureDecodersExplicit":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_7

    .line 129
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 130
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "codecName":Ljava/lang/String;
    invoke-static {v4, v2, v9}, Lcom/google/android/exoplayer/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 132
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "supportedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v12, v11

    if-ge v5, v12, :cond_6

    .line 134
    aget-object v10, v11, v5

    .line 135
    .local v10, "supportedType":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 136
    invoke-virtual {v4, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 137
    .local v1, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v1}, Lcom/google/android/exoplayer/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    .line 138
    .local v8, "secure":Z
    if-nez v9, :cond_3

    .line 140
    sget-object v13, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v12, :cond_1

    new-instance v12, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    const/4 v14, 0x0

    invoke-direct {v12, v6, v14}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    :goto_2
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    if-eqz v8, :cond_0

    .line 142
    sget-object v13, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-eqz v12, :cond_2

    move-object/from16 v12, p0

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".secure"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    :goto_4
    sget-object v12, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 150
    sget-object v12, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 156
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "codecName":Ljava/lang/String;
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "j":I
    .end local v8    # "secure":Z
    .end local v10    # "supportedType":Ljava/lang/String;
    .end local v11    # "supportedTypes":[Ljava/lang/String;
    :goto_5
    return-object v12

    .restart local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v2    # "codecName":Ljava/lang/String;
    .restart local v4    # "info":Landroid/media/MediaCodecInfo;
    .restart local v5    # "j":I
    .restart local v8    # "secure":Z
    .restart local v10    # "supportedType":Ljava/lang/String;
    .restart local v11    # "supportedTypes":[Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p0

    .line 140
    goto :goto_2

    .line 142
    :cond_2
    new-instance v12, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    const/4 v14, 0x1

    invoke-direct {v12, v6, v14}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    .line 147
    :cond_3
    sget-object v13, Lcom/google/android/exoplayer/MediaCodecUtil;->codecs:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v12, v8, :cond_4

    move-object/from16 v12, p0

    :goto_6
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    new-instance v12, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;

    invoke-direct {v12, v6, v8}, Lcom/google/android/exoplayer/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    goto :goto_6

    .line 133
    .end local v1    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v8    # "secure":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 128
    .end local v5    # "j":I
    .end local v10    # "supportedType":Ljava/lang/String;
    .end local v11    # "supportedTypes":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 156
    .end local v2    # "codecName":Ljava/lang/String;
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :cond_7
    const/4 v12, 0x0

    goto :goto_5
.end method

.method private static getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    .line 313
    .local v0, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    if-nez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 316
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    goto :goto_0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 206
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 207
    invoke-static {p0}, Lcom/google/android/exoplayer/MediaCodecUtil;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1
    .param p0, "capabilities"    # Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 215
    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z

    .prologue
    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string v1, "CIPAACDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "CIPMP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CIPVorbisDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AACDecoder"

    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_3

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :cond_3
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_4

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "protou"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6602"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6603"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6606"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6616"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "L36h"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :cond_4
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_5

    const-string v1, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "C1504"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1505"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1604"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1605"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :cond_5
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_7

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "d2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "samsung"

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isH264ProfileSupported(II)Z
    .locals 6
    .param p0, "profile"    # I
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 275
    const-string v5, "video/avc"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    .line 276
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v4

    .line 280
    :cond_1
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 281
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 282
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v3, v5, v1

    .line 283
    .local v3, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v5, p0, :cond_2

    iget v5, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v5, p1, :cond_2

    .line 284
    const/4 v4, 0x1

    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "frameRate"    # D
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 263
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 264
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    .end local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_0
    move v1, v3

    .line 262
    goto :goto_0

    .restart local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_1
    move v2, v3

    .line 264
    goto :goto_1
.end method

.method public static isSizeSupportedV21(Ljava/lang/String;ZII)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 237
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getVideoCapabilitiesV21(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 238
    .local v0, "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    .end local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_0
    move v1, v3

    .line 236
    goto :goto_0

    .restart local v0    # "videoCapabilities":Landroid/media/MediaCodecInfo$VideoCapabilities;
    :cond_1
    move v2, v3

    .line 238
    goto :goto_1
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string v5, "video/avc"

    invoke-static {v5, v3}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    .line 296
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;>;"
    if-nez v2, :cond_1

    .line 307
    :cond_0
    return v3

    .line 300
    :cond_1
    const/4 v3, 0x0

    .line 301
    .local v3, "maxH264DecodableFrameSize":I
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 302
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 303
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v4, v5, v1

    .line 304
    .local v4, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v5}, Lcom/google/android/exoplayer/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized warmCodec(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 75
    const-class v2, Lcom/google/android/exoplayer/MediaCodecUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getMediaCodecInfo(Ljava/lang/String;Z)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v2

    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    :try_start_1
    const-string v1, "MediaCodecUtil"

    const-string v3, "Codec warming failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
