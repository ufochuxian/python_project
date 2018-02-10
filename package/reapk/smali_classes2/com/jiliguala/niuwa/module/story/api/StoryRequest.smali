.class public Lcom/jiliguala/niuwa/module/story/api/StoryRequest;
.super Lcom/jiliguala/niuwa/module/story/api/GsonRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/module/story/api/GsonRequest",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final API_HOST_URL:Ljava/lang/String;

.field static final HTTP_REQEUST_PROD_ADDRESS:Ljava/lang/String; = "jiliguala.com"

.field static final HTTP_REQUEST_ADDRESS:Ljava/lang/String;

.field static final HTTP_REQUEST_DEV_ADDRESS:Ljava/lang/String; = "dev.jiliguala.com"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dev.jiliguala.com"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;->HTTP_REQUEST_ADDRESS:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;->HTTP_REQUEST_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;->API_HOST_URL:Ljava/lang/String;

    return-void

    .line 23
    :cond_0
    const-string v0, "jiliguala.com"

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "storySummary"    # Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$b",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/data/json/StorySummary;->get_id()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "storyId"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$b",
            "<",
            "Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;>;"
    sget-object v0, Lcom/jiliguala/niuwa/module/story/api/StoryRequest;->API_HOST_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "stories"

    .line 41
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_id"

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 44
    return-void
.end method
