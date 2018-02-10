.class public Lcom/youzan/androidsdk/c/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v2, "tags"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 23
    .local v1, "itemsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/youzan/androidsdk/c/c/h;->a:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/youzan/androidsdk/c/c/h;->a:Ljava/util/List;

    new-instance v3, Lcom/youzan/androidsdk/c/c/i;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/youzan/androidsdk/c/c/i;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    .end local v0    # "i":I
    :cond_1
    const-string v2, "total_results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/youzan/androidsdk/c/c/h;->b:I

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
            "Lcom/youzan/androidsdk/c/c/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "totalResults"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youzan/androidsdk/c/c/h;->b:I

    .line 46
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youzan/androidsdk/c/c/i;>;"
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/h;->a:Ljava/util/List;

    .line 38
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/youzan/androidsdk/c/c/h;->b:I

    return v0
.end method
