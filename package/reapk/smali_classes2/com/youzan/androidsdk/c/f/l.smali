.class public Lcom/youzan/androidsdk/c/f/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v0, "points_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->a:I

    .line 29
    const-string v0, "buy_way"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->b:I

    .line 30
    const-string v0, "goods_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->c:I

    .line 31
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->d:Ljava/lang/String;

    .line 32
    const-string v0, "goods_no"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->e:Ljava/lang/String;

    .line 33
    const-string v0, "quota"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->f:I

    .line 34
    const-string v0, "is_virtual"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/l;->g:Z

    .line 35
    const-string v0, "mark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->h:I

    .line 36
    const-string v0, "supplier_kdt_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->i:I

    .line 37
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->j:Ljava/lang/String;

    .line 38
    const-string v0, "supplier_goods_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/l;->k:I

    .line 39
    const-string v0, "img_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->l:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/l;->g:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/youzan/androidsdk/c/f/l;->k:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/l;->l:Ljava/lang/String;

    return-object v0
.end method
