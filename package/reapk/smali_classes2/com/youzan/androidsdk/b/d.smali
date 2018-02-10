.class public abstract Lcom/youzan/androidsdk/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "returnShareData"

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Lcom/youzan/androidsdk/c/c/e;)V
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lcom/youzan/androidsdk/c/c/e;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/youzan/androidsdk/c/c/e;-><init>(Lorg/json/JSONObject;)V

    .line 49
    .local v0, "model":Lcom/youzan/androidsdk/c/c/e;
    invoke-virtual {p0, p1, v0}, Lcom/youzan/androidsdk/b/d;->a(Landroid/content/Context;Lcom/youzan/androidsdk/c/c/e;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "model":Lcom/youzan/androidsdk/c/c/e;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    goto :goto_0
.end method
