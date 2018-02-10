.class public Lcom/youzan/androidsdk/c/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:J

.field private D:J

.field private E:I

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:J

.field private v:J

.field private w:J

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


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
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/youzan/androidsdk/c/f/f;->a:Z

    .line 49
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v5, "thumb_url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->b:Ljava/lang/String;

    .line 51
    const-string v5, "discount_price"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->c:Ljava/lang/String;

    .line 52
    const-string v5, "num"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->d:I

    .line 53
    const-string v5, "stock_num"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->e:I

    .line 54
    const-string v5, "discount"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->f:Ljava/lang/String;

    .line 55
    const-string v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->g:Ljava/lang/String;

    .line 56
    const-string v5, "activity_alias"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->h:Ljava/lang/String;

    .line 57
    const-string v5, "platform"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->i:Ljava/lang/String;

    .line 58
    const-string v5, "kdt_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    .line 59
    const-string v5, "sub_type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->k:I

    .line 60
    const-string v5, "alias"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->l:Ljava/lang/String;

    .line 61
    const-string v5, "nobody"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->m:Ljava/lang/String;

    .line 62
    const-string v5, "sku"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->n:Ljava/lang/String;

    .line 63
    const-string v5, "direct_seller"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->p:I

    .line 64
    const-string v5, "ext"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->q:Ljava/lang/String;

    .line 65
    const-string v5, "store_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->r:Ljava/lang/String;

    .line 66
    const-string v5, "pay_price"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->s:J

    .line 67
    const-string v5, "error_msg"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->t:Ljava/lang/String;

    .line 68
    const-string v5, "create_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->u:J

    .line 69
    const-string v5, "goods_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    .line 70
    const-string v5, "sku_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    .line 71
    const-string v5, "attachment_url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->x:Ljava/lang/String;

    .line 72
    const-string v5, "service_type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->y:I

    .line 73
    const-string v5, "messages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->z:Ljava/lang/String;

    .line 74
    const-string v5, "support_express_type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->A:Ljava/lang/String;

    .line 75
    const-string v5, "goods_type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->B:I

    .line 76
    const-string v5, "updated_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->C:J

    .line 77
    const-string v5, "channel_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/f/f;->D:J

    .line 78
    const-string v5, "limit_num"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/youzan/androidsdk/c/f/f;->E:I

    .line 80
    iget-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    new-instance v0, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->n:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 83
    .local v4, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 85
    if-lez v2, :cond_2

    .line 86
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    new-instance v3, Lcom/youzan/androidsdk/c/c/f;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/youzan/androidsdk/c/c/f;-><init>(Lorg/json/JSONObject;)V

    .line 89
    .local v3, "item":Lcom/youzan/androidsdk/c/c/f;
    invoke-virtual {v3}, Lcom/youzan/androidsdk/c/c/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v3    # "item":Lcom/youzan/androidsdk/c/c/f;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youzan/androidsdk/c/f/f;->o:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->A:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public D()J
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->C:J

    return-wide v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/f;->a:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "directSeller"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->p:I

    .line 141
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "channelId"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->D:J

    .line 125
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityAlias"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->h:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/youzan/androidsdk/c/f/f;->a:Z

    .line 341
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "goodsType"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->B:I

    .line 189
    return-void
.end method

.method public b(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->u:J

    .line 133
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->l:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "limitNum"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->E:I

    .line 205
    return-void
.end method

.method public c(J)V
    .locals 1
    .param p1, "goodsId"    # J

    .prologue
    .line 180
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    .line 181
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "attachmentUrl"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->x:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->D:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->d:I

    .line 229
    return-void
.end method

.method public d(J)V
    .locals 1
    .param p1, "kdtId"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    .line 197
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->f:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->u:J

    return-wide v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->y:I

    .line 253
    return-void
.end method

.method public e(J)V
    .locals 1
    .param p1, "payPrice"    # J

    .prologue
    .line 236
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->s:J

    .line 237
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "discountPrice"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->c:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 352
    :cond_0
    :goto_0
    return v2

    .line 346
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 348
    check-cast v0, Lcom/youzan/androidsdk/c/f/f;

    .line 350
    .local v0, "model":Lcom/youzan/androidsdk/c/f/f;
    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    iget-wide v6, v0, Lcom/youzan/androidsdk/c/f/f;->j:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 351
    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    iget-wide v6, v0, Lcom/youzan/androidsdk/c/f/f;->v:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 352
    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    iget-wide v6, v0, Lcom/youzan/androidsdk/c/f/f;->w:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->p:I

    return v0
.end method

.method public f(I)V
    .locals 0
    .param p1, "stockNum"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->e:I

    .line 285
    return-void
.end method

.method public f(J)V
    .locals 1
    .param p1, "skuId"    # J

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    .line 277
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->t:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0
    .param p1, "subType"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/youzan/androidsdk/c/f/f;->k:I

    .line 301
    return-void
.end method

.method public g(J)V
    .locals 1
    .param p1, "updatedTime"    # J

    .prologue
    .line 332
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/f/f;->C:J

    .line 333
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->q:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "messages"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->z:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 358
    iget-wide v2, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 359
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 360
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    iget-wide v4, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 361
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "nobody"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->m:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->i:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public k()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->v:J

    return-wide v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->n:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->B:I

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1, "skuDesc"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->o:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public m()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->j:J

    return-wide v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->r:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public n()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->E:I

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .param p1, "supportExpressType"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->A:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->z:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->b:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/youzan/androidsdk/c/f/f;->g:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public q()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->d:I

    return v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->s:J

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->y:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/f/f;->w:J

    return-wide v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->e:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/youzan/androidsdk/c/f/f;->k:I

    return v0
.end method
