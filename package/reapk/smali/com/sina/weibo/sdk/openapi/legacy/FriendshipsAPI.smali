.class public Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SourceFile"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/friendships"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 35
    return-void
.end method

.method private buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I

    .prologue
    .line 353
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 354
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 355
    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 356
    return-object v0
.end method

.method private buildFriendsParam(IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 3
    .param p1, "count"    # I
    .param p2, "cursor"    # I
    .param p3, "trim_status"    # Z

    .prologue
    .line 344
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 345
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "count"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 346
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 347
    const-string v2, "trim_status"

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 348
    return-object v0

    .line 347
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bilateral(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 97
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 98
    const-string v1, "https://api.weibo.com/2/friendships/friends/bilateral.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 99
    return-void
.end method

.method public bilateralIds(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 111
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 112
    const-string v1, "https://api.weibo.com/2/friendships/friends/bilateral/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 113
    return-void
.end method

.method public chainFollowers(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "page"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 228
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "page"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 229
    const-string v1, "https://api.weibo.com/2/friendships/friends_chain/followers.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 230
    return-void
.end method

.method public create(JLjava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "screen_name"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 296
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 297
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 298
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "https://api.weibo.com/2/friendships/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 300
    return-void
.end method

.method public create(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 311
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "https://api.weibo.com/2/friendships/create.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 313
    return-void
.end method

.method public destroy(JLjava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "screen_name"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 323
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 324
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 325
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "https://api.weibo.com/2/friendships/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 327
    return-void
.end method

.method public destroy(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 338
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v1, "https://api.weibo.com/2/friendships/destroy.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 340
    return-void
.end method

.method public followers(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "cursor"    # I
    .param p5, "trim_status"    # Z
    .param p6, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 156
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 157
    const-string v2, "trim_status"

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 158
    const-string v1, "https://api.weibo.com/2/friendships/followers.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 159
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public followers(Ljava/lang/String;IIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "cursor"    # I
    .param p4, "trim_status"    # Z
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 171
    invoke-direct {p0, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendsParam(IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 172
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "https://api.weibo.com/2/friendships/followers.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 174
    return-void
.end method

.method public followersActive(JILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 215
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/friendships/followers/active.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 216
    return-void
.end method

.method public followersIds(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "cursor"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 186
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 187
    const-string v1, "https://api.weibo.com/2/friendships/followers/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 188
    return-void
.end method

.method public followersIds(Ljava/lang/String;IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "cursor"    # I
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 199
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 200
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 202
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 203
    const-string v1, "https://api.weibo.com/2/friendships/followers/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 204
    return-void
.end method

.method public friends(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "cursor"    # I
    .param p5, "trim_status"    # Z
    .param p6, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 49
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    invoke-direct {p0, p3, p4, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendsParam(IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 50
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 51
    const-string v1, "https://api.weibo.com/2/friendships/friends.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p6}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 52
    return-void
.end method

.method public friends(Ljava/lang/String;IIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "cursor"    # I
    .param p4, "trim_status"    # Z
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 64
    invoke-direct {p0, p2, p3, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendsParam(IIZ)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 65
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "https://api.weibo.com/2/friendships/friends.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 67
    return-void
.end method

.method public friendsIds(JIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "count"    # I
    .param p4, "cursor"    # I
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 125
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 126
    const-string v1, "https://api.weibo.com/2/friendships/friends/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 127
    return-void
.end method

.method public friendsIds(Ljava/lang/String;IILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "cursor"    # I
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 138
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 139
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 141
    const-string v1, "cursor"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 142
    const-string v1, "https://api.weibo.com/2/friendships/friends/ids.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 143
    return-void
.end method

.method public inCommon(JJIIZLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "suid"    # J
    .param p5, "count"    # I
    .param p6, "page"    # I
    .param p7, "trim_status"    # Z
    .param p8, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->buildFriendIDParam(JI)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 81
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "suid"

    invoke-virtual {v0, v1, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 82
    const-string v1, "page"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 83
    const-string v2, "trim_status"

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 84
    const-string v1, "https://api.weibo.com/2/friendships/friends/in_common.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p8}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show(JJLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "source_id"    # J
    .param p3, "target_id"    # J
    .param p5, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 240
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 241
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "source_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 242
    const-string v1, "target_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 243
    const-string v1, "https://api.weibo.com/2/friendships/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p5}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 244
    return-void
.end method

.method public show(JLjava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "source_id"    # J
    .param p3, "target_screen_name"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 254
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 255
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "source_id"

    invoke-virtual {v0, v1, p1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 256
    const-string v1, "target_screen_name"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "https://api.weibo.com/2/friendships/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 258
    return-void
.end method

.method public show(Ljava/lang/String;JLcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4
    .param p1, "source_screen_name"    # Ljava/lang/String;
    .param p2, "target_id"    # J
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 268
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 269
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "source_screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "target_id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 271
    const-string v1, "https://api.weibo.com/2/friendships/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 272
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "source_screen_name"    # Ljava/lang/String;
    .param p2, "target_screen_name"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 282
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 283
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "target_screen_name"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "source_screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "https://api.weibo.com/2/friendships/show.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/FriendshipsAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 286
    return-void
.end method
