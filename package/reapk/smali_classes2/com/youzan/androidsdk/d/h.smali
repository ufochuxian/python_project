.class public abstract Lcom/youzan/androidsdk/d/h;
.super Lcom/youzan/androidsdk/loader/http/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youzan/androidsdk/loader/http/d",
        "<",
        "Lcom/youzan/androidsdk/c/e/c;",
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
            "Lcom/youzan/androidsdk/c/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const-class v0, Lcom/youzan/androidsdk/c/e/c;

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
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/d/h;->b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/e/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)Lcom/youzan/androidsdk/c/e/c;
    .locals 2
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
    .line 32
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    .local v0, "item":Lorg/json/JSONObject;
    new-instance v1, Lcom/youzan/androidsdk/c/e/c;

    invoke-direct {v1, v0}, Lcom/youzan/androidsdk/c/e/c;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 21
    const-string v0, "appsdk.shop.status/1.0.0/get"

    return-object v0
.end method
