.class public Lcom/jiliguala/niuwa/module/story/api/GsonRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final listener:Lcom/android/volley/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/k$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$b",
            "<TT;>;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/GsonRequest;, "Lcom/jiliguala/niuwa/module/story/api/GsonRequest<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<TT;>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 39
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->clazz:Ljava/lang/Class;

    .line 40
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->headers:Ljava/util/Map;

    .line 41
    iput-object p5, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->listener:Lcom/android/volley/k$b;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/k$b",
            "<TT;>;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/GsonRequest;, "Lcom/jiliguala/niuwa/module/story/api/GsonRequest<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 54
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->clazz:Ljava/lang/Class;

    .line 55
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->headers:Ljava/util/Map;

    .line 56
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->listener:Lcom/android/volley/k$b;

    .line 57
    return-void
.end method

.method protected static getApiStub()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/GsonRequest;, "Lcom/jiliguala/niuwa/module/story/api/GsonRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->listener:Lcom/android/volley/k$b;

    invoke-interface {v0, p1}, Lcom/android/volley/k$b;->onResponse(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/GsonRequest;, "Lcom/jiliguala/niuwa/module/story/api/GsonRequest<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->headers:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/jiliguala/niuwa/module/story/api/GsonRequest;, "Lcom/jiliguala/niuwa/module/story/api/GsonRequest<TT;>;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 77
    .local v2, "json":Ljava/lang/String;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/api/GsonRequest;->clazz:Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, "jsonObject":Ljava/lang/Object;, "TT;"
    instance-of v4, v3, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    if-eqz v4, :cond_0

    .line 79
    move-object v0, v3

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;

    move-object v4, v0

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/story/data/json/StoryResponse;->data:Lcom/jiliguala/niuwa/module/story/data/json/Story;

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/story/data/json/Story;->setSource(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/b$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/k;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 86
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonObject":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v4

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v4

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v4

    goto :goto_0
.end method
