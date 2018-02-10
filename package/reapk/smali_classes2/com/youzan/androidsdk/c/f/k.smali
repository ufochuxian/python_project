.class public Lcom/youzan/androidsdk/c/f/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/f/n;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private a:I

.field private aA:I

.field private aB:Ljava/lang/String;

.field private aC:Ljava/lang/String;

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aG:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:I

.field private af:Ljava/lang/String;

.field private ag:I

.field private ah:I

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:I

.field private aq:Ljava/lang/String;

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:Z

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->a:I

    .line 106
    const-string v0, "order_no"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->b:Ljava/lang/String;

    .line 107
    const-string v0, "gift_drawback_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->c:I

    .line 108
    const-string v0, "shop_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->d:Ljava/lang/String;

    .line 109
    const-string v0, "created_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->e:Ljava/lang/String;

    .line 110
    const-string v0, "use_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->f:Ljava/lang/String;

    .line 111
    const-string v0, "refund_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->g:I

    .line 112
    const-string v0, "has_fenxao_goods"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->h:I

    .line 113
    const-string v0, "tourist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->i:Ljava/lang/String;

    .line 114
    const-string v0, "express_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->j:Ljava/lang/String;

    .line 115
    const-string v0, "customer_sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->k:Ljava/lang/String;

    .line 116
    const-string v0, "order_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->l:Ljava/lang/String;

    .line 117
    const-string v0, "real_pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->m:Ljava/lang/String;

    .line 118
    const-string v0, "success_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->n:Ljava/lang/String;

    .line 119
    const-string v0, "express_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->o:Ljava/lang/String;

    .line 120
    const-string v0, "refund_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->p:Ljava/lang/String;

    .line 121
    const-string v0, "tel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->q:Ljava/lang/String;

    .line 122
    const-string v0, "stock_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->r:I

    .line 123
    const-string v0, "is_free_postage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->s:Ljava/lang/String;

    .line 124
    const-string v0, "sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->t:Ljava/lang/String;

    .line 125
    const-string v0, "num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->u:I

    .line 126
    const-string v0, "pay_no_postage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->v:Ljava/lang/String;

    .line 127
    const-string v0, "isAllowLaterReceive"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/k;->w:Z

    .line 128
    const-string v0, "pay_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->x:Ljava/lang/String;

    .line 129
    const-string v0, "express_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->y:Ljava/lang/String;

    .line 130
    const-string v0, "express_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->z:Ljava/lang/String;

    .line 131
    const-string v0, "book_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->A:Ljava/lang/String;

    .line 132
    const-string v0, "express_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->B:I

    .line 133
    const-string v0, "change_express"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->C:I

    .line 134
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->D:I

    .line 135
    const-string v0, "customer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->E:Ljava/lang/String;

    .line 136
    const-string v0, "has_child"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->F:Ljava/lang/String;

    .line 137
    const-string v0, "gift_drawback_open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->G:I

    .line 138
    const-string v0, "shop_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->H:Ljava/lang/String;

    .line 139
    const-string v0, "confirm_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->I:Ljava/lang/String;

    .line 140
    const-string v0, "gift_drawback_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->J:I

    .line 141
    const-string v0, "payment_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->K:Ljava/lang/String;

    .line 142
    const-string v0, "is_fans"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->L:Ljava/lang/String;

    .line 143
    const-string v0, "close_state_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->M:Ljava/lang/String;

    .line 144
    const-string v0, "items"

    const-class v1, Lcom/youzan/androidsdk/c/f/n;

    invoke-static {p1, v0, v1}, Lcom/youzan/androidsdk/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->N:Ljava/util/List;

    .line 145
    const-string v0, "state_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->O:Ljava/lang/String;

    .line 146
    const-string v0, "express_no"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->P:Ljava/lang/String;

    .line 147
    const-string v0, "use_ump"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Q:Ljava/lang/String;

    .line 148
    const-string v0, "activity_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->R:Ljava/lang/String;

    .line 149
    const-string v0, "features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->S:Ljava/lang/String;

    .line 150
    const-string v0, "decrease"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->T:Ljava/lang/String;

    .line 151
    const-string v0, "customer_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->U:Ljava/lang/String;

    .line 152
    const-string v0, "customer_province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->V:Ljava/lang/String;

    .line 153
    const-string v0, "inner_transaction_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->W:Ljava/lang/String;

    .line 154
    const-string v0, "kdt_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->X:Ljava/lang/String;

    .line 155
    const-string v0, "outer_transaction_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Y:Ljava/lang/String;

    .line 156
    const-string v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Z:Ljava/lang/String;

    .line 157
    const-string v0, "refund_pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aa:Ljava/lang/String;

    .line 158
    const-string v0, "postage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ab:Ljava/lang/String;

    .line 159
    const-string v0, "bank_pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ac:Ljava/lang/String;

    .line 160
    const-string v0, "customer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ad:Ljava/lang/String;

    .line 161
    const-string v0, "kind"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->ae:I

    .line 162
    const-string v0, "customer_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->af:Ljava/lang/String;

    .line 163
    const-string v0, "refund_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->ag:I

    .line 164
    const-string v0, "server_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->ah:I

    .line 165
    const-string v0, "store_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ai:Ljava/lang/String;

    .line 166
    const-string v0, "original_real_pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aj:Ljava/lang/String;

    .line 167
    const-string v0, "currency"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ak:Ljava/lang/String;

    .line 168
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->al:Ljava/lang/String;

    .line 169
    const-string v0, "close_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->am:Ljava/lang/String;

    .line 170
    const-string v0, "buy_way"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->an:Ljava/lang/String;

    .line 171
    const-string v0, "order_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ao:Ljava/lang/String;

    .line 172
    const-string v0, "gift_order_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->ap:I

    .line 173
    const-string v0, "customer_city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aq:Ljava/lang/String;

    .line 174
    const-string v0, "buyer_permissions"

    const-class v1, Lcom/youzan/androidsdk/c/a/a;

    invoke-static {p1, v0, v1}, Lcom/youzan/androidsdk/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ar:Ljava/util/List;

    .line 175
    const-string v0, "update_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->as:Ljava/lang/String;

    .line 176
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->at:Ljava/lang/String;

    .line 177
    const-string v0, "buyer_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->au:Ljava/lang/String;

    .line 178
    const-string v0, "feedback_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->av:Ljava/lang/String;

    .line 179
    const-string v0, "expire_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aw:Ljava/lang/String;

    .line 180
    const-string v0, "isAllowConfirmReceive"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/k;->ax:Z

    .line 181
    const-string v0, "feedback_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ay:Ljava/lang/String;

    .line 182
    const-string v0, "buy_way_str"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->az:Ljava/lang/String;

    .line 183
    const-string v0, "close_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/k;->aA:I

    .line 184
    const-string v0, "pay_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aB:Ljava/lang/String;

    .line 185
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aC:Ljava/lang/String;

    .line 186
    const-string v0, "acquire_no"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aD:Ljava/lang/String;

    .line 187
    const-string v0, "buyer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aE:Ljava/lang/String;

    .line 188
    const-string v0, "order_tags"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/youzan/androidsdk/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aF:Ljava/util/List;

    .line 189
    const-string v0, "buyer_detail_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aG:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->A:Ljava/lang/String;

    return-object v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->B:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->C:I

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->D:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->E:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->F:Ljava/lang/String;

    return-object v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->G:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->H:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->I:Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->J:I

    return v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->K:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->L:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->M:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/f/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->N:Ljava/util/List;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->O:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->P:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->R:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->S:Ljava/lang/String;

    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->T:Ljava/lang/String;

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->U:Ljava/lang/String;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->V:Ljava/lang/String;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->W:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->X:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->a:I

    return v0
.end method

.method public aA()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->aA:I

    return v0
.end method

.method public aB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aB:Ljava/lang/String;

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aC:Ljava/lang/String;

    return-object v0
.end method

.method public aD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public aE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public aF()Lcom/youzan/androidsdk/c/f/n;
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->N:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youzan/androidsdk/c/f/n;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG()Ljava/util/List;
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
    .line 529
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aF:Ljava/util/List;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aG:Ljava/lang/String;

    return-object v0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public ae()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->ae:I

    return v0
.end method

.method public af()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->af:Ljava/lang/String;

    return-object v0
.end method

.method public ag()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->ag:I

    return v0
.end method

.method public ah()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->ah:I

    return v0
.end method

.method public ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public al()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->al:Ljava/lang/String;

    return-object v0
.end method

.method public am()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->am:Ljava/lang/String;

    return-object v0
.end method

.method public an()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->an:Ljava/lang/String;

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public ap()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->ap:I

    return v0
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aq:Ljava/lang/String;

    return-object v0
.end method

.method public ar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/c/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ar:Ljava/util/List;

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->as:Ljava/lang/String;

    return-object v0
.end method

.method public at()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->at:Ljava/lang/String;

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->au:Ljava/lang/String;

    return-object v0
.end method

.method public av()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->av:Ljava/lang/String;

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public ax()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/k;->ax:Z

    return v0
.end method

.method public ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->az:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->h:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->q:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->r:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->s:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->t:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/youzan/androidsdk/c/f/k;->u:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->v:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/k;->w:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->x:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->y:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/k;->z:Ljava/lang/String;

    return-object v0
.end method
