.class public Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI;
.super Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI$CAPITAL;
    }
.end annotation


# static fields
.field public static final LANGUAGE_EN:Ljava/lang/String; = "english"

.field public static final LANGUAGE_ZH_CN:Ljava/lang/String; = "zh-cn"

.field public static final LANGUAGE_ZH_TW:Ljava/lang/String; = "zh-tw"

.field private static final SERVER_URL_PRIX:Ljava/lang/String; = "https://api.weibo.com/2/common"


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/openapi/AbsOpenAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "capital"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 62
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 63
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "province"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    const-string v1, "capital"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    const-string v1, "language"

    invoke-virtual {v0, v1, p3}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "https://api.weibo.com/2/common/get_city.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p4}, Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 69
    return-void
.end method

.method public getCountry(Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI$CAPITAL;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "capital"    # Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI$CAPITAL;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 81
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 82
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    if-eqz p1, :cond_0

    .line 83
    const-string v1, "capital"

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI$CAPITAL;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    const-string v1, "language"

    invoke-virtual {v0, v1, p2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "https://api.weibo.com/2/common/get_country.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p3}, Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 87
    return-void
.end method

.method public getTimezone(Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 99
    new-instance v0, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>()V

    .line 100
    .local v0, "params":Lcom/sina/weibo/sdk/net/WeiboParameters;
    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "https://api.weibo.com/2/common/get_timezone.json"

    const-string v2, "GET"

    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/sina/weibo/sdk/openapi/legacy/CommonAPI;->requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 102
    return-void
.end method
