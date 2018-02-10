.class public Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;
.super Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;-><init>()V

    return-void
.end method

.method private getStoryFromCache()Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/MyApplication;->getOfflineManager()Lcom/jiliguala/niuwa/module/story/data/OfflineManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getStoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/story/data/OfflineManager;->getStory(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v0

    return-object v0
.end method

.method public static makeParams(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;
    .locals 1
    .param p0, "storyId"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getParams()Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataParameters;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected isExpired()Z
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->isPublished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 8
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "version"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->s()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "token":Ljava/lang/String;
    const-string v0, "authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getStoryId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    return-object v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 65
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getStoryFromCache()Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v0

    .line 69
    .local v0, "storyRsp":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->onResult(Ljava/lang/Object;)V

    .line 77
    .end local v0    # "storyRsp":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/live/GsonLiveDataOperation;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method protected tryFinishWithoutAuthentication()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getApplication()Lcom/jiliguala/niuwa/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/MyApplication;->getAuthenticationManager()Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/AuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->getStoryFromCache()Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-result-object v0

    .line 47
    .local v0, "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/live/LoadStoryOperation;->onResult(Ljava/lang/Object;)V

    .line 49
    const/4 v1, 0x1

    .line 53
    .end local v0    # "story":Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
