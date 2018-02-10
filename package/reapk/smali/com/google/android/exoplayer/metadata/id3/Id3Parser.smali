.class public final Lcom/google/android/exoplayer/metadata/id3/Id3Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delimiterLength(I)I
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 68
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1
    .param p0, "encodingByte"    # I

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    .line 125
    const-string v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 119
    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    .line 121
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOf([BIB)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "key"    # B

    .prologue
    .line 40
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 41
    aget-byte v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 45
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 40
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static indexOfEOS([BII)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "encodingByte"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-static {p0, p1, v2}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOf([BIB)I

    move-result v0

    .line 52
    .local v0, "terminationPos":I
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    move v1, v0

    .line 64
    :goto_0
    return v1

    .line 61
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOf([BIB)I

    move-result v0

    .line 57
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 58
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    move v1, v0

    .line 59
    goto :goto_0

    .line 64
    :cond_3
    array-length v1, p0

    goto :goto_0
.end method

.method private static parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 13
    .param p0, "id3Buffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 81
    .local v2, "id1":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 82
    .local v3, "id2":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 83
    .local v4, "id3":I
    const/16 v6, 0x49

    if-ne v2, v6, :cond_0

    const/16 v6, 0x44

    if-ne v3, v6, :cond_0

    const/16 v6, 0x33

    if-eq v4, v6, :cond_1

    .line 84
    :cond_0
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_1
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 89
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    .line 92
    .local v5, "id3Size":I
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 94
    .local v0, "extendedHeaderSize":I
    const/4 v6, 0x4

    if-le v0, v6, :cond_2

    .line 95
    add-int/lit8 v6, v0, -0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 97
    :cond_2
    sub-int/2addr v5, v0

    .line 101
    .end local v0    # "extendedHeaderSize":I
    :cond_3
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_4

    .line 102
    add-int/lit8 v5, v5, -0xa

    .line 105
    :cond_4
    return v5
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parse([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/List;
    .locals 36
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/metadata/id3/Id3Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v20, "id3Frames":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;"
    new-instance v19, Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 138
    .local v19, "id3Data":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v21

    .line 140
    .local v21, "id3Size":I
    :goto_0
    if-lez v21, :cond_0

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v14

    .line 142
    .local v14, "frameId0":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 143
    .local v15, "frameId1":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    .line 144
    .local v16, "frameId2":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v17

    .line 145
    .local v17, "frameId3":I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v18

    .line 146
    .local v18, "frameSize":I
    const/16 v31, 0x1

    move/from16 v0, v18

    move/from16 v1, v31

    if-gt v0, v1, :cond_1

    .line 205
    .end local v14    # "frameId0":I
    .end local v15    # "frameId1":I
    .end local v16    # "frameId2":I
    .end local v17    # "frameId3":I
    .end local v18    # "frameSize":I
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    return-object v31

    .line 151
    .restart local v14    # "frameId0":I
    .restart local v15    # "frameId1":I
    .restart local v16    # "frameId2":I
    .restart local v17    # "frameId3":I
    .restart local v18    # "frameSize":I
    :cond_1
    const/16 v31, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 153
    const/16 v31, 0x54

    move/from16 v0, v31

    if-ne v14, v0, :cond_2

    const/16 v31, 0x58

    move/from16 v0, v31

    if-ne v15, v0, :cond_2

    const/16 v31, 0x58

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    const/16 v31, 0x58

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 154
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 155
    .local v8, "encoding":I
    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "charset":Ljava/lang/String;
    add-int/lit8 v31, v18, -0x1

    move/from16 v0, v31

    new-array v13, v0, [B

    .line 157
    .local v13, "frame":[B
    const/16 v31, 0x0

    add-int/lit8 v32, v18, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 159
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v13, v0, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEOS([BII)I

    move-result v12

    .line 160
    .local v12, "firstZeroIndex":I
    new-instance v5, Ljava/lang/String;

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-direct {v5, v13, v0, v12, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 161
    .local v5, "description":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v31

    add-int v30, v12, v31

    .line 162
    .local v30, "valueStartIndex":I
    move/from16 v0, v30

    invoke-static {v13, v0, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEOS([BII)I

    move-result v29

    .line 163
    .local v29, "valueEndIndex":I
    new-instance v28, Ljava/lang/String;

    sub-int v31, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v13, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 164
    .local v28, "value":Ljava/lang/String;
    new-instance v31, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4    # "charset":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v8    # "encoding":I
    .end local v12    # "firstZeroIndex":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueEndIndex":I
    .end local v30    # "valueStartIndex":I
    :goto_1
    add-int/lit8 v31, v18, 0xa

    sub-int v21, v21, v31

    .line 203
    goto/16 :goto_0

    .line 165
    .end local v13    # "frame":[B
    :cond_2
    const/16 v31, 0x50

    move/from16 v0, v31

    if-ne v14, v0, :cond_3

    const/16 v31, 0x52

    move/from16 v0, v31

    if-ne v15, v0, :cond_3

    const/16 v31, 0x49

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    const/16 v31, 0x56

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 167
    move/from16 v0, v18

    new-array v13, v0, [B

    .line 168
    .restart local v13    # "frame":[B
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 170
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v13, v0, v1}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOf([BIB)I

    move-result v12

    .line 171
    .restart local v12    # "firstZeroIndex":I
    new-instance v25, Ljava/lang/String;

    const/16 v31, 0x0

    const-string v32, "ISO-8859-1"

    move-object/from16 v0, v25

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v13, v1, v12, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 172
    .local v25, "owner":Ljava/lang/String;
    sub-int v31, v18, v12

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 173
    .local v26, "privateData":[B
    add-int/lit8 v31, v12, 0x1

    const/16 v32, 0x0

    sub-int v33, v18, v12

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v26

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    new-instance v31, Lcom/google/android/exoplayer/metadata/id3/PrivFrame;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    .end local v12    # "firstZeroIndex":I
    .end local v13    # "frame":[B
    .end local v25    # "owner":Ljava/lang/String;
    .end local v26    # "privateData":[B
    :cond_3
    const/16 v31, 0x47

    move/from16 v0, v31

    if-ne v14, v0, :cond_4

    const/16 v31, 0x45

    move/from16 v0, v31

    if-ne v15, v0, :cond_4

    const/16 v31, 0x4f

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const/16 v31, 0x42

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 177
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 178
    .restart local v8    # "encoding":I
    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "charset":Ljava/lang/String;
    add-int/lit8 v31, v18, -0x1

    move/from16 v0, v31

    new-array v13, v0, [B

    .line 180
    .restart local v13    # "frame":[B
    const/16 v31, 0x0

    add-int/lit8 v32, v18, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v13, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 182
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v13, v0, v1}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOf([BIB)I

    move-result v12

    .line 183
    .restart local v12    # "firstZeroIndex":I
    new-instance v22, Ljava/lang/String;

    const/16 v31, 0x0

    const-string v32, "ISO-8859-1"

    move-object/from16 v0, v22

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v13, v1, v12, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 184
    .local v22, "mimeType":Ljava/lang/String;
    add-int/lit8 v11, v12, 0x1

    .line 185
    .local v11, "filenameStartIndex":I
    invoke-static {v13, v11, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEOS([BII)I

    move-result v10

    .line 186
    .local v10, "filenameEndIndex":I
    new-instance v9, Ljava/lang/String;

    sub-int v31, v10, v11

    move/from16 v0, v31

    invoke-direct {v9, v13, v11, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 187
    .local v9, "filename":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v31

    add-int v7, v10, v31

    .line 188
    .local v7, "descriptionStartIndex":I
    invoke-static {v13, v7, v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->indexOfEOS([BII)I

    move-result v6

    .line 189
    .local v6, "descriptionEndIndex":I
    new-instance v5, Ljava/lang/String;

    sub-int v31, v6, v7

    move/from16 v0, v31

    invoke-direct {v5, v13, v7, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 191
    .restart local v5    # "description":Ljava/lang/String;
    add-int/lit8 v31, v18, -0x1

    sub-int v31, v31, v6

    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v32

    sub-int v24, v31, v32

    .line 192
    .local v24, "objectDataSize":I
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 193
    .local v23, "objectData":[B
    invoke-static {v8}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v31

    add-int v31, v31, v6

    const/16 v32, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v23

    move/from16 v2, v32

    move/from16 v3, v24

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    new-instance v31, Lcom/google/android/exoplayer/metadata/id3/GeobFrame;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v9, v5, v2}, Lcom/google/android/exoplayer/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    .end local v4    # "charset":Ljava/lang/String;
    .end local v5    # "description":Ljava/lang/String;
    .end local v6    # "descriptionEndIndex":I
    .end local v7    # "descriptionStartIndex":I
    .end local v8    # "encoding":I
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "filenameEndIndex":I
    .end local v11    # "filenameStartIndex":I
    .end local v12    # "firstZeroIndex":I
    .end local v13    # "frame":[B
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "objectData":[B
    .end local v24    # "objectDataSize":I
    :cond_4
    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v32, "%c%c%c%c"

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 197
    .local v27, "type":Ljava/lang/String;
    move/from16 v0, v18

    new-array v13, v0, [B

    .line 198
    .restart local v13    # "frame":[B
    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 199
    new-instance v31, Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v13}, Lcom/google/android/exoplayer/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
