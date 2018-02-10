.class public abstract Lcom/youzan/androidsdk/d/n;
.super Lcom/youzan/androidsdk/loader/http/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youzan/androidsdk/loader/http/d",
        "<",
        "Lcom/youzan/androidsdk/c/f/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/youzan/androidsdk/loader/http/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/youzan/androidsdk/c/f/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    const-class v0, Lcom/youzan/androidsdk/c/f/e;

    return-object v0
.end method

.method protected synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/d/n;->b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/f/e;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/f/e;
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 33
    new-instance v1, Lcom/youzan/androidsdk/c/f/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youzan/androidsdk/c/f/e;-><init>(Lorg/json/JSONObject;)V

    .line 35
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/youzan/androidsdk/c/f/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/youzan/androidsdk/c/f/e;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 26
    const-string v0, "appsdk.trade.cart/1.0.0/list"

    return-object v0
.end method
