.class public Lcom/android/volley/toolbox/m;
.super Lcom/android/volley/toolbox/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/o",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONArray;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 87
    return-void

    .line 86
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONObject;
    .param p5, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 102
    return-void

    .line 101
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/o;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONArray;
    .param p4, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/m;-><init>(ILjava/lang/String;Lorg/json/JSONArray;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONObject;
    .param p4, "errorListener"    # Lcom/android/volley/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/k$b",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/android/volley/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p3, "listener":Lcom/android/volley/k$b;, "Lcom/android/volley/k$b<Lorg/json/JSONArray;>;"
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/m;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/k$b;Lcom/android/volley/k$a;)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/b$a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/volley/k;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 134
    .end local v2    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v3

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "je":Lorg/json/JSONException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/k;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;

    move-result-object v3

    goto :goto_0
.end method
