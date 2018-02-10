.class final Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field private final extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final extractors:[Lcom/google/android/exoplayer/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0
    .param p1, "extractors"    # [Lcom/google/android/exoplayer/extractor/Extractor;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    .line 720
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 721
    return-void
.end method


# virtual methods
.method public selectExtractor(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/Extractor;
    .locals 5
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 754
    :goto_0
    return-object v1

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 741
    .local v0, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/extractor/Extractor;->sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 742
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    if-nez v1, :cond_3

    .line 751
    new-instance v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;-><init>([Lcom/google/android/exoplayer/extractor/Extractor;)V

    throw v1

    .line 745
    .restart local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :catch_0
    move-exception v4

    .line 748
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 739
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 753
    .end local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 754
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    goto :goto_0
.end method
