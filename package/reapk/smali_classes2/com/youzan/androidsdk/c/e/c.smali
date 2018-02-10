.class public Lcom/youzan/androidsdk/c/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


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

    .line 34
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "is_bind_weixin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->a:Z

    .line 25
    const-string v0, "is_weixin_service"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->b:Z

    .line 26
    const-string v0, "is_weixin_unauthorized_service"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->c:Z

    .line 27
    const-string v0, "is_weixin_publisher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->d:Z

    .line 28
    const-string v0, "is_weixin_unauthorized_publisher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->e:Z

    .line 29
    const-string v0, "is_secured_transactions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->f:Z

    .line 30
    const-string v0, "is_set_shopping_cart"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->g:Z

    .line 31
    const-string v0, "is_set_buy_record"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->h:Z

    .line 32
    const-string v0, "is_set_customer_reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->i:Z

    .line 33
    const-string v0, "is_set_fans_only"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->j:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->f:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->h:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->i:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->j:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->b:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->e:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/e/c;->c:Z

    return v0
.end method
