.class public abstract Lcom/youzan/androidsdk/basic/web/b/a;
.super Lcom/youzan/androidsdk/basic/web/b/d;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "returnShareData"

    return-object v0
.end method

.method public abstract a(Lcom/youzan/androidsdk/basic/web/a/a;Lcom/youzan/androidsdk/c/c/e;)V
.end method

.method public final a(Lcom/youzan/androidsdk/basic/web/a/a;Ljava/lang/String;)V
    .locals 3
    .param p1, "env"    # Lcom/youzan/androidsdk/basic/web/a/a;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Lcom/youzan/androidsdk/c/c/e;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/youzan/androidsdk/c/c/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1, v1}, Lcom/youzan/androidsdk/basic/web/b/a;->a(Lcom/youzan/androidsdk/basic/web/a/a;Lcom/youzan/androidsdk/c/c/e;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
