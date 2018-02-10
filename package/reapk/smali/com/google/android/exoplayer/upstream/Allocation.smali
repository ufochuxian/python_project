.class public final Lcom/google/android/exoplayer/upstream/Allocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final data:[B

.field private final offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    .line 41
    iput p2, p0, Lcom/google/android/exoplayer/upstream/Allocation;->offset:I

    .line 42
    return-void
.end method


# virtual methods
.method public translateOffset(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v0, p1

    return v0
.end method
