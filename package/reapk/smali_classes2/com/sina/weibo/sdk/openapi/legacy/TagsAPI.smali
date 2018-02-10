.class public Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SourceFile"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/tags"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 34
    return-void
.end method


# virtual methods
.method public create([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 7
    .param p1, "tags"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 90
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 91
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "strb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, "tags"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "https://api.weibo.com/2/tags/create.json"

    const-string v4, "POST"

    invoke-virtual {p0, v3, v0, v4, p2}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 98
    return-void

    .line 92
    :cond_0
    aget-object v2, p1, v3

    .line 93
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public destroy(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "tag_id"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 107
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 108
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "tag_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 109
    const-string v1, "https://api.weibo.com/2/tags/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 110
    return-void
.end method

.method public destroyBatch([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 7
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 119
    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 120
    .local v1, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v2, "strb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, "ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "https://api.weibo.com/2/tags/destroy_batch.json"

    const-string v4, "POST"

    invoke-virtual {p0, v3, v1, v4, p2}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 127
    return-void

    .line 121
    :cond_0
    aget-object v0, p1, v3

    .line 122
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public suggestions(ILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 78
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 79
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 80
    const-string v1, "https://api.weibo.com/2/tags/suggestions.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 81
    return-void
.end method

.method public tags(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 47
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 48
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 49
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 50
    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 51
    const-string v1, "https://api.weibo.com/2/tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 52
    return-void
.end method

.method public tagsBatch([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 7
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 61
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 62
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, "strb":Ljava/lang/StringBuilder;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "uids"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "https://api.weibo.com/2/tags/tags_batch.json"

    const-string v4, "GET"

    invoke-virtual {p0, v3, v0, v4, p2}, Lcom/sina/weibo/sdk/openapi/legacy/TagsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 69
    return-void

    .line 63
    :cond_0
    aget-object v2, p1, v3

    .line 64
    .local v2, "uid":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
