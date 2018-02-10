.class public Lcom/youzan/androidsdk/c/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:D

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "outer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->a:Ljava/lang/String;

    .line 28
    const-string v0, "sku_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    .line 29
    const-string v0, "sku_unique_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->c:Ljava/lang/String;

    .line 30
    const-string v0, "num_iid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->d:Ljava/lang/String;

    .line 31
    const-string v0, "properties_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->f:Ljava/lang/String;

    .line 32
    const-string v0, "properties_name_json"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->g:Ljava/lang/String;

    .line 33
    const-string v0, "quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/g;->e:I

    .line 34
    const-string v0, "with_hold_quantity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/g;->h:I

    .line 35
    const-string v0, "price"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/youzan/androidsdk/c/c/g;->i:D

    .line 36
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->j:Ljava/lang/String;

    .line 37
    const-string v0, "modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->k:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/youzan/androidsdk/c/c/g;->i:D

    .line 111
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/youzan/androidsdk/c/c/g;->e:I

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "outerId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "withHoldQuantity"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/youzan/androidsdk/c/c/g;->h:I

    .line 103
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "skuId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "skuUniqueCode"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "numIid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->d:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/youzan/androidsdk/c/c/g;->e:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertiesName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->f:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/youzan/androidsdk/c/c/g;

    .line 136
    .local v0, "that":Lcom/youzan/androidsdk/c/c/g;
    iget-object v1, p0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertiesNameJson"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->g:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "created"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->j:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/youzan/androidsdk/c/c/g;->h:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "modified"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/g;->k:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/youzan/androidsdk/c/c/g;->i:D

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/g;->k:Ljava/lang/String;

    return-object v0
.end method
