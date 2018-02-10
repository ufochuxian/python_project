.class public Lcom/jiliguala/niuwa/module/story/data/json/Story;
.super Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/internal/SourceAttachable;


# instance fields
.field private transient mLastReadTime:J

.field private transient mSource:Ljava/lang/String;

.field private transient mSpreadStoryPages:[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

.field private pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

.field spread_layout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;-><init>()V

    return-void
.end method

.method private makeSpreadStoryPages()[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;
    .locals 6

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPageCount()I

    move-result v2

    new-array v1, v2, [Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    .line 63
    .local v1, "spreadStoryPages":[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 64
    new-instance v2, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    mul-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;-><init>(Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;)V

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAllArtwork()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/story/data/internal/Asset;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 94
    .local v1, "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->isSpreadLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    check-cast v1, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    .end local v1    # "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->getLeftArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-object v0
.end method

.method public getAllAssets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/story/data/internal/Asset;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getAllArtwork()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getAllAudio()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-object v0
.end method

.method public getAllAudio()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/story/data/internal/Asset;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 109
    .local v1, "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "page":Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    :cond_1
    return-object v0
.end method

.method public getCover()Lcom/jiliguala/niuwa/module/story/data/json/Cover;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->setStoryAuthor(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->illustrator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->setStoryIllustrator(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->length:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->setStoryLength(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->setStoryLevel(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    return-object v0
.end method

.method public getLastReadTime()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mLastReadTime:J

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryPage(I)Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStoryPageCount()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    array-length v1, v0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->spread_layout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    div-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStoryPages()[Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->isSpreadLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->pages:[Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    .line 52
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mSpreadStoryPages:[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    if-nez v0, :cond_1

    .line 49
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->makeSpreadStoryPages()[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mSpreadStoryPages:[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mSpreadStoryPages:[Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    goto :goto_0
.end method

.method public isSpreadLayout()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->spread_layout:Z

    return v0
.end method

.method public setLastReadTime(J)V
    .locals 1
    .param p1, "lastReadTime"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mLastReadTime:J

    .line 147
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Story;->mSource:Ljava/lang/String;

    .line 139
    return-void
.end method
