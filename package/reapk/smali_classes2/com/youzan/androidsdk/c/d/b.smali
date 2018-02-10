.class public Lcom/youzan/androidsdk/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_1

    .line 76
    :cond_0
    return-void

    .line 43
    :cond_1
    const-string v3, "fansNickname"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->a:Ljava/lang/String;

    .line 44
    const-string v3, "goodsId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->b:I

    .line 45
    const-string v3, "supplierGoodsId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->c:I

    .line 46
    const-string v3, "buyerId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->d:I

    .line 47
    const-string v3, "likeNum"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->e:I

    .line 48
    const-string v3, "fansPicture"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->f:Ljava/lang/String;

    .line 49
    const-string v3, "rate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->g:I

    .line 50
    const-string v3, "review"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->h:Ljava/lang/String;

    .line 51
    const-string v3, "createdTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->i:Ljava/lang/String;

    .line 52
    const-string v3, "alias"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->j:Ljava/lang/String;

    .line 53
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->k:I

    .line 54
    const-string v3, "skuId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->l:I

    .line 55
    const-string v3, "logiRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->m:I

    .line 56
    const-string v3, "orderNo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->n:Ljava/lang/String;

    .line 57
    const-string v3, "fansId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->o:I

    .line 58
    const-string v3, "otherShop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/youzan/androidsdk/c/d/b;->p:Z

    .line 59
    const-string v3, "kdtId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->q:I

    .line 60
    const-string v3, "updateTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->r:Ljava/lang/String;

    .line 61
    const-string v3, "sellerComment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->s:Ljava/lang/String;

    .line 62
    const-string v3, "supplierKdtId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->t:I

    .line 63
    const-string v3, "descRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->u:I

    .line 64
    const-string v3, "ilike"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/youzan/androidsdk/c/d/b;->v:Z

    .line 65
    const-string v3, "servRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->w:I

    .line 66
    const-string v3, "fansType"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youzan/androidsdk/c/d/b;->x:I

    .line 68
    const-string v3, "picture"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 69
    .local v0, "arrayObj":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 71
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->y:Ljava/util/List;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/youzan/androidsdk/c/d/b;->y:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->u:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->o:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->x:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->b:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->k:I

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/d/b;->v:Z

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->q:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->e:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->m:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/d/b;->p:Z

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->y:Ljava/util/List;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->g:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->w:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->l:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/youzan/androidsdk/c/d/b;->t:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/youzan/androidsdk/c/d/b;->r:Ljava/lang/String;

    return-object v0
.end method
