.class public Lcom/youzan/androidsdk/c/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v0, "exchange_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->a:Ljava/lang/String;

    .line 22
    const-string v0, "end_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->b:Ljava/lang/String;

    .line 23
    const-string v0, "promotion_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->c:Ljava/lang/String;

    .line 24
    const-string v0, "promotion_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/g/f;->d:I

    .line 25
    const-string v0, "promotion_type_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/g/f;->e:I

    .line 26
    const-string v0, "exchange_points"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/g/f;->f:I

    .line 27
    const-string v0, "start_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->g:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/youzan/androidsdk/c/g/f;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/youzan/androidsdk/c/g/f;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/youzan/androidsdk/c/g/f;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youzan/androidsdk/c/g/f;->g:Ljava/lang/String;

    return-object v0
.end method
