.class public Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;
.super Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private background:Ljava/lang/String;

.field private chinese:Ljava/lang/String;

.field private transient mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

.field private text:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private voice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->background:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->voice:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    goto :goto_0
.end method

.method public getChinese()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->chinese:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotlightInstructions()[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    .locals 6
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 65
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    if-nez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->timestamp:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 67
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    return-object v3

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->timestamp:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "pinspotInstructions":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "lastInstruction":Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    new-instance v4, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    aget-object v5, v2, v0

    invoke-direct {v4, v5, v1}, Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;-><init>(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;)V

    aput-object v4, v3, v0

    .line 78
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->mSpotlightInstructions:[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    aget-object v1, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/JSONStoryPage;->voice:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
