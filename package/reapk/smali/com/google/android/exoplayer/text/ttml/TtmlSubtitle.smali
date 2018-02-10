.class public final Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private final globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;)V
    .locals 1
    .param p1, "root"    # Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .line 37
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    .line 39
    return-void

    .line 37
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 5
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getText(JLjava/util/Map;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, "cueText":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    .line 73
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    .local v0, "cue":Lcom/google/android/exoplayer/text/Cue;
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getEventTime(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method getGlobalStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 44
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getRoot()Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;->root:Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    return-object v0
.end method
