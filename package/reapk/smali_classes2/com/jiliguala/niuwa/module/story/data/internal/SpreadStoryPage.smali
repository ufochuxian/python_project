.class public Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;
.super Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
.source "SourceFile"


# instance fields
.field private final mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

.field private final mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;)V
    .locals 0
    .param p1, "left"    # Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;
    .param p2, "right"    # Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    .line 23
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    .line 24
    return-void
.end method


# virtual methods
.method public getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 4
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 59
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    .line 61
    .local v0, "audio":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0-blank.mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    .line 65
    .local v1, "leftAudio":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    if-eqz v1, :cond_0

    .line 69
    .end local v1    # "leftAudio":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getChinese()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getChinese()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getLeftChinese()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getChinese()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpotlightInstructions()[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    .locals 1
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mLeft:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getSpotlightInstructions()[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->mRight:Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->hasAudio()Z

    move-result v0

    return v0
.end method
