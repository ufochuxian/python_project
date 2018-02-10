.class public Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;


# instance fields
.field faz_level:C

.field id:Ljava/lang/String;

.field thumb:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    .locals 1
    .param p0, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;-><init>()V

    .line 22
    .local v0, "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->update(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    .line 23
    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "level"    # C
    .param p3, "thumb"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;-><init>()V

    .line 28
    .local v0, "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->update(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 29
    return-object v0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "level"    # C
    .param p4, "thumb"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->title:Ljava/lang/String;

    .line 39
    iput-char p3, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->faz_level:C

    .line 40
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->thumb:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getFAZLevel()C
    .locals 1

    .prologue
    .line 54
    iget-char v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->faz_level:C

    if-nez v0, :cond_0

    .line 55
    const/16 v0, 0x23

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->faz_level:C

    goto :goto_0
.end method

.method public getThumb()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->thumb:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public update(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 33
    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->getFAZLevel()C

    move-result v2

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->update(Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 34
    return-void
.end method
