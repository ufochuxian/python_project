.class public Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;


# instance fields
.field _id:Ljava/lang/String;

.field author:Ljava/lang/String;

.field cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;
    .annotation build Lorg/b/a/d;
    .end annotation
.end field

.field illustrator:Ljava/lang/String;

.field length:Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field level:Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private transient mPublishedTime:Lorg/joda/time/DateTime;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field published:Z
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->published:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 121
    if-ne p0, p1, :cond_0

    .line 122
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    .line 123
    :cond_0
    instance-of v1, p1, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;

    if-nez v1, :cond_1

    .line 124
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;

    .line 128
    .local v0, "that":Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;->make(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getCoverThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->cover:Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getFAZLevel()C
    .locals 2

    .prologue
    const/16 v1, 0x23

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->level:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    :cond_0
    return v1
.end method

.method public getIllustrator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->illustrator:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/b/a/e;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public isPublished()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->published:Z

    return v0
.end method
