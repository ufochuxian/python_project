.class public final Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector;


# static fields
.field private static final TYPE_DEFAULT:I = 0x0

.field private static final TYPE_VTT:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final type:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    .line 41
    return-void
.end method

.method public static newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newVttInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 5
    .param p0, "variant"    # Lcom/google/android/exoplayer/hls/Variant;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v4, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 63
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v3

    .line 66
    :cond_1
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 68
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .locals 13
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "output"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 77
    iget v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-ne v8, v12, :cond_0

    .line 78
    iget-object v5, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    .line 79
    .local v5, "subtitleVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 81
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    .end local v4    # "i":I
    .end local v5    # "subtitleVariants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "enabledVariantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    iget-object v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iget-object v9, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v7

    .line 91
    .local v7, "variantIndices":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 92
    iget-object v8, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v9, v7, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 98
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer/hls/Variant;

    .line 99
    .local v6, "variant":Lcom/google/android/exoplayer/hls/Variant;
    iget-object v8, v6, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v8, v8, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-gtz v8, :cond_2

    const-string v8, "avc"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 101
    :cond_4
    const-string v8, "mp4a"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 102
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    .end local v6    # "variant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 110
    move-object v2, v1

    .line 119
    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_7

    .line 120
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Lcom/google/android/exoplayer/hls/Variant;

    .line 121
    .local v3, "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    invoke-interface {p2, p1, v3}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    .line 124
    .end local v3    # "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 125
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 111
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 114
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 127
    .end local v0    # "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v1    # "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v2    # "enabledVariantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v4    # "i":I
    .end local v7    # "variantIndices":[I
    :cond_9
    return-void
.end method
