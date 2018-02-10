.class Lio/fabric/sdk/android/services/settings/m;
.super Lio/fabric/sdk/android/services/common/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/settings/x;


# static fields
.field static final a:Ljava/lang/String; = "build_version"

.field static final b:Ljava/lang/String; = "display_version"

.field static final c:Ljava/lang/String; = "instance"

.field static final d:Ljava/lang/String; = "source"

.field static final e:Ljava/lang/String; = "icon_hash"

.field static final f:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-MODEL"

.field static final g:Ljava/lang/String; = "X-CRASHLYTICS-OS-BUILD-VERSION"

.field static final h:Ljava/lang/String; = "X-CRASHLYTICS-OS-DISPLAY-VERSION"

.field static final i:Ljava/lang/String; = "X-CRASHLYTICS-ADVERTISING-TOKEN"

.field static final j:Ljava/lang/String; = "X-CRASHLYTICS-INSTALLATION-ID"

.field static final k:Ljava/lang/String; = "X-CRASHLYTICS-ANDROID-ID"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;)V
    .locals 6
    .param p1, "kit"    # Lio/fabric/sdk/android/i;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/c;

    .prologue
    .line 66
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->GET:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/settings/m;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .locals 0
    .param p1, "kit"    # Lio/fabric/sdk/android/i;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "requestFactory"    # Lio/fabric/sdk/android/services/network/c;
    .param p5, "method"    # Lio/fabric/sdk/android/services/network/HttpMethod;

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    .line 75
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/w;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .locals 2
    .param p1, "request"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "requestData"    # Lio/fabric/sdk/android/services/settings/w;

    .prologue
    .line 162
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, Lio/fabric/sdk/android/services/settings/m;->kit:Lio/fabric/sdk/android/i;

    invoke-virtual {v1}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "X-CRASHLYTICS-DEVICE-MODEL"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "X-CRASHLYTICS-OS-BUILD-VERSION"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "X-CRASHLYTICS-ADVERTISING-TOKEN"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->f:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "X-CRASHLYTICS-ANDROID-ID"

    iget-object v1, p2, Lio/fabric/sdk/android/services/settings/w;->g:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "httpRequestBody"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse settings JSON from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/m;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lio/fabric/sdk/android/services/network/HttpRequest;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 179
    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p1, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    .line 182
    :cond_0
    return-void
.end method

.method private b(Lio/fabric/sdk/android/services/settings/w;)Ljava/util/Map;
    .locals 4
    .param p1, "requestData"    # Lio/fabric/sdk/android/services/settings/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/w;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v1, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "build_version"

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/w;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "display_version"

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/w;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "source"

    iget v3, p1, Lio/fabric/sdk/android/services/settings/w;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v2, p1, Lio/fabric/sdk/android/services/settings/w;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "icon_hash"

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/w;->l:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    iget-object v0, p1, Lio/fabric/sdk/android/services/settings/w;->h:Ljava/lang/String;

    .line 152
    .local v0, "instanceId":Ljava/lang/String;
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    const-string v2, "instance"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    return-object v1
.end method


# virtual methods
.method a(Lio/fabric/sdk/android/services/network/HttpRequest;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "httpRequest"    # Lio/fabric/sdk/android/services/network/HttpRequest;

    .prologue
    .line 106
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->c()I

    move-result v0

    .line 107
    .local v0, "statusCode":I
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings result was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/settings/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/network/HttpRequest;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/settings/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    .local v1, "toReturn":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 113
    .end local v1    # "toReturn":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve settings from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/m;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    .restart local v1    # "toReturn":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public a(Lio/fabric/sdk/android/services/settings/w;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "requestData"    # Lio/fabric/sdk/android/services/settings/w;

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "toReturn":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 83
    .local v1, "httpRequest":Lio/fabric/sdk/android/services/network/HttpRequest;
    :try_start_0
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/settings/m;->b(Lio/fabric/sdk/android/services/settings/w;)Ljava/util/Map;

    move-result-object v2

    .line 84
    .local v2, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/services/settings/m;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 85
    invoke-direct {p0, v1, p1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;Lio/fabric/sdk/android/services/settings/w;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v1

    .line 87
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting settings from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/settings/m;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings query params were: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/settings/m;->a(Lio/fabric/sdk/android/services/network/HttpRequest;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings request ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X-REQUEST-ID"

    .line 97
    invoke-virtual {v1, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v2    # "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Fabric"

    const-string v6, "Settings request failed."

    invoke-interface {v4, v5, v6, v0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v3, 0x0

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings request ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X-REQUEST-ID"

    .line 97
    invoke-virtual {v1, v7}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "e":Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 96
    invoke-static {}, Lio/fabric/sdk/android/d;->i()Lio/fabric/sdk/android/l;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings request ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X-REQUEST-ID"

    .line 97
    invoke-virtual {v1, v8}, Lio/fabric/sdk/android/services/network/HttpRequest;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v4
.end method

.method a(I)Z
    .locals 1
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 125
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
