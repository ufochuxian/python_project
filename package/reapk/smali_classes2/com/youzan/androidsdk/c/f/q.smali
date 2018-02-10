.class public Lcom/youzan/androidsdk/c/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/youzan/androidsdk/c/c/e;

.field private f:Lcom/youzan/androidsdk/c/f/s;

.field private g:Z

.field private h:Lcom/youzan/androidsdk/c/f/p;

.field private i:Z

.field private j:Z

.field private k:Lcom/youzan/androidsdk/c/f/t;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/youzan/androidsdk/c/f/o;

.field private p:Z

.field private q:Lcom/youzan/androidsdk/c/f/r;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v0, "isSelf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->a:Z

    .line 35
    const-string v0, "isHasFission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->b:Z

    .line 36
    const-string v0, "isVirtualTicket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->c:Z

    .line 37
    const-string v0, "isPaidPromotion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->d:Z

    .line 38
    const-string v0, "share"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/youzan/androidsdk/c/c/e;

    const-string v2, "share"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youzan/androidsdk/c/c/e;-><init>(Lorg/json/JSONObject;)V

    :goto_1
    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->e:Lcom/youzan/androidsdk/c/c/e;

    .line 39
    new-instance v0, Lcom/youzan/androidsdk/c/f/s;

    const-string v2, "paidPromotionExt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youzan/androidsdk/c/f/s;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->f:Lcom/youzan/androidsdk/c/f/s;

    .line 40
    const-string v0, "isRedirect"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->g:Z

    .line 41
    const-string v0, "memberCardExt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/youzan/androidsdk/c/f/p;

    const-string v2, "memberCardExt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youzan/androidsdk/c/f/p;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->h:Lcom/youzan/androidsdk/c/f/p;

    .line 42
    const-string v0, "isGiftCard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->i:Z

    .line 43
    const-string v0, "isWishOrder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->j:Z

    .line 44
    const-string v0, "virtualTicketExt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/youzan/androidsdk/c/f/t;

    const-string v2, "virtualTicketExt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youzan/androidsdk/c/f/t;-><init>(Lorg/json/JSONObject;)V

    :goto_3
    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->k:Lcom/youzan/androidsdk/c/f/t;

    .line 45
    const-string v0, "isHideSaveButton"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->l:Z

    .line 46
    const-string v0, "isAllowShare"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->m:Z

    .line 47
    const-string v0, "isHaveMemberCard"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->n:Z

    .line 48
    const-string v0, "fissionExt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/youzan/androidsdk/c/f/o;

    const-string v2, "fissionExt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youzan/androidsdk/c/f/o;-><init>(Lorg/json/JSONObject;)V

    :goto_4
    iput-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->o:Lcom/youzan/androidsdk/c/f/o;

    .line 49
    const-string v0, "isSelfFetch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->p:Z

    .line 50
    const-string v0, "order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/youzan/androidsdk/c/f/r;

    const-string v0, "order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/youzan/androidsdk/c/f/r;-><init>(Lorg/json/JSONObject;)V

    :cond_1
    iput-object v1, p0, Lcom/youzan/androidsdk/c/f/q;->q:Lcom/youzan/androidsdk/c/f/r;

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 38
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 41
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 44
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 48
    goto :goto_4
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->d:Z

    return v0
.end method

.method public e()Lcom/youzan/androidsdk/c/c/e;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->e:Lcom/youzan/androidsdk/c/c/e;

    return-object v0
.end method

.method public f()Lcom/youzan/androidsdk/c/f/s;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->f:Lcom/youzan/androidsdk/c/f/s;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->g:Z

    return v0
.end method

.method public h()Lcom/youzan/androidsdk/c/f/p;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->h:Lcom/youzan/androidsdk/c/f/p;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->j:Z

    return v0
.end method

.method public k()Lcom/youzan/androidsdk/c/f/t;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->k:Lcom/youzan/androidsdk/c/f/t;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->m:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->n:Z

    return v0
.end method

.method public o()Lcom/youzan/androidsdk/c/f/o;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->o:Lcom/youzan/androidsdk/c/f/o;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/f/q;->p:Z

    return v0
.end method

.method public q()Lcom/youzan/androidsdk/c/f/r;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youzan/androidsdk/c/f/q;->q:Lcom/youzan/androidsdk/c/f/r;

    return-object v0
.end method
