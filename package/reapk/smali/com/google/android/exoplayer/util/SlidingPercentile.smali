.class public final Lcom/google/android/exoplayer/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/exoplayer/util/SlidingPercentile$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SlidingPercentile$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 43
    new-instance v0, Lcom/google/android/exoplayer/util/SlidingPercentile$2;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SlidingPercentile$2;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxWeight"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iput-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 71
    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 132
    iget v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eq v0, v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    iput v2, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 136
    :cond_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .locals 7
    .param p1, "weight"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/SlidingPercentile;->ensureSortedByIndex()V

    .line 84
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v1, v3, v4

    .line 85
    .local v1, "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    iput v3, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->index:I

    .line 86
    iput p1, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    .line 87
    iput p2, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    .line 88
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    .line 91
    :cond_0
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    if-le v3, v4, :cond_3

    .line 92
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    sub-int v0, v3, v4

    .line 93
    .local v0, "excessWeight":I
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 94
    .local v2, "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    iget v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    if-gt v3, v0, :cond_2

    .line 95
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    .line 96
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v3, v4

    goto :goto_1

    .line 84
    .end local v0    # "excessWeight":I
    .end local v1    # "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    .end local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;-><init>(Lcom/google/android/exoplayer/util/SlidingPercentile$1;)V

    goto :goto_0

    .line 101
    .restart local v0    # "excessWeight":I
    .restart local v1    # "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    .restart local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_2
    iget v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    .line 102
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    goto :goto_1

    .line 105
    .end local v0    # "excessWeight":I
    .end local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 6
    .param p1, "percentile"    # F

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/SlidingPercentile;->ensureSortedByValue()V

    .line 115
    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    int-to-float v4, v4

    mul-float v2, p1, v4

    .line 116
    .local v2, "desiredWeight":F
    const/4 v0, 0x0

    .line 117
    .local v0, "accumulatedWeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 119
    .local v1, "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    iget v4, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v0, v4

    .line 120
    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_0

    .line 121
    iget v4, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    .line 125
    .end local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :goto_1
    return v4

    .line 117
    .restart local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x7fc00000    # NaNf

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, v4, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    goto :goto_1
.end method
