.class public Lcom/jiliguala/niuwa/module/story/data/OfflineManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/k$a;
.implements Lcom/android/volley/k$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/k$a;",
        "Lcom/android/volley/k$b",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRELOAD_LIBRARY_PATH:Ljava/lang/String; = "preload_library"

.field private static final PRELOAD_LIBRARY_SCRIPTS_PATH:Ljava/lang/String; = "preload_library/scripts"


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private final mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

.field private final mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

.field private mStories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/b/a/e;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 54
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetStore()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 55
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getAssetCache()Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    .line 56
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/MyApplication;->getLiveDataManager()Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    .line 59
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStoriesDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    return-void
.end method

.method private doRequest(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<Lcom/jiliguala/niuwa/logic/network/c;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getVolleyManager()Lcom/jiliguala/niuwa/module/story/data/VolleyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/VolleyManager;->getRequestQueue()Lcom/android/volley/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/j;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 142
    return-void
.end method

.method private getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadStories()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->loadStoriesFromStoriesDirectory()Ljava/util/Set;

    move-result-object v0

    .line 64
    .local v0, "stories":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->loadStoriesFromAssetsDirectory()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-object v0
.end method

.method private loadStoriesFromAssetsDirectory()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v4, "stories":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    :try_start_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/MyApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 89
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v6, "preload_library/scripts"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "libraryPaths":[Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v2, v6

    .line 92
    .local v3, "path":Ljava/lang/String;
    const-string v8, ".json"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preload_library/scripts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "fullPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/story/helpers/FileHelper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->loadStoryFromString(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v5

    .line 95
    .local v5, "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "fullPath":Ljava/lang/String;
    .end local v5    # "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "libraryPaths":[Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 102
    :cond_1
    return-object v4
.end method

.method private loadStoriesFromStoriesDirectory()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v2, "stories":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStoriesDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 72
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 73
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 75
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/helpers/FileHelper;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->loadStoryFromString(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v3

    .line 76
    .local v3, "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    iget-object v6, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setLastReadTime(J)V

    .line 77
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :cond_0
    return-object v2
.end method

.method private loadStoryFromString(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .locals 3
    .param p1, "storyJson"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .line 107
    .local v0, "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    iget-object v1, v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setSource(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method


# virtual methods
.method public fixStories()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 260
    new-array v0, v3, [I

    aput v1, v0, v1

    .line 287
    .local v0, "brokenStoryCount":[I
    aget v1, v0, v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MQ"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    :cond_0
    return-void
.end method

.method public getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;
    .locals 3
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStoriesDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStories:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->loadStories()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStories:Ljava/util/Set;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStories:Ljava/util/Set;

    return-object v0
.end method

.method public getStoriesDirectory()Ljava/io/File;
    .locals 3
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stories"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStory(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .locals 3
    .param p1, "storyId"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStories()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .line 209
    .local v0, "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    .end local v0    # "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStoryCount()I
    .locals 6

    .prologue
    .line 188
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStories:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStoriesDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "scriptList":[Ljava/lang/String;
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 194
    .local v0, "offlineStoryCount":I
    :goto_0
    const/4 v2, 0x0

    .line 196
    .local v2, "preloadStoryCount":I
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/MyApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "preload_library/scripts"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "preloadScriptList":[Ljava/lang/String;
    array-length v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "preloadScriptList":[Ljava/lang/String;
    :goto_1
    add-int v4, v0, v2

    .line 203
    .end local v0    # "offlineStoryCount":I
    .end local v2    # "preloadStoryCount":I
    .end local v3    # "scriptList":[Ljava/lang/String;
    :goto_2
    return v4

    .line 192
    .restart local v3    # "scriptList":[Ljava/lang/String;
    :cond_0
    array-length v0, v3

    goto :goto_0

    .line 203
    .end local v3    # "scriptList":[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStories:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    goto :goto_2

    .line 198
    .restart local v0    # "offlineStoryCount":I
    .restart local v2    # "preloadStoryCount":I
    .restart local v3    # "scriptList":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public isAvailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Z
    .locals 3
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->getAllAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    .line 114
    .local v0, "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;->contains(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 120
    .end local v0    # "asset":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public isEnoughFreeSpace(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 224
    .local v0, "filesDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x6400000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeAvailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "failureCallback"    # Ljava/lang/Runnable;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getAuthToken()Ljava/lang/String;
    :try_end_0
    .catch Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager$NotAuthenticatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    new-instance v0, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mLiveDataManager:Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;

    move-object v1, p1

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;-><init>(Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/LiveDataManager;Lcom/jiliguala/niuwa/module/story/data/OfflineManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/helpers/StoryStoreAgent;->store()V

    .line 136
    iget-object v0, p1, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setLastReadTime(J)V

    .line 137
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public makeUnavailableOffline(Lcom/jiliguala/niuwa/module/story/data/json/Story;Landroid/content/Context;)V
    .locals 3
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mStore:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->mCache:Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;-><init>(Lcom/jiliguala/niuwa/module/story/data/json/Story;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/cache/AssetStore;Lcom/jiliguala/niuwa/module/story/data/OfflineManager;)V

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/helpers/StoryUnstoreAgent;->unstore()V

    .line 163
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 295
    return-void
.end method

.method public onResponse(Lcom/jiliguala/niuwa/logic/network/c;)V
    .locals 0
    .param p1, "response"    # Lcom/jiliguala/niuwa/logic/network/c;

    .prologue
    .line 300
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/jiliguala/niuwa/logic/network/c;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->onResponse(Lcom/jiliguala/niuwa/logic/network/c;)V

    return-void
.end method

.method public touchStory(Lcom/jiliguala/niuwa/module/story/data/json/Story;)V
    .locals 7
    .param p1, "story"    # Lcom/jiliguala/niuwa/module/story/data/json/Story;

    .prologue
    .line 233
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    .line 236
    .local v4, "touchTime":J
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getFile(Lcom/jiliguala/niuwa/module/story/data/json/Story;)Ljava/io/File;

    move-result-object v1

    .line 237
    .local v1, "storyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStories()Ljava/util/Set;

    move-result-object v0

    .line 244
    .local v0, "stories":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    .line 246
    .local v2, "storyInSet":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    iget-object v6, v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v6, v4, v5}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setLastReadTime(J)V

    goto :goto_0

    .line 253
    .end local v2    # "storyInSet":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :cond_2
    invoke-virtual {p1, v4, v5}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setLastReadTime(J)V

    .line 254
    return-void
.end method
