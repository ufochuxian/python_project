.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# instance fields
.field public mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field public nalUnitLengthFieldLength:I

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numberOfEntries"    # I

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    new-array v0, p1, [Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 996
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 997
    return-void
.end method
