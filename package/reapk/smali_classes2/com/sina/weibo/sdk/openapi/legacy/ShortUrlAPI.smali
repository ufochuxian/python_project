.class public Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SourceFile"


# static fields
.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/short_url"


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

.method private buildRequestParams(Ljava/lang/String;JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 2
    .param p1, "url_short"    # Ljava/lang/String;
    .param p2, "since_id"    # J
    .param p4, "max_id"    # J
    .param p6, "count"    # I
    .param p7, "page"    # I

    .prologue
    .line 155
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 156
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "url_short"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "since_id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 158
    const-string v1, "max_id"

    invoke-virtual {v0, v1, p4, p5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;J)V

    .line 159
    const-string v1, "count"

    invoke-virtual {v0, v1, p6}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 160
    const-string v1, "page"

    invoke-virtual {v0, v1, p7}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;I)V

    .line 161
    return-object v0
.end method

.method private buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;
    .locals 4
    .param p1, "url"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v2, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 167
    .local v2, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    if-eqz p1, :cond_0

    .line 168
    array-length v1, p1

    .line 169
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 173
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-object v2

    .line 170
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v2, p2, v3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clicks([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 72
    const-string v1, "url_short"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 73
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/clicks.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 74
    return-void
.end method

.method public commentCounts([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 134
    const-string v1, "url_short"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 135
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/comment/counts.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 136
    return-void
.end method

.method public comments(Ljava/lang/String;JJIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4
    .param p1, "url_short"    # Ljava/lang/String;
    .param p2, "since_id"    # J
    .param p4, "max_id"    # J
    .param p6, "count"    # I
    .param p7, "page"    # I
    .param p8, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 149
    invoke-direct/range {p0 .. p7}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildRequestParams(Ljava/lang/String;JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 150
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/comment/comments.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p8}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 151
    return-void
.end method

.method public expand([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 56
    const-string v1, "url_short"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 57
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/expand.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 58
    return-void
.end method

.method public expandSync([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url_short"    # [Ljava/lang/String;

    .prologue
    .line 61
    const-string v1, "url_short"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 62
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/expand.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestSync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public locations(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 95
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 96
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "url_short"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "https://api.weibo.com/2/short_url/locations.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 98
    return-void
.end method

.method public referers(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 83
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 84
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "url_short"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "https://api.weibo.com/2/short_url/referers.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 86
    return-void
.end method

.method public shareCounts([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_short"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 107
    const-string v1, "url_short"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 108
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/share/counts.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 109
    return-void
.end method

.method public shareStatuses(Ljava/lang/String;JJIILcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 4
    .param p1, "url_short"    # Ljava/lang/String;
    .param p2, "since_id"    # J
    .param p4, "max_id"    # J
    .param p6, "count"    # I
    .param p7, "page"    # I
    .param p8, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 123
    invoke-direct/range {p0 .. p7}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildRequestParams(Ljava/lang/String;JJII)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 124
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/share/statuses.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p8}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 125
    return-void
.end method

.method public shorten([Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "url_long"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 45
    const-string v1, "url_long"

    invoke-direct {p0, p1, v1}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->buildURLRequest([Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/net/WeiboParameters;

    move-result-object v0

    .line 46
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "https://api.weibo.com/2/short_url/shorten.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/ShortUrlAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 47
    return-void
.end method
