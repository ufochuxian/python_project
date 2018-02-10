.class public Lcom/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.Identify"


# instance fields
.field protected b:Lorg/json/JSONObject;

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->c:Ljava/util/Set;

    return-void
.end method

.method private a([D)Lorg/json/JSONArray;
    .locals 13
    .param p1, "values"    # [D

    .prologue
    const/4 v5, 0x0

    .line 431
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 432
    .local v0, "array":Lorg/json/JSONArray;
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, p1, v4

    .line 434
    .local v2, "value":D
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v7

    const-string v8, "com.amplitude.api.Identify"

    const-string v9, "Error converting double %d to JSON: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 437
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v5

    const/4 v11, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "value":D
    :cond_0
    return-object v0
.end method

.method private a([F)Lorg/json/JSONArray;
    .locals 12
    .param p1, "values"    # [F

    .prologue
    const/4 v4, 0x0

    .line 418
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 419
    .local v0, "array":Lorg/json/JSONArray;
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v2, p1, v3

    .line 421
    .local v2, "value":F
    float-to-double v6, v2

    :try_start_0
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v6

    const-string v7, "com.amplitude.api.Identify"

    const-string v8, "Error converting float %f to JSON: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 424
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "value":F
    :cond_0
    return-object v0
.end method

.method private a([I)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [I

    .prologue
    .line 444
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 445
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 446
    .local v1, "value":I
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method private a([J)Lorg/json/JSONArray;
    .locals 5
    .param p1, "values"    # [J

    .prologue
    .line 451
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 452
    .local v0, "array":Lorg/json/JSONArray;
    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p1, v1

    .line 453
    .local v2, "value":J
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v2    # "value":J
    :cond_0
    return-object v0
.end method

.method private a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 458
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 459
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 460
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private a([Z)Lorg/json/JSONArray;
    .locals 4
    .param p1, "values"    # [Z

    .prologue
    .line 411
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 412
    .local v0, "array":Lorg/json/JSONArray;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v1, p1, v2

    .line 413
    .local v1, "value":Z
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "value":Z
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 373
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Attempting to perform operation %s with a null or empty string property, ignoring"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 375
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 379
    :cond_0
    if-nez p3, :cond_1

    .line 380
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Attempting to perform operation %s with null value for property %s, ignoring"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    .line 381
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    const-string v2, "$clearAll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "This Identify already contains a $clearAll operation, ignoring operation %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 388
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/a/a/h;->c:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Already used property %s in previous operation, ignoring operation %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p1, v4, v6

    .line 395
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 401
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    iget-object v1, p0, Lcom/a/a/h;->c:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Lcom/a/a/h;
    .locals 5

    .prologue
    .line 355
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/a/a/h;->c:Ljava/util/Set;

    const-string v2, "$clearAll"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    const-string v3, "Need to send $clearAll on its own Identify object without any other operations, ignoring $clearAll"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 358
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    return-object p0

    .line 364
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/a/a/h;->b:Lorg/json/JSONObject;

    const-string v2, "$clearAll"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v1

    const-string v2, "com.amplitude.api.Identify"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v0, "$unset"

    const-string v1, "-"

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-object p0
.end method

.method public a(Ljava/lang/String;D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 29
    const-string v0, "$setOnce"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    return-object p0
.end method

.method public a(Ljava/lang/String;F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 34
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 39
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 44
    const-string v0, "$setOnce"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 466
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-object p0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 54
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-object p0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    const-string v0, "$setOnce"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 24
    const-string v0, "$setOnce"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-object p0
.end method

.method public a(Ljava/lang/String;[D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 69
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-object p0
.end method

.method public a(Ljava/lang/String;[F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 74
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-object p0
.end method

.method public a(Ljava/lang/String;[I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 79
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-object p0
.end method

.method public a(Ljava/lang/String;[J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 84
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-object p0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-object p0
.end method

.method public a(Ljava/lang/String;[Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 64
    const-string v0, "$setOnce"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-object p0
.end method

.method public b(Ljava/lang/String;D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 101
    const-string v0, "$set"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-object p0
.end method

.method public b(Ljava/lang/String;F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 106
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object p0
.end method

.method public b(Ljava/lang/String;I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 111
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-object p0
.end method

.method public b(Ljava/lang/String;J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 116
    const-string v0, "$set"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 472
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    const-string v1, "com.amplitude.api.Identify"

    const-string v2, "This version of setOnce is deprecated. Please use one with a different signature."

    .line 473
    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-object p0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 131
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    return-object p0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 126
    const-string v0, "$set"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-object p0
.end method

.method public b(Ljava/lang/String;Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 96
    const-string v0, "$set"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-object p0
.end method

.method public b(Ljava/lang/String;[D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 141
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-object p0
.end method

.method public b(Ljava/lang/String;[F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 146
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-object p0
.end method

.method public b(Ljava/lang/String;[I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 151
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-object p0
.end method

.method public b(Ljava/lang/String;[J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 156
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-object p0
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-object p0
.end method

.method public b(Ljava/lang/String;[Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 136
    const-string v0, "$set"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-object p0
.end method

.method public c(Ljava/lang/String;D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 168
    const-string v0, "$add"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-object p0
.end method

.method public c(Ljava/lang/String;F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 173
    const-string v0, "$add"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    return-object p0
.end method

.method public c(Ljava/lang/String;I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 178
    const-string v0, "$add"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-object p0
.end method

.method public c(Ljava/lang/String;J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 183
    const-string v0, "$add"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Lcom/a/a/h;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 479
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    const-string v1, "com.amplitude.api.Identify"

    const-string v2, "This version of set is deprecated. Please use one with a different signature."

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "$add"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-object p0
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 232
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-object p0
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 195
    const-string v0, "$add"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-object p0
.end method

.method public c(Ljava/lang/String;Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 202
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-object p0
.end method

.method public c(Ljava/lang/String;[D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 248
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    return-object p0
.end method

.method public c(Ljava/lang/String;[F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 253
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    return-object p0
.end method

.method public c(Ljava/lang/String;[I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 258
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-object p0
.end method

.method public c(Ljava/lang/String;[J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 263
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-object p0
.end method

.method public c(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    return-object p0
.end method

.method public c(Ljava/lang/String;[Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 243
    const-string v0, "$append"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-object p0
.end method

.method public d(Ljava/lang/String;D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 207
    const-string v0, "$append"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    return-object p0
.end method

.method public d(Ljava/lang/String;F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 212
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-object p0
.end method

.method public d(Ljava/lang/String;I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 217
    const-string v0, "$append"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    return-object p0
.end method

.method public d(Ljava/lang/String;J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 222
    const-string v0, "$append"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-object p0
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONArray;

    .prologue
    .line 305
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-object p0
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 238
    const-string v0, "$append"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-object p0
.end method

.method public d(Ljava/lang/String;Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 275
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    return-object p0
.end method

.method public d(Ljava/lang/String;[D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [D

    .prologue
    .line 321
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([D)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    return-object p0
.end method

.method public d(Ljava/lang/String;[F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 326
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([F)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-object p0
.end method

.method public d(Ljava/lang/String;[I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 331
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    return-object p0
.end method

.method public d(Ljava/lang/String;[J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [J

    .prologue
    .line 336
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([J)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-object p0
.end method

.method public d(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    return-object p0
.end method

.method public d(Ljava/lang/String;[Z)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .prologue
    .line 316
    const-string v0, "$prepend"

    invoke-direct {p0, p2}, Lcom/a/a/h;->a([Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    return-object p0
.end method

.method public e(Ljava/lang/String;D)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 280
    const-string v0, "$prepend"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    return-object p0
.end method

.method public e(Ljava/lang/String;F)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 285
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    return-object p0
.end method

.method public e(Ljava/lang/String;I)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 290
    const-string v0, "$prepend"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    return-object p0
.end method

.method public e(Ljava/lang/String;J)Lcom/a/a/h;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 295
    const-string v0, "$prepend"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-object p0
.end method

.method public e(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "values"    # Lorg/json/JSONObject;

    .prologue
    .line 311
    const-string v0, "$prepend"

    invoke-direct {p0, v0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    return-object p0
.end method
