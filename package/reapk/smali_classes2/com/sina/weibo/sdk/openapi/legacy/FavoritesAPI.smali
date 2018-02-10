.class public Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SourceFile"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/favorites"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 36
    return-void
.end method

.method private buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2
    .param p1, "count"    # I
    .param p2, "page"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 202
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 203
    const-string v1, "page"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 204
    return-object v0
.end method


# virtual methods
.method public byTags(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 83
    invoke-direct {p0, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 84
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 85
    const-string v1, "https://api.weibo.com/2/favorites/by_tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 86
    return-void
.end method

.method public byTagsIds(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 109
    invoke-direct {p0, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 110
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 111
    const-string v1, "https://api.weibo.com/2/favorites/by_tags/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 112
    return-void
.end method

.method public create(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 121
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 122
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 123
    const-string v1, "https://api.weibo.com/2/favorites/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 124
    return-void
.end method

.method public destroy(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 133
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 134
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 135
    const-string v1, "https://api.weibo.com/2/favorites/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 136
    return-void
.end method

.method public destroyBatch([JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 8
    .param p1, "ids"    # [J
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 145
    new-instance v2, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 146
    .local v2, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v3, "strb":Ljava/lang/StringBuilder;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, "ids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "https://api.weibo.com/2/favorites/destroy_batch.json"

    const-string v5, "POST"

    invoke-virtual {p0, v4, v2, v5, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 153
    return-void

    .line 147
    :cond_0
    aget-wide v0, p1, v4

    .line 148
    .local v0, "id":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public favorites(IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 47
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/favorites.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 48
    return-void
.end method

.method public ids(IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 59
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/favorites/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 60
    return-void
.end method

.method public show(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 69
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 70
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 71
    const-string v1, "https://api.weibo.com/2/favorites/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 72
    return-void
.end method

.method public tags(IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->buildCountPage(II)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 97
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/favorites/tags.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 98
    return-void
.end method

.method public tagsDestroyBatch(JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "tid"    # J
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 195
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 196
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 197
    const-string v1, "https://api.weibo.com/2/favorites/tags/destroy_batch.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 198
    return-void
.end method

.method public tagsUpdate(J[Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "tags"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 163
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 164
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v3, "id"

    invoke-virtual {v0, v3, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v1, "strb":Ljava/lang/StringBuilder;
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "tags"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "https://api.weibo.com/2/favorites/tags/update.json"

    const-string v4, "POST"

    invoke-virtual {p0, v3, v0, v4, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 172
    return-void

    .line 166
    :cond_0
    aget-object v2, p3, v3

    .line 167
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public tagsUpdateBatch(JLjava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 182
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 183
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "tid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 184
    const-string v1, "tag"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "https://api.weibo.com/2/favorites/tags/update_batch.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FavoritesAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 186
    return-void
.end method
