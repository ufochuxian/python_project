.class public Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I


# instance fields
.field public final contentProtections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final representations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public constructor <init>(IILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    .local p4, "contentProtections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/ContentProtection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->id:I

    .line 40
    iput p2, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    .line 41
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    .line 42
    if-nez p4, :cond_0

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public hasContentProtection()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
