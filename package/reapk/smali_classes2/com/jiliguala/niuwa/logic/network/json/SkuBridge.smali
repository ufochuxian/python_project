.class public Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canShareLessonReferral:Z

.field public merchantID:Ljava/lang/String;

.field public needsShip:Z

.field public price:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
