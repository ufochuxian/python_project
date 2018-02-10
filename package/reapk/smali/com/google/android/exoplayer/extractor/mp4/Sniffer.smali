.class final Lcom/google/android/exoplayer/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMPATIBLE_BRANDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x14

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "isom"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso2"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "avc1"

    .line 32
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hvc1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hev1"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mp41"

    .line 33
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mp42"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "3g2a"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "3g2b"

    .line 34
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "3gr6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "3gs6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3ge6"

    .line 35
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3gg6"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M4V "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M4A "

    .line 36
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f4v "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "kddi"

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "M4VP"

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "qt  "

    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MSNV"

    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6
    .param p0, "brand"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    ushr-int/lit8 v3, p0, 0x8

    const-string v4, "3gp"

    invoke-static {v4}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    sget-object v4, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    .line 144
    .local v0, "compatibleBrand":I
    if-eq v0, p0, :cond_0

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "compatibleBrand":I
    :cond_2
    move v1, v2

    .line 148
    goto :goto_0
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 2
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z
    .locals 22
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "searchLength"    # I
    .param p2, "fragmented"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    .line 77
    .local v16, "inputLength":J
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    :cond_0
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .end local v16    # "inputLength":J
    :cond_1
    move-wide/from16 v0, v16

    long-to-int v10, v0

    .line 79
    .local v10, "bytesToSearch":I
    new-instance v8, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 80
    .local v8, "buffer":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v9, 0x0

    .line 81
    .local v9, "bytesSearched":I
    const/4 v13, 0x0

    .line 82
    .local v13, "foundGoodFileType":Z
    const/4 v12, 0x0

    .line 83
    .local v12, "foundFragment":Z
    :goto_0
    if-ge v9, v10, :cond_9

    .line 85
    const/16 v14, 0x8

    .line 86
    .local v14, "headerSize":I
    iget-object v0, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v14}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 87
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 88
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 89
    .local v6, "atomSize":J
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 90
    .local v5, "atomType":I
    const-wide/16 v18, 0x1

    cmp-long v18, v6, v18

    if-nez v18, :cond_2

    .line 91
    iget-object v0, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v14, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 92
    const/16 v14, 0x10

    .line 93
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    .line 96
    :cond_2
    int-to-long v0, v14

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_3

    .line 97
    const/16 v18, 0x0

    .line 132
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v14    # "headerSize":I
    :goto_1
    return v18

    .line 99
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v14    # "headerSize":I
    :cond_3
    long-to-int v0, v6

    move/from16 v18, v0

    sub-int v4, v18, v14

    .line 100
    .local v4, "atomDataSize":I
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ftyp:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 101
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    .line 102
    const/16 v18, 0x0

    goto :goto_1

    .line 104
    :cond_4
    add-int/lit8 v18, v4, -0x8

    div-int/lit8 v11, v18, 0x4

    .line 105
    .local v11, "compatibleBrandsCount":I
    iget-object v0, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v20, v11, 0x2

    mul-int/lit8 v20, v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    add-int/lit8 v18, v11, 0x2

    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 107
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    .line 106
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 112
    const/4 v13, 0x1

    .line 117
    :cond_7
    if-nez v13, :cond_b

    .line 118
    const/16 v18, 0x0

    goto :goto_1

    .line 120
    .end local v11    # "compatibleBrandsCount":I
    .end local v15    # "i":I
    :cond_8
    sget v18, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    .line 121
    const/4 v12, 0x1

    .line 132
    .end local v4    # "atomDataSize":I
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v14    # "headerSize":I
    :cond_9
    if-eqz v13, :cond_c

    move/from16 v0, p2

    if-ne v0, v12, :cond_c

    const/16 v18, 0x1

    goto :goto_1

    .line 123
    .restart local v4    # "atomDataSize":I
    .restart local v5    # "atomType":I
    .restart local v6    # "atomSize":J
    .restart local v14    # "headerSize":I
    :cond_a
    if-eqz v4, :cond_b

    .line 125
    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_9

    .line 128
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 130
    :cond_b
    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v18, v18, v6

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 131
    goto/16 :goto_0

    .line 132
    .end local v4    # "atomDataSize":I
    .end local v5    # "atomType":I
    .end local v6    # "atomSize":J
    .end local v14    # "headerSize":I
    :cond_c
    const/16 v18, 0x0

    goto :goto_1
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 2
    .param p0, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)Z

    move-result v0

    return v0
.end method
