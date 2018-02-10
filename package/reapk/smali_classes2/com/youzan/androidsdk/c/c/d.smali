.class public Lcom/youzan/androidsdk/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/d;->a:I

    .line 26
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->b:Ljava/lang/String;

    .line 27
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->c:Ljava/lang/String;

    .line 28
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->d:Ljava/lang/String;

    .line 29
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->e:Ljava/lang/String;

    .line 30
    const-string v0, "discount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->f:Ljava/lang/String;

    .line 31
    const-string v0, "decrease"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->g:Ljava/lang/String;

    .line 32
    const-string v0, "link_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->h:Ljava/lang/String;

    .line 33
    const-string v0, "weixin_qrcode_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->i:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/youzan/androidsdk/c/c/d;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/youzan/androidsdk/c/c/d;->a:I

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "created"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->e:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "discount"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "decrease"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->g:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->h:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "weixinQrcodeUrl"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/d;->i:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/d;->i:Ljava/lang/String;

    return-object v0
.end method
