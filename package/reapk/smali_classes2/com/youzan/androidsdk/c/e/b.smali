.class public Lcom/youzan/androidsdk/c/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "defaultOfflineId"    # I
    .param p3, "separateStock"    # I
    .param p4, "separatePrice"    # I
    .param p5, "soldOutRecommend"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/youzan/androidsdk/c/e/b;->a:I

    .line 35
    iput p2, p0, Lcom/youzan/androidsdk/c/e/b;->b:I

    .line 36
    iput p3, p0, Lcom/youzan/androidsdk/c/e/b;->c:I

    .line 37
    iput p4, p0, Lcom/youzan/androidsdk/c/e/b;->d:I

    .line 38
    iput p5, p0, Lcom/youzan/androidsdk/c/e/b;->e:I

    .line 39
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/b;->a:I

    .line 46
    const-string v0, "default_offline_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/b;->b:I

    .line 47
    const-string v0, "separate_stock"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/b;->c:I

    .line 48
    const-string v0, "separate_price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/b;->d:I

    .line 49
    const-string v0, "sold_out_recommend"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youzan/androidsdk/c/e/b;->e:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/youzan/androidsdk/c/e/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/youzan/androidsdk/c/e/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/youzan/androidsdk/c/e/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/youzan/androidsdk/c/e/b;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/youzan/androidsdk/c/e/b;->e:I

    return v0
.end method
