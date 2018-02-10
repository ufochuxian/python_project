.class public Lcom/youzan/androidsdk/c/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


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

    .line 32
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/i;->a:I

    .line 25
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->b:Ljava/lang/String;

    .line 26
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->c:Ljava/lang/String;

    .line 27
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->d:Ljava/lang/String;

    .line 28
    const-string v0, "item_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/i;->e:I

    .line 29
    const-string v0, "tag_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->f:Ljava/lang/String;

    .line 30
    const-string v0, "share_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->g:Ljava/lang/String;

    .line 31
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->h:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/youzan/androidsdk/c/c/i;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/youzan/androidsdk/c/c/i;->a:I

    .line 40
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "itemNum"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/youzan/androidsdk/c/c/i;->e:I

    .line 72
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->c:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "created"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->d:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->f:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/youzan/androidsdk/c/c/i;->e:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->g:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/i;->h:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/i;->h:Ljava/lang/String;

    return-object v0
.end method
