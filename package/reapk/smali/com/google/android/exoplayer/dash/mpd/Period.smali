.class public Lcom/google/android/exoplayer/dash/mpd/Period;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final startMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/Period;->id:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    .line 52
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public getAdaptationSetIndex(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    .local v0, "adaptationCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    iget v2, v2, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    if-ne v2, p1, :cond_0

    .line 69
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 64
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method