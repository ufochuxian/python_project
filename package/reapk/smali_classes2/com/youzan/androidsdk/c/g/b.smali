.class public Lcom/youzan/androidsdk/c/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/youzan/androidsdk/c/g/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/youzan/androidsdk/c/g/f;

.field private d:Lcom/youzan/androidsdk/c/g/d;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
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
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v5, "item_promotion"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    .local v2, "itemPromotionObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 25
    new-instance v5, Lcom/youzan/androidsdk/c/g/a;

    invoke-direct {v5, v2}, Lcom/youzan/androidsdk/c/g/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/youzan/androidsdk/c/g/b;->a:Lcom/youzan/androidsdk/c/g/a;

    .line 28
    :cond_2
    const-string v5, "order_promotions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    .local v3, "orderPromotionsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 30
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/youzan/androidsdk/c/g/b;->b:Ljava/util/List;

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 32
    iget-object v5, p0, Lcom/youzan/androidsdk/c/g/b;->b:Ljava/util/List;

    new-instance v6, Lcom/youzan/androidsdk/c/g/c;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/youzan/androidsdk/c/g/c;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    .end local v1    # "i":I
    :cond_3
    const-string v5, "goods_points"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    .local v0, "goodsPointsObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 38
    new-instance v5, Lcom/youzan/androidsdk/c/g/f;

    invoke-direct {v5, v0}, Lcom/youzan/androidsdk/c/g/f;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/youzan/androidsdk/c/g/b;->c:Lcom/youzan/androidsdk/c/g/f;

    .line 41
    :cond_4
    const-string v5, "package_buy"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "packageBuyObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 43
    new-instance v5, Lcom/youzan/androidsdk/c/g/d;

    invoke-direct {v5, v4}, Lcom/youzan/androidsdk/c/g/d;-><init>(Lorg/json/JSONObject;)V

    iput-object v5, p0, Lcom/youzan/androidsdk/c/g/b;->d:Lcom/youzan/androidsdk/c/g/d;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/youzan/androidsdk/c/g/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/b;->a:Lcom/youzan/androidsdk/c/g/a;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/youzan/androidsdk/c/g/f;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/b;->c:Lcom/youzan/androidsdk/c/g/f;

    return-object v0
.end method

.method public d()Lcom/youzan/androidsdk/c/g/d;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/b;->d:Lcom/youzan/androidsdk/c/g/d;

    return-object v0
.end method
