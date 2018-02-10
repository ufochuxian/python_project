.class final Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedTrack"
.end annotation


# instance fields
.field private final adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;

.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private final elementIndex:I

.field private final fixedFormat:Lcom/google/android/exoplayer/chunk/Format;

.field public final trackFormat:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/MediaFormat;ILcom/google/android/exoplayer/chunk/Format;)V
    .locals 2
    .param p1, "trackFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p2, "elementIndex"    # I
    .param p3, "fixedFormat"    # Lcom/google/android/exoplayer/chunk/Format;

    .prologue
    const/4 v1, -0x1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 522
    iput p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    .line 523
    iput-object p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 525
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 526
    iput v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 527
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/MediaFormat;I[Lcom/google/android/exoplayer/chunk/Format;II)V
    .locals 1
    .param p1, "trackFormat"    # Lcom/google/android/exoplayer/MediaFormat;
    .param p2, "elementIndex"    # I
    .param p3, "adaptiveFormats"    # [Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "adaptiveMaxWidth"    # I
    .param p5, "adaptiveMaxHeight"    # I

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 531
    iput p2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    .line 532
    iput-object p3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 533
    iput p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 534
    iput p5, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 536
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/chunk/Format;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)Lcom/google/android/exoplayer/chunk/Format;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return v0
.end method


# virtual methods
.method public isAdaptive()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
