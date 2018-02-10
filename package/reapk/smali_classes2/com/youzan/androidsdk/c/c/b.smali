.class public Lcom/youzan/androidsdk/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/c/b;->a:I

    .line 23
    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->b:Ljava/lang/String;

    .line 24
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->c:Ljava/lang/String;

    .line 25
    const-string v0, "thumbnail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->d:Ljava/lang/String;

    .line 26
    const-string v0, "medium"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->e:Ljava/lang/String;

    .line 27
    const-string v0, "combine"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->f:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/youzan/androidsdk/c/c/b;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/youzan/androidsdk/c/c/b;->a:I

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "created"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/b;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/b;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/b;->d:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "medium"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/b;->e:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "combine"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/youzan/androidsdk/c/c/b;->f:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youzan/androidsdk/c/c/b;->f:Ljava/lang/String;

    return-object v0
.end method
