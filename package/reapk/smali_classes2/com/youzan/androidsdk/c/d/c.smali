.class public Lcom/youzan/androidsdk/c/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/youzan/androidsdk/c/d/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-nez p1, :cond_1

    .line 30
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance v3, Lcom/youzan/androidsdk/c/d/a;

    const-string v4, "paginator"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/youzan/androidsdk/c/d/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/c;->a:Lcom/youzan/androidsdk/c/d/a;

    .line 22
    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    .local v0, "arrayObj":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 25
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/c;->b:Ljava/util/List;

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 27
    iget-object v3, p0, Lcom/youzan/androidsdk/c/d/c;->b:Ljava/util/List;

    new-instance v4, Lcom/youzan/androidsdk/c/d/b;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/youzan/androidsdk/c/d/b;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/d/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Lcom/youzan/androidsdk/c/d/a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/c;->a:Lcom/youzan/androidsdk/c/d/a;

    return-object v0
.end method
