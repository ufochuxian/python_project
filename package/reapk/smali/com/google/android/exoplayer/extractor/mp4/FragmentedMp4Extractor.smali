.class public final Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"

.field public static final WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final WORKAROUND_IGNORE_TFDT_BOX:I = 0x2


# instance fields
.field private atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private final encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

.field private haveOutputSeekMap:Z

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleIndex:I

.field private sampleSize:I

.field private track:Lcom/google/android/exoplayer/extractor/mp4/Track;

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private final workaroundFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "workaroundFlags"    # I

    .prologue
    const/16 v2, 0x10

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    .line 120
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 121
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 122
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 123
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 124
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 125
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 126
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 127
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 128
    return-void
.end method

.method private appendSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 9
    .param p1, "sampleEncryptionData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v7, 0x0

    .line 792
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v1, v6, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 793
    .local v1, "sampleDescriptionIndex":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v6, v1

    .line 794
    .local v0, "encryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 795
    .local v5, "vectorSize":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v4, v6, v8

    .line 798
    .local v4, "subsampleEncryption":Z
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    if-eqz v4, :cond_0

    const/16 v6, 0x80

    :goto_0
    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v8, v7

    .line 799
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 800
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 802
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v6, p1, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 804
    if-nez v4, :cond_1

    .line 805
    add-int/lit8 v6, v5, 0x1

    .line 812
    :goto_1
    return v6

    :cond_0
    move v6, v7

    .line 798
    goto :goto_0

    .line 808
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 809
    .local v2, "subsampleCount":I
    const/4 v6, -0x2

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 810
    mul-int/lit8 v6, v2, 0x6

    add-int/lit8 v3, v6, 0x2

    .line 811
    .local v3, "subsampleDataLength":I
    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v6, p1, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 812
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v6, v3

    goto :goto_1
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 541
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 542
    return-void
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .param p1, "container"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 636
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    .line 637
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 639
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .locals 4
    .param p1, "leaf"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_0

    .line 629
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    .line 630
    .local v0, "segmentIndex":Lcom/google/android/exoplayer/extractor/ChunkIndex;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 6
    .param p1, "moof"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->reset()V

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 682
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 11
    .param p1, "moov"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 646
    iget-object v3, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 647
    .local v3, "moovChildren":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 649
    .local v4, "moovChildrenSize":I
    const/4 v1, 0x0

    .line 650
    .local v1, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 651
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 652
    .local v0, "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v8, v9, :cond_1

    .line 653
    if-nez v1, :cond_0

    .line 654
    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .end local v1    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    invoke-direct {v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    .line 656
    .restart local v1    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    :cond_0
    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v6, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 657
    .local v6, "psshData":[B
    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v7

    .line 658
    .local v7, "uuid":Ljava/util/UUID;
    if-nez v7, :cond_2

    .line 659
    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v6    # "psshData":[B
    .end local v7    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .restart local v6    # "psshData":[B
    .restart local v7    # "uuid":Ljava/util/UUID;
    :cond_2
    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string v10, "video/mp4"

    invoke-direct {v9, v10, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v8, v9}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_1

    .line 665
    .end local v0    # "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v6    # "psshData":[B
    .end local v7    # "uuid":Ljava/util/UUID;
    :cond_3
    if-eqz v1, :cond_4

    .line 666
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 669
    :cond_4
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 670
    .local v5, "mvex":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 671
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 672
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    if-nez v8, :cond_5

    .line 673
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Track type not supported."

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 675
    :cond_5
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v9, v9, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v8, v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 676
    return-void
.end method

.method private static parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 6
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "extendsDefaults"    # Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .param p2, "moof"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p3, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .param p4, "workaroundFlags"    # I
    .param p5, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 144
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getChildAtomOfTypeCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Traf count in moof != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 148
    return-void
.end method

.method private static parseSaio(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 8
    .param p0, "saio"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 236
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 238
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 239
    .local v1, "flags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_0

    .line 240
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 244
    .local v0, "entryCount":I
    if-eq v0, v5, :cond_1

    .line 246
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 250
    .local v3, "version":I
    iget-wide v6, p1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 251
    return-void

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_0
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 13
    .param p0, "encryptionBox"    # Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 198
    iget v9, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 199
    .local v9, "vectorSize":I
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 200
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 201
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 202
    .local v1, "flags":I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 203
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 207
    .local v0, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 208
    .local v4, "sampleCount":I
    iget v10, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v4, v10, :cond_1

    .line 209
    new-instance v10, Lcom/google/android/exoplayer/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 212
    :cond_1
    const/4 v8, 0x0

    .line 213
    .local v8, "totalSize":I
    if-nez v0, :cond_3

    .line 214
    iget-object v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 215
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 217
    .local v6, "sampleInfoSize":I
    add-int/2addr v8, v6

    .line 218
    if-le v6, v9, :cond_2

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v5, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 221
    .end local v3    # "i":I
    .end local v5    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v6    # "sampleInfoSize":I
    :cond_3
    if-le v0, v9, :cond_5

    const/4 v7, 0x1

    .line 222
    .local v7, "subsampleEncryption":Z
    :goto_2
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    .line 223
    iget-object v10, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 225
    .end local v7    # "subsampleEncryption":Z
    :cond_4
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 226
    return-void

    .line 221
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 7
    .param p0, "senc"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 396
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 398
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 400
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 403
    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 404
    .local v3, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 405
    .local v2, "sampleCount":I
    iget v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v2, v5, :cond_2

    .line 406
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "sampleCount":I
    .end local v3    # "subsampleEncryption":Z
    :cond_1
    move v3, v4

    .line 403
    goto :goto_0

    .line 409
    .restart local v2    # "sampleCount":I
    .restart local v3    # "subsampleEncryption":Z
    :cond_2
    iget-object v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 410
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 411
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 412
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 1
    .param p0, "senc"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 391
    return-void
.end method

.method private static parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .locals 29
    .param p0, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 418
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 420
    .local v14, "fullAtom":I
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v27

    .line 422
    .local v27, "version":I
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 425
    .local v8, "timescale":J
    move-wide/from16 v16, p1

    .line 426
    .local v16, "offset":J
    if-nez v27, :cond_0

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 428
    .local v12, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v16, v16, v6

    .line 434
    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 437
    .local v19, "referenceCount":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 438
    .local v22, "sizes":[I
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 439
    .local v18, "offsets":[J
    move/from16 v0, v19

    new-array v10, v0, [J

    .line 440
    .local v10, "durationsUs":[J
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 442
    .local v23, "timesUs":[J
    move-wide v4, v12

    .line 443
    .local v4, "time":J
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 444
    .local v24, "timeUs":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 447
    .local v11, "firstInt":I
    const/high16 v6, -0x80000000

    and-int v26, v6, v11

    .line 448
    .local v26, "type":I
    if-eqz v26, :cond_1

    .line 449
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 430
    .end local v4    # "time":J
    .end local v10    # "durationsUs":[J
    .end local v11    # "firstInt":I
    .end local v12    # "earliestPresentationTime":J
    .end local v15    # "i":I
    .end local v18    # "offsets":[J
    .end local v19    # "referenceCount":I
    .end local v22    # "sizes":[I
    .end local v23    # "timesUs":[J
    .end local v24    # "timeUs":J
    .end local v26    # "type":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    .line 431
    .restart local v12    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_0

    .line 451
    .restart local v4    # "time":J
    .restart local v10    # "durationsUs":[J
    .restart local v11    # "firstInt":I
    .restart local v15    # "i":I
    .restart local v18    # "offsets":[J
    .restart local v19    # "referenceCount":I
    .restart local v22    # "sizes":[I
    .restart local v23    # "timesUs":[J
    .restart local v24    # "timeUs":J
    .restart local v26    # "type":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    .line 453
    .local v20, "referenceDuration":J
    const v6, 0x7fffffff

    and-int/2addr v6, v11

    aput v6, v22, v15

    .line 454
    aput-wide v16, v18, v15

    .line 458
    aput-wide v24, v23, v15

    .line 459
    add-long v4, v4, v20

    .line 460
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 461
    aget-wide v6, v23, v15

    sub-long v6, v24, v6

    aput-wide v6, v10, v15

    .line 463
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 464
    aget v6, v22, v15

    int-to-long v6, v6

    add-long v16, v16, v6

    .line 444
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 467
    .end local v11    # "firstInt":I
    .end local v20    # "referenceDuration":J
    .end local v26    # "type":I
    :cond_2
    new-instance v6, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v10, v2}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 4
    .param p0, "tfdt"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 289
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 290
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 291
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 292
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_0
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 9
    .param p0, "extendsDefaults"    # Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .param p1, "tfhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .prologue
    .line 263
    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 264
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 265
    .local v7, "fullAtom":I
    invoke-static {v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v6

    .line 267
    .local v6, "flags":I
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 268
    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    .line 270
    .local v0, "baseDataPosition":J
    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 271
    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 274
    .end local v0    # "baseDataPosition":J
    :cond_0
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 276
    .local v2, "defaultSampleDescriptionIndex":I
    :goto_0
    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 278
    .local v3, "defaultSampleDuration":I
    :goto_1
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 279
    .local v5, "defaultSampleSize":I
    :goto_2
    and-int/lit8 v8, v6, 0x20

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 280
    .local v4, "defaultSampleFlags":I
    :goto_3
    new-instance v8, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v8, v2, v3, v5, v4}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v8, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 281
    return-void

    .line 274
    .end local v2    # "defaultSampleDescriptionIndex":I
    .end local v3    # "defaultSampleDuration":I
    .end local v4    # "defaultSampleFlags":I
    .end local v5    # "defaultSampleSize":I
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_0

    .line 276
    .restart local v2    # "defaultSampleDescriptionIndex":I
    :cond_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_1

    .line 278
    .restart local v3    # "defaultSampleDuration":I
    :cond_3
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_2

    .line 279
    .restart local v5    # "defaultSampleSize":I
    :cond_4
    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_3
.end method

.method private static parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 19
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "extendsDefaults"    # Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .param p2, "traf"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p3, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .param p4, "workaroundFlags"    # I
    .param p5, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 155
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getChildAtomOfTypeCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 156
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Trun count in traf != 1 (unsupported)."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 160
    .local v15, "tfdtAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v15, :cond_1

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_6

    .line 161
    :cond_1
    const-wide/16 v4, 0x0

    .line 166
    .local v4, "decodeTime":J
    :goto_0
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    .line 167
    .local v16, "tfhd":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 169
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v18

    .line 170
    .local v18, "trun":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v2, p0

    move/from16 v6, p4

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 172
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 173
    .local v13, "saiz":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    aget-object v17, v2, v3

    .line 175
    .local v17, "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    iget-object v2, v13, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 178
    .end local v17    # "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    :cond_2
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 179
    .local v12, "saio":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_3

    .line 180
    iget-object v2, v12, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 183
    :cond_3
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 184
    .local v14, "senc":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v14, :cond_4

    .line 185
    iget-object v2, v14, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 188
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 189
    .local v10, "childrenSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_7

    .line 190
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 191
    .local v9, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v2, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-ne v2, v3, :cond_5

    .line 192
    iget-object v2, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V

    .line 189
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "decodeTime":J
    .end local v9    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v10    # "childrenSize":I
    .end local v11    # "i":I
    .end local v12    # "saio":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v13    # "saiz":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v14    # "senc":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v16    # "tfhd":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v18    # "trun":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_6
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    .restart local v4    # "decodeTime":J
    goto/16 :goto_0

    .line 195
    .restart local v10    # "childrenSize":I
    .restart local v11    # "i":I
    .restart local v12    # "saio":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v13    # "saiz":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v14    # "senc":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v16    # "tfhd":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v18    # "trun":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_7
    return-void
.end method

.method private static parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .locals 5
    .param p0, "trex"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 134
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 136
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 137
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 138
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 139
    .local v2, "defaultSampleFlags":I
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4
.end method

.method private static parseTrun(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 32
    .param p0, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;
    .param p1, "defaultSampleValues"    # Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .param p2, "decodeTime"    # J
    .param p4, "workaroundFlags"    # I
    .param p5, "trun"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p6, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .prologue
    .line 310
    const/16 v4, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 311
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 312
    .local v13, "fullAtom":I
    invoke-static {v13}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v12

    .line 314
    .local v12, "flags":I
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    .line 315
    .local v17, "sampleCount":I
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_0

    .line 316
    move-object/from16 v0, p6

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v4, v4, v30

    move-object/from16 v0, p6

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 319
    :cond_0
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_4

    const/4 v11, 0x1

    .line 320
    .local v11, "firstSampleFlagsPresent":Z
    :goto_0
    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    .line 321
    .local v10, "firstSampleFlags":I
    if-eqz v11, :cond_1

    .line 322
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 325
    :cond_1
    and-int/lit16 v4, v12, 0x100

    if-eqz v4, :cond_5

    const/16 v20, 0x1

    .line 326
    .local v20, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_6

    const/16 v27, 0x1

    .line 327
    .local v27, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v4, v12, 0x400

    if-eqz v4, :cond_7

    const/16 v22, 0x1

    .line 328
    .local v22, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v4, v12, 0x800

    if-eqz v4, :cond_8

    const/16 v16, 0x1

    .line 332
    .local v16, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v8, 0x0

    .line 336
    .local v8, "edtsOffset":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v30, 0x0

    cmp-long v4, v4, v30

    if-nez v4, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 340
    :cond_2
    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initTables(I)V

    .line 341
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v26, v0

    .line 342
    .local v26, "sampleSizeTable":[I
    move-object/from16 v0, p6

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 343
    .local v15, "sampleCompositionTimeOffsetTable":[I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v18, v0

    .line 344
    .local v18, "sampleDecodingTimeTable":[J
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v23, v0

    .line 346
    .local v23, "sampleIsSyncFrameTable":[Z
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    .line 347
    .local v6, "timescale":J
    move-wide/from16 v2, p2

    .line 348
    .local v2, "cumulativeTime":J
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v4, v5, :cond_9

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9

    const/16 v28, 0x1

    .line 350
    .local v28, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v14, v0, :cond_10

    .line 352
    if-eqz v20, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 353
    .local v19, "sampleDuration":I
    :goto_7
    if-eqz v27, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v25

    .line 354
    .local v25, "sampleSize":I
    :goto_8
    if-nez v14, :cond_c

    if-eqz v11, :cond_c

    move/from16 v21, v10

    .line 356
    .local v21, "sampleFlags":I
    :goto_9
    if-eqz v16, :cond_e

    .line 362
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v24

    .line 363
    .local v24, "sampleOffset":I
    move/from16 v0, v24

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v15, v14

    .line 367
    .end local v24    # "sampleOffset":I
    :goto_a
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v8

    aput-wide v4, v18, v14

    .line 368
    aput v25, v26, v14

    .line 369
    shr-int/lit8 v4, v21, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    if-eqz v28, :cond_3

    if-nez v14, :cond_f

    :cond_3
    const/4 v4, 0x1

    :goto_b
    aput-boolean v4, v23, v14

    .line 370
    move/from16 v0, v19

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 350
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 319
    .end local v2    # "cumulativeTime":J
    .end local v6    # "timescale":J
    .end local v8    # "edtsOffset":J
    .end local v10    # "firstSampleFlags":I
    .end local v11    # "firstSampleFlagsPresent":Z
    .end local v14    # "i":I
    .end local v15    # "sampleCompositionTimeOffsetTable":[I
    .end local v16    # "sampleCompositionTimeOffsetsPresent":Z
    .end local v18    # "sampleDecodingTimeTable":[J
    .end local v19    # "sampleDuration":I
    .end local v20    # "sampleDurationsPresent":Z
    .end local v21    # "sampleFlags":I
    .end local v22    # "sampleFlagsPresent":Z
    .end local v23    # "sampleIsSyncFrameTable":[Z
    .end local v25    # "sampleSize":I
    .end local v26    # "sampleSizeTable":[I
    .end local v27    # "sampleSizesPresent":Z
    .end local v28    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 325
    .restart local v10    # "firstSampleFlags":I
    .restart local v11    # "firstSampleFlagsPresent":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 326
    .restart local v20    # "sampleDurationsPresent":Z
    :cond_6
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 327
    .restart local v27    # "sampleSizesPresent":Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 328
    .restart local v22    # "sampleFlagsPresent":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 348
    .restart local v2    # "cumulativeTime":J
    .restart local v6    # "timescale":J
    .restart local v8    # "edtsOffset":J
    .restart local v15    # "sampleCompositionTimeOffsetTable":[I
    .restart local v16    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v18    # "sampleDecodingTimeTable":[J
    .restart local v23    # "sampleIsSyncFrameTable":[Z
    .restart local v26    # "sampleSizeTable":[I
    :cond_9
    const/16 v28, 0x0

    goto :goto_5

    .line 352
    .restart local v14    # "i":I
    .restart local v28    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v19, v0

    goto :goto_7

    .line 353
    .restart local v19    # "sampleDuration":I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v25, v0

    goto :goto_8

    .line 354
    .restart local v25    # "sampleSize":I
    :cond_c
    if-eqz v22, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v21

    goto :goto_9

    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v21, v0

    goto :goto_9

    .line 365
    .restart local v21    # "sampleFlags":I
    :cond_e
    const/4 v4, 0x0

    aput v4, v15, v14

    goto :goto_a

    .line 369
    :cond_f
    const/4 v4, 0x0

    goto :goto_b

    .line 372
    .end local v19    # "sampleDuration":I
    .end local v21    # "sampleFlags":I
    .end local v25    # "sampleSize":I
    :cond_10
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .param p0, "uuid"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 375
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 379
    sget-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 545
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v5, :cond_1

    .line 547
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-interface {p1, v5, v6, v7, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 548
    const/4 v5, 0x0

    .line 607
    :goto_0
    return v5

    .line 550
    :cond_0
    const/16 v5, 0x8

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 551
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 552
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 553
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 556
    :cond_1
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 558
    const/16 v4, 0x8

    .line 559
    .local v4, "headerBytesRemaining":I
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    invoke-interface {p1, v5, v6, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 560
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 561
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 564
    .end local v4    # "headerBytesRemaining":I
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 565
    .local v0, "atomPosition":J
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v5, v6, :cond_3

    .line 567
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v0, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 568
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v0, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 571
    :cond_3
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v5, v6, :cond_6

    .line 572
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 573
    iget-boolean v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v5, :cond_4

    .line 574
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v6, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 575
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 577
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v5, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v5, :cond_5

    .line 578
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 582
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 580
    :cond_5
    const/4 v5, 0x3

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_1

    .line 585
    :cond_6
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 586
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x8

    sub-long v2, v6, v8

    .line 587
    .local v2, "endPosition":J
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 607
    .end local v2    # "endPosition":J
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 589
    :cond_7
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 590
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    .line 591
    new-instance v5, Lcom/google/android/exoplayer/ParserException;

    const-string v6, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 593
    :cond_8
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    .line 594
    new-instance v5, Lcom/google/android/exoplayer/ParserException;

    const-string v6, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 596
    :cond_9
    new-instance v5, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 597
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    const/4 v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2

    .line 600
    :cond_a
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v6, v8

    if-lez v5, :cond_b

    .line 601
    new-instance v5, Lcom/google/android/exoplayer/ParserException;

    const-string v6, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    :cond_b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 604
    const/4 v5, 0x1

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_2
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 611
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v4

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v4

    .line 612
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0x8

    invoke-interface {p1, v1, v4, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 614
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    .line 618
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 619
    .local v2, "currentPosition":J
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 620
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 616
    .end local v2    # "currentPosition":J
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 622
    .restart local v2    # "currentPosition":J
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 623
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v2, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 686
    .local v0, "bytesToSkip":I
    if-gez v0, :cond_0

    .line 687
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 690
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 691
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 692
    return-void
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 20
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 711
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v7, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v3, v7, :cond_1

    .line 715
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    move-wide/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v2, v0

    .line 716
    .local v2, "bytesToSkip":I
    if-gez v2, :cond_0

    .line 717
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Offset to end of mdat was negative."

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 721
    const/4 v3, 0x0

    .line 788
    .end local v2    # "bytesToSkip":I
    :goto_0
    return v3

    .line 723
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    if-nez v3, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v0, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    move-wide/from16 v16, v0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v2, v0

    .line 726
    .restart local v2    # "bytesToSkip":I
    if-gez v2, :cond_2

    .line 727
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Offset to sample data was negative."

    invoke-direct {v3, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 731
    .end local v2    # "bytesToSkip":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget v3, v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v3, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 734
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 738
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 739
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 742
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_7

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v10, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 746
    .local v10, "nalLengthData":[B
    const/4 v3, 0x0

    const/4 v7, 0x0

    aput-byte v7, v10, v3

    .line 747
    const/4 v3, 0x1

    const/4 v7, 0x0

    aput-byte v7, v10, v3

    .line 748
    const/4 v3, 0x2

    const/4 v7, 0x0

    aput-byte v7, v10, v3

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v11, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 750
    .local v11, "nalUnitLengthFieldLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v12, v3, 0x4

    .line 754
    .local v12, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v7, :cond_8

    .line 755
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_6

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v12, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 763
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 764
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    .line 736
    .end local v10    # "nalLengthData":[B
    .end local v11    # "nalUnitLengthFieldLength":I
    .end local v12    # "nalUnitLengthFieldLengthDiff":I
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_1

    .line 767
    .restart local v10    # "nalLengthData":[B
    .restart local v11    # "nalUnitLengthFieldLength":I
    .restart local v12    # "nalUnitLengthFieldLengthDiff":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v14

    .line 768
    .local v14, "writtenBytes":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 769
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 773
    .end local v10    # "nalLengthData":[B
    .end local v11    # "nalUnitLengthFieldLength":I
    .end local v12    # "nalUnitLengthFieldLengthDiff":I
    .end local v14    # "writtenBytes":I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v7, :cond_8

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v14

    .line 775
    .restart local v14    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    .line 779
    .end local v14    # "writtenBytes":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v4, v16, v18

    .line 780
    .local v4, "sampleTimeUs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_5
    or-int v6, v3, v7

    .line 782
    .local v6, "sampleFlags":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v13, v3, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 783
    .local v13, "sampleDescriptionIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v3, v3, v13

    iget-object v9, v3, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 784
    .local v9, "encryptionKey":[B
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 786
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 787
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 788
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 780
    .end local v6    # "sampleFlags":I
    .end local v9    # "encryptionKey":[B
    .end local v13    # "sampleDescriptionIndex":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 783
    .restart local v6    # "sampleFlags":I
    .restart local v13    # "sampleDescriptionIndex":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_6
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 480
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1
    .param p0, "atom"    # I

    .prologue
    .line 472
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 506
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 508
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 519
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 532
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 521
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    const/4 v0, -0x1

    goto :goto_1

    .line 526
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 529
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 513
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 514
    return-void
.end method

.method public setTrack(Lcom/google/android/exoplayer/extractor/mp4/Track;)V
    .locals 2
    .param p1, "track"    # Lcom/google/android/exoplayer/extractor/mp4/Track;

    .prologue
    const/4 v1, 0x0

    .line 499
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 500
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 501
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
    .line 486
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
