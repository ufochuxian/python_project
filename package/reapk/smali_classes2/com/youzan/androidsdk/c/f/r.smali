.class public Lcom/youzan/androidsdk/c/f/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "realPay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/r;->a:I

    .line 25
    const-string v0, "orderStateStr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->b:Ljava/lang/String;

    .line 26
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/r;->c:I

    .line 27
    const-string v0, "detailUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->d:Ljava/lang/String;

    .line 28
    const-string v0, "buyWay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->e:Ljava/lang/String;

    .line 29
    const-string v0, "orderState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/r;->f:I

    .line 30
    const-string v0, "orderType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/r;->g:I

    .line 31
    const-string v0, "orderTypeStr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->h:Ljava/lang/String;

    .line 32
    const-string v0, "kdtId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/f/r;->i:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/youzan/androidsdk/c/f/r;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/youzan/androidsdk/c/f/r;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/youzan/androidsdk/c/f/r;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/youzan/androidsdk/c/f/r;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/youzan/androidsdk/c/f/r;->i:I

    return v0
.end method
