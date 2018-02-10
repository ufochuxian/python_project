.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 868
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v3, v0, p1

    if-ge v3, p2, :cond_2

    .line 869
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 870
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 871
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v4, "childAtomSize should be positive"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 872
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 873
    .local v2, "childType":I
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v2, v3, :cond_1

    .line 878
    .end local v0    # "childAtomPosition":I
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :goto_2
    return v0

    .line 871
    .restart local v0    # "childAtomPosition":I
    .restart local v1    # "childAtomSize":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 876
    .restart local v2    # "childType":I
    :cond_1
    add-int/2addr v0, v1

    .line 877
    goto :goto_0

    .line 878
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 23
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "durationUs"    # J
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "isQuickTime"    # Z
    .param p9, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p10, "entryIndex"    # I

    .prologue
    .line 768
    add-int/lit8 v4, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 770
    const/16 v21, 0x0

    .line 771
    .local v21, "quickTimeSoundDescriptionVersion":I
    if-eqz p8, :cond_5

    .line 772
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v21

    .line 774
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 779
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 780
    .local v10, "channelCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 781
    .local v7, "sampleSize":I
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v11

    .line 784
    .local v11, "sampleRate":I
    if-lez v21, :cond_0

    .line 785
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 786
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    .line 787
    const/16 v4, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 792
    :cond_0
    const/4 v5, 0x0

    .line 793
    .local v5, "mimeType":Ljava/lang/String;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 794
    const-string v5, "audio/ac3"

    .line 809
    :cond_1
    :goto_1
    const/16 v19, 0x0

    .line 810
    .local v19, "initializationData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 811
    .local v15, "childAtomPosition":I
    :goto_2
    sub-int v4, v15, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_15

    .line 812
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 814
    .local v16, "childAtomSize":I
    if-lez v16, :cond_d

    const/4 v4, 0x1

    :goto_3
    const-string v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v17

    .line 816
    .local v17, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 817
    :cond_2
    const/16 v18, -0x1

    .line 818
    .local v18, "esdsAtomPosition":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_e

    .line 819
    move/from16 v18, v15

    .line 823
    :cond_3
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_f

    .line 824
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v20

    .line 825
    .local v20, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 826
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "initializationData":[B
    check-cast v19, [B

    .line 827
    .restart local v19    # "initializationData":[B
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 830
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v14

    .line 831
    .local v14, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 832
    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 853
    .end local v14    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v18    # "esdsAtomPosition":I
    .end local v20    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_4
    :goto_5
    add-int v15, v15, v16

    .line 854
    goto :goto_2

    .line 776
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "sampleSize":I
    .end local v10    # "channelCount":I
    .end local v11    # "sampleRate":I
    .end local v15    # "childAtomPosition":I
    .end local v16    # "childAtomSize":I
    .end local v17    # "childAtomType":I
    .end local v19    # "initializationData":[B
    :cond_5
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    .line 795
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v7    # "sampleSize":I
    .restart local v10    # "channelCount":I
    .restart local v11    # "sampleRate":I
    :cond_6
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 796
    const-string v5, "audio/eac3"

    goto/16 :goto_1

    .line 797
    :cond_7
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    .line 798
    const-string v5, "audio/vnd.dts"

    goto/16 :goto_1

    .line 799
    :cond_8
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_9

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 800
    :cond_9
    const-string v5, "audio/vnd.dts.hd"

    goto/16 :goto_1

    .line 801
    :cond_a
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 802
    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1

    .line 803
    :cond_b
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    .line 804
    const-string v5, "audio/3gpp"

    goto/16 :goto_1

    .line 805
    :cond_c
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 806
    const-string v5, "audio/amr-wb"

    goto/16 :goto_1

    .line 814
    .restart local v15    # "childAtomPosition":I
    .restart local v16    # "childAtomSize":I
    .restart local v19    # "initializationData":[B
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 820
    .restart local v17    # "childAtomType":I
    .restart local v18    # "esdsAtomPosition":I
    :cond_e
    if-eqz p8, :cond_3

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_3

    .line 821
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I

    move-result v18

    goto/16 :goto_4

    .line 834
    :cond_f
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 835
    move-object/from16 v0, p9

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v6

    aput-object v6, v4, p10

    goto :goto_5

    .line 837
    .end local v18    # "esdsAtomPosition":I
    :cond_10
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_12

    .line 840
    add-int/lit8 v4, v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 841
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 863
    .end local v7    # "sampleSize":I
    .end local v16    # "childAtomSize":I
    .end local v17    # "childAtomType":I
    :cond_11
    :goto_6
    return-void

    .line 843
    .restart local v7    # "sampleSize":I
    .restart local v16    # "childAtomSize":I
    .restart local v17    # "childAtomType":I
    :cond_12
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_13

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 844
    add-int/lit8 v4, v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 845
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_6

    .line 847
    :cond_13
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_14

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_14

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_14

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    :cond_14
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    .line 849
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v12, 0x0

    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v13}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    .end local v7    # "sampleSize":I
    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_6

    .line 857
    .end local v16    # "childAtomSize":I
    .end local v17    # "childAtomType":I
    .restart local v7    # "sampleSize":I
    :cond_15
    if-eqz v5, :cond_11

    .line 861
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    if-nez v19, :cond_16

    const/4 v12, 0x0

    :goto_7
    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v13}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_6

    .line 862
    :cond_16
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_7
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 616
    add-int/lit8 v7, p1, 0x8

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 618
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x3

    add-int/lit8 v2, v7, 0x1

    .line 619
    .local v2, "nalUnitLengthFieldLength":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 620
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 622
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/high16 v5, 0x3f800000    # 1.0f

    .line 624
    .local v5, "pixelWidthAspectRatio":F
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v4, v7, 0x1f

    .line 625
    .local v4, "numSequenceParameterSets":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 626
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 629
    .local v3, "numPictureParameterSets":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 630
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_2
    if-lez v4, :cond_3

    .line 635
    new-instance v6, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 637
    .local v6, "spsDataBitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 638
    invoke-static {v6}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;

    move-result-object v7

    iget v5, v7, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil$SpsData;->pixelWidthAspectRatio:F

    .line 641
    .end local v6    # "spsDataBitArray":Lcom/google/android/exoplayer/util/ParsableBitArray;
    :cond_3
    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v7, v0, v2, v5}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v7
.end method

.method private static parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 13
    .param p0, "edtsAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 693
    if-eqz p0, :cond_0

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .local v2, "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_1

    .line 694
    .end local v2    # "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_0
    invoke-static {v10, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 713
    :goto_0
    return-object v9

    .line 696
    .restart local v2    # "elst":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_1
    iget-object v3, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 697
    .local v3, "elstData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 698
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 699
    .local v5, "fullAtom":I
    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 700
    .local v8, "version":I
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 701
    .local v4, "entryCount":I
    new-array v0, v4, [J

    .line 702
    .local v0, "editListDurations":[J
    new-array v1, v4, [J

    .line 703
    .local v1, "editListMediaTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 704
    if-ne v8, v12, :cond_2

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    :goto_2
    aput-wide v10, v0, v6

    .line 705
    if-ne v8, v12, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    :goto_3
    aput-wide v10, v1, v6

    .line 706
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v7

    .line 707
    .local v7, "mediaRateInteger":I
    if-eq v7, v12, :cond_4

    .line 709
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 704
    .end local v7    # "mediaRateInteger":I
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    goto :goto_2

    .line 705
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v10, v9

    goto :goto_3

    .line 711
    .restart local v7    # "mediaRateInteger":I
    :cond_4
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 703
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 713
    .end local v7    # "mediaRateInteger":I
    :cond_5
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 11
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x7f

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 883
    add-int/lit8 v6, p1, 0x8

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 885
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 886
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 887
    .local v5, "varIntByte":I
    :goto_0
    if-le v5, v9, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 892
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 893
    .local v0, "flags":I
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_1

    .line 894
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 896
    :cond_1
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_2

    .line 897
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 899
    :cond_2
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_3

    .line 900
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 904
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 905
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 906
    :goto_1
    if-le v5, v9, :cond_4

    .line 907
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    goto :goto_1

    .line 911
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 913
    .local v3, "objectTypeIndication":I
    sparse-switch v3, :sswitch_data_0

    .line 947
    const/4 v2, 0x0

    .line 951
    .local v2, "mimeType":Ljava/lang/String;
    :goto_2
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 954
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 955
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 956
    and-int/lit8 v4, v5, 0x7f

    .line 957
    .local v4, "varInt":I
    :goto_3
    if-le v5, v9, :cond_5

    .line 958
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 959
    shl-int/lit8 v4, v4, 0x8

    .line 960
    and-int/lit8 v6, v5, 0x7f

    or-int/2addr v4, v6

    goto :goto_3

    .line 915
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v4    # "varInt":I
    :sswitch_0
    const-string v2, "audio/mpeg"

    .line 916
    .restart local v2    # "mimeType":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 964
    :goto_4
    return-object v6

    .line 918
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_1
    const-string v2, "video/mp4v-es"

    .line 919
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 921
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_2
    const-string v2, "video/avc"

    .line 922
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 924
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_3
    const-string v2, "video/hevc"

    .line 925
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 930
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_4
    const-string v2, "audio/mp4a-latm"

    .line 931
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 933
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_5
    const-string v2, "audio/ac3"

    .line 934
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 936
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_6
    const-string v2, "audio/eac3"

    .line 937
    .restart local v2    # "mimeType":Ljava/lang/String;
    goto :goto_2

    .line 940
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_7
    const-string v2, "audio/vnd.dts"

    .line 941
    .restart local v2    # "mimeType":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_4

    .line 944
    .end local v2    # "mimeType":Ljava/lang/String;
    :sswitch_8
    const-string v2, "audio/vnd.dts.hd"

    .line 945
    .restart local v2    # "mimeType":Ljava/lang/String;
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_4

    .line 962
    .restart local v4    # "varInt":I
    :cond_5
    new-array v1, v4, [B

    .line 963
    .local v1, "initializationData":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 964
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_4

    .line 913
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 474
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 14
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    add-int/lit8 v11, p1, 0x8

    add-int/lit8 v11, v11, 0x15

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 647
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    and-int/lit8 v7, v11, 0x3

    .line 650
    .local v7, "lengthSizeMinusOne":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 651
    .local v9, "numberOfArrays":I
    const/4 v2, 0x0

    .line 652
    .local v2, "csdLength":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 653
    .local v3, "csdStartPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 654
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 655
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 656
    .local v10, "numberOfNalUnits":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 658
    .local v8, "nalUnitLength":I
    add-int/lit8 v11, v8, 0x4

    add-int/2addr v2, v11

    .line 659
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 656
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 653
    .end local v8    # "nalUnitLength":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 664
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 665
    new-array v0, v2, [B

    .line 666
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 667
    .local v1, "bufferPosition":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_3

    .line 668
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 669
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 670
    .restart local v10    # "numberOfNalUnits":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    if-ge v6, v10, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 672
    .restart local v8    # "nalUnitLength":I
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v13, v13

    invoke-static {v11, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    add-int/2addr v1, v11

    .line 674
    iget-object v11, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v12

    invoke-static {v11, v12, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/2addr v1, v8

    .line 676
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 670
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 667
    .end local v8    # "nalUnitLength":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 680
    .end local v6    # "j":I
    .end local v10    # "numberOfNalUnits":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v5, 0x0

    .line 681
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11

    .line 680
    .end local v5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4
.end method

.method private static parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 10
    .param p0, "ilst"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v9, 0x4

    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-lez v8, :cond_6

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 366
    .local v6, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int v0, v6, v8

    .line 367
    .local v0, "endPosition":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 368
    .local v7, "type":I
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v7, v8, :cond_5

    .line 369
    const/4 v3, 0x0

    .line 370
    .local v3, "lastCommentMean":Ljava/lang/String;
    const/4 v4, 0x0

    .line 371
    .local v4, "lastCommentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 372
    .local v2, "lastCommentData":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-ge v8, v0, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    add-int/lit8 v5, v8, -0xc

    .line 374
    .local v5, "length":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 375
    .local v1, "key":I
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 376
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v1, v8, :cond_1

    .line 377
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 378
    :cond_1
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v1, v8, :cond_2

    .line 379
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 380
    :cond_2
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v1, v8, :cond_3

    .line 381
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 382
    add-int/lit8 v8, v5, -0x4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 384
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 387
    .end local v1    # "key":I
    .end local v5    # "length":I
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    const-string v8, "com.apple.iTunes"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    invoke-static {v4, v2}, Lcom/google/android/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v8

    .line 394
    .end local v0    # "endPosition":I
    .end local v2    # "lastCommentData":Ljava/lang/String;
    .end local v3    # "lastCommentMean":Ljava/lang/String;
    .end local v4    # "lastCommentName":Ljava/lang/String;
    .end local v6    # "position":I
    .end local v7    # "type":I
    :goto_2
    return-object v8

    .line 391
    .restart local v0    # "endPosition":I
    .restart local v6    # "position":I
    .restart local v7    # "type":I
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 394
    .end local v0    # "endPosition":I
    .end local v6    # "position":I
    .end local v7    # "type":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 8
    .param p0, "mdhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 486
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 488
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 489
    .local v3, "version":I
    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 491
    .local v4, "timescale":J
    if-nez v3, :cond_0

    const/4 v7, 0x4

    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 493
    .local v2, "languageCode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v2, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "language":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 489
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "languageCode":I
    .end local v4    # "timescale":J
    :cond_1
    const/16 v6, 0x10

    goto :goto_0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "mvhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v2, 0x8

    .line 404
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 407
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 409
    .local v1, "version":I
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 411
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    return-wide v2

    .line 409
    :cond_0
    const/16 v2, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 740
    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 741
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 742
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 743
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 9
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 747
    add-int/lit8 v2, p1, 0x8

    .line 748
    .local v2, "childPosition":I
    :goto_0
    sub-int v8, v2, p1

    if-ge v8, p2, :cond_2

    .line 749
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 751
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 752
    .local v1, "childAtomType":I
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v1, v8, :cond_1

    .line 753
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 754
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 755
    .local v6, "firstInt":I
    shr-int/lit8 v8, v6, 0x8

    if-ne v8, v4, :cond_0

    .line 756
    .local v4, "defaultIsEncrypted":Z
    :goto_1
    and-int/lit16 v3, v6, 0xff

    .line 757
    .local v3, "defaultInitVectorSize":I
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 758
    .local v5, "defaultKeyId":[B
    array-length v8, v5

    invoke-virtual {p0, v5, v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 759
    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v7, v4, v3, v5}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    .line 763
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    .end local v3    # "defaultInitVectorSize":I
    .end local v4    # "defaultIsEncrypted":Z
    .end local v5    # "defaultKeyId":[B
    .end local v6    # "firstInt":I
    :goto_2
    return-object v7

    .restart local v0    # "childAtomSize":I
    .restart local v1    # "childAtomType":I
    .restart local v6    # "firstInt":I
    :cond_0
    move v4, v7

    .line 755
    goto :goto_1

    .line 761
    .end local v6    # "firstInt":I
    :cond_1
    add-int/2addr v2, v0

    .line 762
    goto :goto_0

    .line 763
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 5
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .prologue
    .line 717
    add-int/lit8 v2, p1, 0x8

    .line 719
    .local v2, "childPosition":I
    const/4 v3, 0x0

    .line 720
    .local v3, "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    :goto_0
    sub-int v4, v2, p1

    if-ge v4, p2, :cond_3

    .line 721
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 722
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 723
    .local v0, "childAtomSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 724
    .local v1, "childAtomType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v1, v4, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 733
    :cond_0
    :goto_1
    add-int/2addr v2, v0

    .line 734
    goto :goto_0

    .line 726
    :cond_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v1, v4, :cond_2

    .line 727
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 729
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 730
    :cond_2
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v1, v4, :cond_0

    .line 731
    invoke-static {p0, v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v3

    goto :goto_1

    .line 736
    .end local v0    # "childAtomSize":I
    .end local v1    # "childAtomType":I
    :cond_3
    return-object v3
.end method

.method public static parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 72
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "stblAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 92
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v63, v0

    .line 96
    .local v63, "stsz":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 97
    .local v21, "chunkOffsetsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v21, :cond_0

    .line 98
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v21

    .line 100
    :cond_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    .line 102
    .local v20, "chunkOffsets":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v60, v0

    .line 104
    .local v60, "stsc":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v64, v0

    .line 106
    .local v64, "stts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v62

    .line 107
    .local v62, "stssAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v62, :cond_1

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v61, v0

    .line 109
    .local v61, "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_0
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v25

    .line 110
    .local v25, "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v24, v0

    .line 113
    .local v24, "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_1
    const/16 v4, 0xc

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 114
    invoke-virtual/range {v63 .. v63}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v33

    .line 115
    .local v33, "fixedSampleSize":I
    invoke-virtual/range {v63 .. v63}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v56

    .line 117
    .local v56, "sampleCount":I
    move/from16 v0, v56

    new-array v5, v0, [J

    .line 118
    .local v5, "offsets":[J
    move/from16 v0, v56

    new-array v6, v0, [I

    .line 119
    .local v6, "sizes":[I
    const/4 v7, 0x0

    .line 120
    .local v7, "maximumSize":I
    move/from16 v0, v56

    new-array v8, v0, [J

    .line 121
    .local v8, "timestamps":[J
    move/from16 v0, v56

    new-array v9, v0, [I

    .line 122
    .local v9, "flags":[I
    if-nez v56, :cond_3

    .line 123
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 330
    :goto_2
    return-object v4

    .line 107
    .end local v5    # "offsets":[J
    .end local v6    # "sizes":[I
    .end local v7    # "maximumSize":I
    .end local v8    # "timestamps":[J
    .end local v9    # "flags":[I
    .end local v24    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .end local v25    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v33    # "fixedSampleSize":I
    .end local v56    # "sampleCount":I
    .end local v61    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_1
    const/16 v61, 0x0

    goto :goto_0

    .line 110
    .restart local v25    # "cttsAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v61    # "stss":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :cond_2
    const/16 v24, 0x0

    goto :goto_1

    .line 127
    .restart local v5    # "offsets":[J
    .restart local v6    # "sizes":[I
    .restart local v7    # "maximumSize":I
    .restart local v8    # "timestamps":[J
    .restart local v9    # "flags":[I
    .restart local v24    # "ctts":Lcom/google/android/exoplayer/util/ParsableByteArray;
    .restart local v33    # "fixedSampleSize":I
    .restart local v56    # "sampleCount":I
    :cond_3
    const/16 v4, 0xc

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 128
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 130
    .local v18, "chunkCount":I
    const/16 v4, 0xc

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 131
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v52, v4, -0x1

    .line 132
    .local v52, "remainingSamplesPerChunkChanges":I
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_e

    const/4 v4, 0x1

    :goto_3
    const-string v12, "stsc first chunk must be 1"

    invoke-static {v4, v12}, Lcom/google/android/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v58

    .line 134
    .local v58, "samplesPerChunk":I
    const/4 v4, 0x4

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 135
    const/16 v41, -0x1

    .line 136
    .local v41, "nextSamplesPerChunkChangeChunkIndex":I
    if-lez v52, :cond_4

    .line 138
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .line 141
    :cond_4
    const/16 v19, 0x0

    .line 142
    .local v19, "chunkIndex":I
    move/from16 v51, v58

    .line 145
    .local v51, "remainingSamplesInChunk":I
    const/16 v4, 0xc

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 146
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v54, v4, -0x1

    .line 147
    .local v54, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v43

    .line 148
    .local v43, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v65

    .line 151
    .local v65, "timestampDeltaInTimeUnits":I
    const/16 v50, 0x0

    .line 152
    .local v50, "remainingSamplesAtTimestampOffset":I
    const/16 v55, 0x0

    .line 153
    .local v55, "remainingTimestampOffsetChanges":I
    const/16 v68, 0x0

    .line 154
    .local v68, "timestampOffset":I
    if-eqz v24, :cond_5

    .line 155
    const/16 v4, 0xc

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 156
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v55, v4, -0x1

    .line 157
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v50

    .line 163
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v68

    .line 166
    :cond_5
    const/16 v42, -0x1

    .line 167
    .local v42, "nextSynchronizationSampleIndex":I
    const/16 v53, 0x0

    .line 168
    .local v53, "remainingSynchronizationSamples":I
    if-eqz v61, :cond_6

    .line 169
    const/16 v4, 0xc

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 170
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v53

    .line 171
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v42, v4, -0x1

    .line 176
    :cond_6
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v12, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    if-ne v4, v12, :cond_f

    .line 177
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v44

    .line 182
    .local v44, "offsetBytes":J
    :goto_4
    const-wide/16 v70, 0x0

    .line 183
    .local v70, "timestampTimeUnits":J
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v56

    if-ge v0, v1, :cond_14

    .line 184
    aput-wide v44, v5, v36

    .line 185
    if-nez v33, :cond_10

    invoke-virtual/range {v63 .. v63}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    :goto_6
    aput v4, v6, v36

    .line 186
    aget v4, v6, v36

    if-le v4, v7, :cond_7

    .line 187
    aget v7, v6, v36

    .line 189
    :cond_7
    move/from16 v0, v68

    int-to-long v12, v0

    add-long v12, v12, v70

    aput-wide v12, v8, v36

    .line 192
    if-nez v61, :cond_11

    const/4 v4, 0x1

    :goto_7
    aput v4, v9, v36

    .line 193
    move/from16 v0, v36

    move/from16 v1, v42

    if-ne v0, v1, :cond_8

    .line 194
    const/4 v4, 0x1

    aput v4, v9, v36

    .line 195
    add-int/lit8 v53, v53, -0x1

    .line 196
    if-lez v53, :cond_8

    .line 197
    invoke-virtual/range {v61 .. v61}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v42, v4, -0x1

    .line 202
    :cond_8
    move/from16 v0, v65

    int-to-long v12, v0

    add-long v70, v70, v12

    .line 203
    add-int/lit8 v43, v43, -0x1

    .line 204
    if-nez v43, :cond_9

    if-lez v54, :cond_9

    .line 205
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v43

    .line 206
    invoke-virtual/range {v64 .. v64}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v65

    .line 207
    add-int/lit8 v54, v54, -0x1

    .line 211
    :cond_9
    if-eqz v24, :cond_a

    .line 212
    add-int/lit8 v50, v50, -0x1

    .line 213
    if-nez v50, :cond_a

    if-lez v55, :cond_a

    .line 214
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v50

    .line 216
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v68

    .line 217
    add-int/lit8 v55, v55, -0x1

    .line 222
    :cond_a
    add-int/lit8 v51, v51, -0x1

    .line 223
    if-nez v51, :cond_13

    .line 224
    add-int/lit8 v19, v19, 0x1

    .line 225
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 226
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v12, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    if-ne v4, v12, :cond_12

    .line 227
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v44

    .line 234
    :cond_b
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    .line 235
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v58

    .line 236
    const/4 v4, 0x4

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 237
    add-int/lit8 v52, v52, -0x1

    .line 238
    if-lez v52, :cond_c

    .line 239
    invoke-virtual/range {v60 .. v60}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .line 244
    :cond_c
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 245
    move/from16 v51, v58

    .line 183
    :cond_d
    :goto_9
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_5

    .line 132
    .end local v19    # "chunkIndex":I
    .end local v36    # "i":I
    .end local v41    # "nextSamplesPerChunkChangeChunkIndex":I
    .end local v42    # "nextSynchronizationSampleIndex":I
    .end local v43    # "remainingSamplesAtTimestampDelta":I
    .end local v44    # "offsetBytes":J
    .end local v50    # "remainingSamplesAtTimestampOffset":I
    .end local v51    # "remainingSamplesInChunk":I
    .end local v53    # "remainingSynchronizationSamples":I
    .end local v54    # "remainingTimestampDeltaChanges":I
    .end local v55    # "remainingTimestampOffsetChanges":I
    .end local v58    # "samplesPerChunk":I
    .end local v65    # "timestampDeltaInTimeUnits":I
    .end local v68    # "timestampOffset":I
    .end local v70    # "timestampTimeUnits":J
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 179
    .restart local v19    # "chunkIndex":I
    .restart local v41    # "nextSamplesPerChunkChangeChunkIndex":I
    .restart local v42    # "nextSynchronizationSampleIndex":I
    .restart local v43    # "remainingSamplesAtTimestampDelta":I
    .restart local v50    # "remainingSamplesAtTimestampOffset":I
    .restart local v51    # "remainingSamplesInChunk":I
    .restart local v53    # "remainingSynchronizationSamples":I
    .restart local v54    # "remainingTimestampDeltaChanges":I
    .restart local v55    # "remainingTimestampOffsetChanges":I
    .restart local v58    # "samplesPerChunk":I
    .restart local v65    # "timestampDeltaInTimeUnits":I
    .restart local v68    # "timestampOffset":I
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v44

    .restart local v44    # "offsetBytes":J
    goto/16 :goto_4

    .restart local v36    # "i":I
    .restart local v70    # "timestampTimeUnits":J
    :cond_10
    move/from16 v4, v33

    .line 185
    goto/16 :goto_6

    .line 192
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 229
    :cond_12
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v44

    goto :goto_8

    .line 249
    :cond_13
    aget v4, v6, v36

    int-to-long v12, v4

    add-long v44, v44, v12

    goto :goto_9

    .line 254
    :cond_14
    if-nez v53, :cond_15

    const/4 v4, 0x1

    :goto_a
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 255
    if-nez v43, :cond_16

    const/4 v4, 0x1

    :goto_b
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 256
    if-nez v51, :cond_17

    const/4 v4, 0x1

    :goto_c
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 257
    if-nez v54, :cond_18

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 258
    if-nez v55, :cond_19

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v4, :cond_1a

    .line 261
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v8, v12, v13, v14, v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 262
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2

    .line 254
    :cond_15
    const/4 v4, 0x0

    goto :goto_a

    .line 255
    :cond_16
    const/4 v4, 0x0

    goto :goto_b

    .line 256
    :cond_17
    const/4 v4, 0x0

    goto :goto_c

    .line 257
    :cond_18
    const/4 v4, 0x0

    goto :goto_d

    .line 258
    :cond_19
    const/4 v4, 0x0

    goto :goto_e

    .line 270
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v12, 0x0

    aget-wide v12, v4, v12

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-nez v4, :cond_1c

    .line 274
    const/16 v36, 0x0

    :goto_f
    array-length v4, v8

    move/from16 v0, v36

    if-ge v0, v4, :cond_1b

    .line 275
    aget-wide v12, v8, v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    sub-long v10, v12, v14

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    aput-wide v12, v8, v36

    .line 274
    add-int/lit8 v36, v36, 0x1

    goto :goto_f

    .line 277
    :cond_1b
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_2

    .line 281
    :cond_1c
    const/16 v29, 0x0

    .line 282
    .local v29, "editedSampleCount":I
    const/16 v40, 0x0

    .line 283
    .local v40, "nextSampleIndex":I
    const/16 v22, 0x0

    .line 284
    .local v22, "copyMetadata":Z
    const/16 v36, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_1f

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v38, v4, v36

    .line 286
    .local v38, "mediaTime":J
    const-wide/16 v12, -0x1

    cmp-long v4, v38, v12

    if-eqz v4, :cond_1d

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v36

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 288
    .local v10, "duration":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v38

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v59

    .line 289
    .local v59, "startIndex":I
    add-long v12, v38, v10

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v12, v13, v4, v14}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v32

    .line 290
    .local v32, "endIndex":I
    sub-int v4, v32, v59

    add-int v29, v29, v4

    .line 291
    move/from16 v0, v40

    move/from16 v1, v59

    if-eq v0, v1, :cond_1e

    const/4 v4, 0x1

    :goto_11
    or-int v22, v22, v4

    .line 292
    move/from16 v40, v32

    .line 284
    .end local v10    # "duration":J
    .end local v32    # "endIndex":I
    .end local v59    # "startIndex":I
    :cond_1d
    add-int/lit8 v36, v36, 0x1

    goto :goto_10

    .line 291
    .restart local v10    # "duration":J
    .restart local v32    # "endIndex":I
    .restart local v59    # "startIndex":I
    :cond_1e
    const/4 v4, 0x0

    goto :goto_11

    .line 295
    .end local v10    # "duration":J
    .end local v32    # "endIndex":I
    .end local v38    # "mediaTime":J
    .end local v59    # "startIndex":I
    :cond_1f
    move/from16 v0, v29

    move/from16 v1, v56

    if-eq v0, v1, :cond_22

    const/4 v4, 0x1

    :goto_12
    or-int v22, v22, v4

    .line 298
    if-eqz v22, :cond_23

    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v28, v0

    .line 299
    .local v28, "editedOffsets":[J
    :goto_13
    if-eqz v22, :cond_24

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 300
    .local v30, "editedSizes":[I
    :goto_14
    if-eqz v22, :cond_25

    const/16 v27, 0x0

    .line 301
    .local v27, "editedMaximumSize":I
    :goto_15
    if-eqz v22, :cond_26

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 302
    .local v26, "editedFlags":[I
    :goto_16
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v31, v0

    .line 303
    .local v31, "editedTimestamps":[J
    const-wide/16 v46, 0x0

    .line 304
    .local v46, "pts":J
    const/16 v57, 0x0

    .line 305
    .local v57, "sampleIndex":I
    const/16 v36, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_28

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v38, v4, v36

    .line 307
    .restart local v38    # "mediaTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v10, v4, v36

    .line 308
    .restart local v10    # "duration":J
    const-wide/16 v12, -0x1

    cmp-long v4, v38, v12

    if-eqz v4, :cond_27

    .line 309
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long v34, v38, v12

    .line 310
    .local v34, "endMediaTime":J
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-wide/from16 v0, v38

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v59

    .line 311
    .restart local v59    # "startIndex":I
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-wide/from16 v0, v34

    invoke-static {v8, v0, v1, v4, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v32

    .line 312
    .restart local v32    # "endIndex":I
    if-eqz v22, :cond_20

    .line 313
    sub-int v23, v32, v59

    .line 314
    .local v23, "count":I
    move/from16 v0, v59

    move-object/from16 v1, v28

    move/from16 v2, v57

    move/from16 v3, v23

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    move/from16 v0, v59

    move-object/from16 v1, v30

    move/from16 v2, v57

    move/from16 v3, v23

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    move/from16 v0, v59

    move-object/from16 v1, v26

    move/from16 v2, v57

    move/from16 v3, v23

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    .end local v23    # "count":I
    :cond_20
    move/from16 v37, v59

    .local v37, "j":I
    :goto_18
    move/from16 v0, v37

    move/from16 v1, v32

    if-ge v0, v1, :cond_27

    .line 319
    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    move-wide/from16 v12, v46

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v48

    .line 320
    .local v48, "ptsUs":J
    aget-wide v12, v8, v37

    sub-long v12, v12, v38

    const-wide/32 v14, 0xf4240

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v66

    .line 321
    .local v66, "timeInSegmentUs":J
    add-long v12, v48, v66

    aput-wide v12, v31, v57

    .line 322
    if-eqz v22, :cond_21

    aget v4, v30, v57

    move/from16 v0, v27

    if-le v4, v0, :cond_21

    .line 323
    aget v27, v6, v37

    .line 325
    :cond_21
    add-int/lit8 v57, v57, 0x1

    .line 318
    add-int/lit8 v37, v37, 0x1

    goto :goto_18

    .line 295
    .end local v10    # "duration":J
    .end local v26    # "editedFlags":[I
    .end local v27    # "editedMaximumSize":I
    .end local v28    # "editedOffsets":[J
    .end local v30    # "editedSizes":[I
    .end local v31    # "editedTimestamps":[J
    .end local v32    # "endIndex":I
    .end local v34    # "endMediaTime":J
    .end local v37    # "j":I
    .end local v38    # "mediaTime":J
    .end local v46    # "pts":J
    .end local v48    # "ptsUs":J
    .end local v57    # "sampleIndex":I
    .end local v59    # "startIndex":I
    .end local v66    # "timeInSegmentUs":J
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_23
    move-object/from16 v28, v5

    .line 298
    goto/16 :goto_13

    .restart local v28    # "editedOffsets":[J
    :cond_24
    move-object/from16 v30, v6

    .line 299
    goto/16 :goto_14

    .restart local v30    # "editedSizes":[I
    :cond_25
    move/from16 v27, v7

    .line 300
    goto/16 :goto_15

    .restart local v27    # "editedMaximumSize":I
    :cond_26
    move-object/from16 v26, v9

    .line 301
    goto/16 :goto_16

    .line 328
    .restart local v10    # "duration":J
    .restart local v26    # "editedFlags":[I
    .restart local v31    # "editedTimestamps":[J
    .restart local v38    # "mediaTime":J
    .restart local v46    # "pts":J
    .restart local v57    # "sampleIndex":I
    :cond_27
    add-long v46, v46, v10

    .line 305
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_17

    .line 330
    .end local v10    # "duration":J
    .end local v38    # "mediaTime":J
    :cond_28
    new-instance v12, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v13, v28

    move-object/from16 v14, v30

    move/from16 v15, v27

    move-object/from16 v16, v31

    move-object/from16 v17, v26

    invoke-direct/range {v12 .. v17}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    move-object v4, v12

    goto/16 :goto_2
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 24
    .param p0, "stsd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "durationUs"    # J
    .param p4, "rotationDegrees"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z

    .prologue
    .line 515
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v22

    .line 517
    .local v22, "numberOfEntries":I
    new-instance v9, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 518
    .local v9, "out":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v10, v0, :cond_9

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 520
    .local v3, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 521
    .local v4, "childAtomSize":I
    if-lez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v5, "childAtomSize should be positive"

    invoke-static {v2, v5}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 523
    .local v12, "childAtomType":I
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-ne v12, v2, :cond_3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    .line 526
    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    .line 545
    :cond_1
    :goto_2
    add-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 518
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 521
    .end local v12    # "childAtomType":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 527
    .restart local v12    # "childAtomType":I
    :cond_3
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-ne v12, v2, :cond_5

    :cond_4
    move-object/from16 v11, p0

    move v13, v3

    move v14, v4

    move/from16 v15, p1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, v9

    move/from16 v21, v10

    .line 531
    invoke-static/range {v11 .. v21}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    .line 532
    :cond_5
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v12, v2, :cond_6

    .line 533
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 535
    :cond_6
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v12, v2, :cond_7

    .line 536
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 538
    :cond_7
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v12, v2, :cond_8

    .line 539
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 541
    :cond_8
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v12, v2, :cond_1

    .line 542
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 547
    .end local v3    # "childStartPosition":I
    .end local v4    # "childAtomSize":I
    .end local v12    # "childAtomType":I
    :cond_9
    return-object v9
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 19
    .param p0, "tkhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 419
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 421
    .local v12, "fullAtom":I
    invoke-static {v12}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v16

    .line 423
    .local v16, "version":I
    if-nez v16, :cond_1

    const/16 v17, 0x8

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 426
    .local v15, "trackId":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 427
    const/4 v10, 0x1

    .line 428
    .local v10, "durationUnknown":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 429
    .local v9, "durationPosition":I
    if-nez v16, :cond_2

    const/4 v8, 0x4

    .line 430
    .local v8, "durationByteCount":I
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v17, v0

    add-int v18, v9, v13

    aget-byte v17, v17, v18

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 432
    const/4 v10, 0x0

    .line 437
    :cond_0
    if-eqz v10, :cond_4

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 439
    const-wide/16 v6, -0x1

    .line 444
    .local v6, "duration":J
    :goto_3
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 446
    .local v2, "a00":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 447
    .local v3, "a01":I
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 449
    .local v4, "a10":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 452
    .local v5, "a11":I
    const/high16 v11, 0x10000

    .line 453
    .local v11, "fixedOne":I
    if-nez v2, :cond_6

    if-ne v3, v11, :cond_6

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    if-nez v5, :cond_6

    .line 454
    const/16 v14, 0x5a

    .line 464
    .local v14, "rotationDegrees":I
    :goto_4
    new-instance v17, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6, v7, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v17

    .line 423
    .end local v2    # "a00":I
    .end local v3    # "a01":I
    .end local v4    # "a10":I
    .end local v5    # "a11":I
    .end local v6    # "duration":J
    .end local v8    # "durationByteCount":I
    .end local v9    # "durationPosition":I
    .end local v10    # "durationUnknown":Z
    .end local v11    # "fixedOne":I
    .end local v13    # "i":I
    .end local v14    # "rotationDegrees":I
    .end local v15    # "trackId":I
    :cond_1
    const/16 v17, 0x10

    goto :goto_0

    .line 429
    .restart local v9    # "durationPosition":I
    .restart local v10    # "durationUnknown":Z
    .restart local v15    # "trackId":I
    :cond_2
    const/16 v8, 0x8

    goto :goto_1

    .line 430
    .restart local v8    # "durationByteCount":I
    .restart local v13    # "i":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 441
    :cond_4
    if-nez v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .restart local v6    # "duration":J
    :goto_5
    goto :goto_3

    .end local v6    # "duration":J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_5

    .line 455
    .restart local v2    # "a00":I
    .restart local v3    # "a01":I
    .restart local v4    # "a10":I
    .restart local v5    # "a11":I
    .restart local v6    # "duration":J
    .restart local v11    # "fixedOne":I
    :cond_6
    if-nez v2, :cond_7

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_7

    if-ne v4, v11, :cond_7

    if-nez v5, :cond_7

    .line 456
    const/16 v14, 0x10e

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 457
    .end local v14    # "rotationDegrees":I
    :cond_7
    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v2, v0, :cond_8

    if-nez v3, :cond_8

    if-nez v4, :cond_8

    neg-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    .line 458
    const/16 v14, 0xb4

    .restart local v14    # "rotationDegrees":I
    goto :goto_4

    .line 461
    .end local v14    # "rotationDegrees":I
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "rotationDegrees":I
    goto :goto_4
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .locals 33
    .param p0, "trak"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "isQuickTime"    # Z

    .prologue
    .line 56
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v29

    .line 57
    .local v29, "mdia":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v15

    .line 58
    .local v15, "trackType":I
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v4, :cond_0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v4, :cond_0

    .line 60
    const/4 v13, 0x0

    .line 78
    :goto_0
    return-object v13

    .line 63
    :cond_0
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v32

    .line 64
    .local v32, "tkhdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    .line 65
    .local v2, "duration":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 67
    .local v6, "movieTimescale":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 68
    const-wide/16 v10, -0x1

    .line 72
    .local v10, "durationUs":J
    :goto_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v30

    .line 74
    .local v30, "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v28

    .line 75
    .local v28, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v8, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    move-object/from16 v0, v28

    iget-object v13, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v31

    .line 77
    .local v31, "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v27

    .line 78
    .local v27, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v4, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 70
    .end local v10    # "durationUs":J
    .end local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .end local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v30    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v31    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .restart local v10    # "durationUs":J
    goto :goto_1

    .line 78
    .restart local v27    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    .restart local v28    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v30    # "stbl":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .restart local v31    # "stsdData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    :cond_2
    new-instance v13, Lcom/google/android/exoplayer/extractor/mp4/Track;

    invoke-static/range {v32 .. v32}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0
.end method

.method public static parseUdta(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 9
    .param p0, "udtaAtom"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    const/4 v6, 0x0

    .line 340
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 341
    .local v4, "metaAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-nez v4, :cond_1

    move-object v1, v6

    .line 360
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :cond_1
    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 345
    .local v0, "data":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 346
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    .line 347
    .local v2, "ilst":Lcom/google/android/exoplayer/util/ParsableByteArray;
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-lez v7, :cond_3

    .line 348
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v3, v7, -0x8

    .line 349
    .local v3, "length":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 350
    .local v5, "type":I
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v5, v7, :cond_2

    .line 351
    iget-object v7, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v2, v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 352
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 353
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v1

    .line 354
    .local v1, "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    if-nez v1, :cond_0

    .line 358
    .end local v1    # "gaplessInfo":Lcom/google/android/exoplayer/extractor/GaplessInfo;
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .end local v3    # "length":I
    .end local v5    # "type":I
    :cond_3
    move-object v1, v6

    .line 360
    goto :goto_0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 22
    .param p0, "parent"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "trackId"    # I
    .param p4, "durationUs"    # J
    .param p6, "rotationDegrees"    # I
    .param p7, "out"    # Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I

    .prologue
    .line 552
    add-int/lit8 v2, p1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 554
    const/16 v2, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 556
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 557
    .local v9, "height":I
    const/16 v20, 0x0

    .line 558
    .local v20, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v12, 0x3f800000    # 1.0f

    .line 559
    .local v12, "pixelWidthHeightRatio":F
    const/16 v2, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 561
    const/4 v10, 0x0

    .line 562
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 563
    .local v16, "childPosition":I
    const/4 v3, 0x0

    .line 564
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    sub-int v2, v16, p1

    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    .line 565
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v17

    .line 567
    .local v17, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 568
    .local v14, "childAtomSize":I
    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    sub-int v2, v2, p1

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 607
    .end local v14    # "childAtomSize":I
    .end local v17    # "childStartPosition":I
    :cond_0
    if-nez v3, :cond_d

    .line 613
    :goto_1
    return-void

    .line 572
    .restart local v14    # "childAtomSize":I
    .restart local v17    # "childStartPosition":I
    :cond_1
    if-lez v14, :cond_3

    const/4 v2, 0x1

    :goto_2
    const-string v4, "childAtomSize should be positive"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 574
    .local v15, "childAtomType":I
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v15, v2, :cond_5

    .line 575
    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 576
    const-string v3, "video/avc"

    .line 577
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v13

    .line 578
    .local v13, "avcCData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    iget-object v10, v13, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    .line 579
    iget v2, v13, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 580
    if-nez v20, :cond_2

    .line 581
    iget v12, v13, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    .line 603
    .end local v13    # "avcCData":Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    :cond_2
    :goto_4
    add-int v16, v16, v14

    .line 604
    goto :goto_0

    .line 572
    .end local v15    # "childAtomType":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 575
    .restart local v15    # "childAtomType":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 583
    :cond_5
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v15, v2, :cond_7

    .line 584
    if-nez v3, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 585
    const-string v3, "video/hevc"

    .line 586
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v18

    .line 587
    .local v18, "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    check-cast v10, Ljava/util/List;

    .line 588
    .restart local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    goto :goto_4

    .line 584
    .end local v18    # "hvcCData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<[B>;Ljava/lang/Integer;>;"
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 589
    :cond_7
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v15, v2, :cond_9

    .line 590
    if-nez v3, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 591
    const-string v3, "video/3gpp"

    goto :goto_4

    .line 590
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 592
    :cond_9
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v15, v2, :cond_b

    .line 593
    if-nez v3, :cond_a

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 594
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v19

    .line 595
    .local v19, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v3    # "mimeType":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 596
    .restart local v3    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 597
    goto :goto_4

    .line 593
    .end local v19    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    .line 597
    :cond_b
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v15, v2, :cond_c

    .line 598
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v4

    aput-object v4, v2, p8

    goto :goto_4

    .line 599
    :cond_c
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v15, v2, :cond_2

    .line 600
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v12

    .line 601
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 611
    .end local v14    # "childAtomSize":I
    .end local v15    # "childAtomType":I
    .end local v17    # "childStartPosition":I
    :cond_d
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_1
.end method
