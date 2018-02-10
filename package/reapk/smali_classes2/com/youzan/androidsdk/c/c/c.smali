.class public Lcom/youzan/androidsdk/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

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
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/c;->a:Ljava/lang/String;

    .line 25
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/c;->b:Ljava/lang/String;

    .line 26
    const-string v0, "multiple"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/c;->c:I

    .line 27
    const-string v0, "required"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/c;->d:I

    .line 28
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->e:Z

    .line 29
    const-string v0, "disableDelete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->f:Z

    .line 30
    const-string v0, "disableEditName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->g:Z

    .line 31
    const-string v0, "disableType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->h:Z

    .line 32
    const-string v0, "disableRequired"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->i:Z

    .line 33
    const-string v0, "disableMultiple"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->j:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->f:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->j:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->i:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/youzan/androidsdk/c/c/c;->h:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/youzan/androidsdk/c/c/c;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/youzan/androidsdk/c/c/c;->d:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/c;->b:Ljava/lang/String;

    return-object v0
.end method
