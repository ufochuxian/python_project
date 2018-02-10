.class public Lcom/youzan/androidsdk/c/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Z

.field private F:I

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private P:J

.field private Q:J

.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:D


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 65
    :cond_1
    const-string v6, "kdt_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->a:Ljava/lang/String;

    .line 66
    const-string v6, "num_iid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->b:Ljava/lang/String;

    .line 67
    const-string v6, "alias"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->c:Ljava/lang/String;

    .line 68
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->d:Ljava/lang/String;

    .line 69
    const-string v6, "cid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->e:I

    .line 70
    const-string v6, "promotion_cid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->f:I

    .line 71
    const-string v6, "tag_ids"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->g:Ljava/lang/String;

    .line 72
    const-string v6, "desc"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->h:Ljava/lang/String;

    .line 73
    const-string v6, "origin_price"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->i:Ljava/lang/String;

    .line 74
    const-string v6, "outer_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->j:Ljava/lang/String;

    .line 75
    const-string v6, "outer_buy_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->k:Ljava/lang/String;

    .line 76
    const-string v6, "buy_quota"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->l:I

    .line 77
    const-string v6, "created"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->m:Ljava/lang/String;

    .line 78
    const-string v6, "is_virtual"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->n:Z

    .line 79
    const-string v6, "is_listing"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->o:Z

    .line 80
    const-string v6, "is_lock"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->p:Z

    .line 81
    const-string v6, "is_used"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->q:Z

    .line 82
    const-string v6, "product_type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->r:Ljava/lang/String;

    .line 83
    const-string v6, "auto_listing_time"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/c/a;->s:J

    .line 84
    const-string v6, "detail_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->t:Ljava/lang/String;

    .line 85
    const-string v6, "share_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->u:Ljava/lang/String;

    .line 86
    const-string v6, "pic_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->v:Ljava/lang/String;

    .line 87
    const-string v6, "pic_thumb_url"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->w:Ljava/lang/String;

    .line 88
    const-string v6, "num"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->x:I

    .line 89
    const-string v6, "sold_num"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->y:I

    .line 90
    const-string v6, "price"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/c/a;->z:D

    .line 91
    const-string v6, "post_type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->A:I

    .line 92
    const-string v6, "post_fee"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->B:Ljava/lang/String;

    .line 93
    const-string v6, "delivery_template_fee"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->C:Ljava/lang/String;

    .line 94
    const-string v6, "item_type"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->D:I

    .line 95
    const-string v6, "is_supplier_item"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->E:Z

    .line 96
    const-string v6, "like_count"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->F:I

    .line 97
    const-string v6, "template_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/youzan/androidsdk/c/c/a;->G:I

    .line 98
    const-string v6, "template_title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->H:Ljava/lang/String;

    .line 99
    const-string v6, "join_level_discount"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youzan/androidsdk/c/c/a;->I:Z

    .line 100
    const-string v6, "sku_tree"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->O:Ljava/lang/String;

    .line 101
    const-string v6, "item_validity_start"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/c/a;->P:J

    .line 102
    const-string v6, "item_validity_end"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/youzan/androidsdk/c/c/a;->Q:J

    .line 104
    const-string v6, "skus"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 105
    .local v5, "skusArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 106
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->J:Ljava/util/List;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->J:Ljava/util/List;

    new-instance v7, Lcom/youzan/androidsdk/c/c/g;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/c/c/g;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_2
    const-string v6, "item_imgs"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 113
    .local v1, "itemImgsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->K:Ljava/util/List;

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 116
    iget-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->K:Ljava/util/List;

    new-instance v7, Lcom/youzan/androidsdk/c/c/b;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/c/c/b;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "i":I
    :cond_3
    const-string v6, "item_qrcodes"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 121
    .local v3, "itemQrcodesArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->L:Ljava/util/List;

    .line 123
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 124
    iget-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->L:Ljava/util/List;

    new-instance v7, Lcom/youzan/androidsdk/c/c/d;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/c/c/d;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "i":I
    :cond_4
    const-string v6, "item_tags"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 129
    .local v4, "itemTagsArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 130
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->M:Ljava/util/List;

    .line 131
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 132
    iget-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->M:Ljava/util/List;

    new-instance v7, Lcom/youzan/androidsdk/c/c/i;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/c/c/i;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    .end local v0    # "i":I
    :cond_5
    const-string v6, "messages"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 137
    .local v2, "itemMessagesArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->N:Ljava/util/List;

    .line 139
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 140
    iget-object v6, p0, Lcom/youzan/androidsdk/c/c/a;->N:Ljava/util/List;

    new-instance v7, Lcom/youzan/androidsdk/c/c/c;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/c/c/c;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->B:Ljava/lang/String;

    return-object v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->A:I

    return v0
.end method

.method public D()D
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/c/a;->z:D

    return-wide v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->f:I

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->J:Ljava/util/List;

    return-object v0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->y:I

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->G:I

    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public P()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/c/a;->Q:J

    return-wide v0
.end method

.method public Q()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/c/a;->P:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/c/a;->s:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->l:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->o:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->p:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->E:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->q:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->n:Z

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->K:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->L:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
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
    .line 207
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->M:Ljava/util/List;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->D:I

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/a;->I:Z

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->F:I

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->N:Ljava/util/List;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/youzan/androidsdk/c/c/a;->x:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/a;->w:Ljava/lang/String;

    return-object v0
.end method
