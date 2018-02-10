.class public abstract Lcom/youzan/androidsdk/d/d;
.super Lcom/youzan/androidsdk/loader/http/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youzan/androidsdk/loader/http/d",
        "<",
        "Lcom/youzan/androidsdk/c/d/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
            "Lcom/youzan/androidsdk/c/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-class v0, Lcom/youzan/androidsdk/c/d/c;

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
    .line 16
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/d/d;->b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/d/c;
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const-string v1, "itemReviewsModels"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "body":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/youzan/androidsdk/c/d/c;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youzan/androidsdk/c/d/c;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported json structures"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 20
    const-string v0, "appsdk.item.reviews/1.0.0/queryreview"

    return-object v0
.end method
