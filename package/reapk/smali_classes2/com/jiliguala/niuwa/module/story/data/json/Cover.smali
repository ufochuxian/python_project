.class public Lcom/jiliguala/niuwa/module/story/data/json/Cover;
.super Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;
.source "SourceFile"


# instance fields
.field image:Ljava/lang/String;

.field private transient storyAuthor:Ljava/lang/String;

.field private transient storyIllustrator:Ljava/lang/String;

.field private transient storyLength:Ljava/lang/String;

.field private transient storyLevel:Ljava/lang/String;

.field voice:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAudio()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->voice:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryIllustrator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyIllustrator:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyLength:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getVoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->voice:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStoryAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "storyAuthor"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyAuthor:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStoryIllustrator(Ljava/lang/String;)V
    .locals 0
    .param p1, "storyIllustrator"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyIllustrator:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setStoryLength(Ljava/lang/String;)V
    .locals 0
    .param p1, "storyLength"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyLength:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setStoryLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "storyLevel"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->storyLevel:Ljava/lang/String;

    .line 47
    return-void
.end method
