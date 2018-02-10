.class public Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RECENT_STORY_COUNT:I = 0xa


# instance fields
.field private mStories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/b/a/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "[]"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    .line 32
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, [Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    .line 33
    .local v0, "blobs":[Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public getStories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public pushStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 5
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "blobToRemove":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    .line 48
    .local v0, "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    move-object v1, v0

    .line 53
    .end local v0    # "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    :cond_1
    if-eqz v1, :cond_2

    .line 54
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->make(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 62
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-class v3, [Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateStory(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V
    .locals 4
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/internal/RecentStories;->mStories:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;

    .line 74
    .local v0, "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;->update(Lcom/jiliguala/niuwa/module/story/data/internal/StoryInfo;)V

    goto :goto_0

    .line 78
    .end local v0    # "blob":Lcom/jiliguala/niuwa/module/story/data/json/StoryInfoBlob;
    :cond_1
    return-void
.end method
