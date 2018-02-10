.class public Lcom/youzan/androidsdk/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "certType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "logo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/youzan/androidsdk/c/e/a;->a:I

    .line 19
    iput-object p2, p0, Lcom/youzan/androidsdk/c/e/a;->b:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/youzan/androidsdk/c/e/a;->c:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/youzan/androidsdk/c/e/a;->d:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/youzan/androidsdk/c/e/a;->e:Ljava/lang/String;

    .line 23
    return-void
.end method

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

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v0, "cert_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/a;->a:I

    .line 29
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->b:Ljava/lang/String;

    .line 30
    const-string v0, "logo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->c:Ljava/lang/String;

    .line 31
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->d:Ljava/lang/String;

    .line 32
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/youzan/androidsdk/c/e/a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youzan/androidsdk/c/e/a;->e:Ljava/lang/String;

    return-object v0
.end method
