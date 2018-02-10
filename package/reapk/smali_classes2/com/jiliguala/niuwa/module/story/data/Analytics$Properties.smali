.class Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Properties"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/data/Analytics;

.field private b:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;)V
    .locals 1

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;Lcom/jiliguala/niuwa/module/story/data/Analytics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/story/data/Analytics;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$1;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;-><init>(Lcom/jiliguala/niuwa/module/story/data/Analytics;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;C)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-object p0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-object p0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object p0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prop"    # Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;

    .prologue
    .line 286
    if-nez p2, :cond_0

    const-string v0, "-"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;->toPropertyValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    if-nez p2, :cond_0

    const-string p2, "-"

    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object p0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/Analytics$Properties;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-object p0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
