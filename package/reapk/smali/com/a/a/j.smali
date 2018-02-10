.class public Lcom/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.Revenue"

.field private static i:Lcom/a/a/d;


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/Double;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/j;->i:Lcom/a/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/a/a/j;->b:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/j;->c:I

    .line 20
    iput-object v1, p0, Lcom/a/a/j;->d:Ljava/lang/Double;

    .line 23
    iput-object v1, p0, Lcom/a/a/j;->e:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/a/a/j;->f:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/a/a/j;->g:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/a/a/j;->h:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(D)Lcom/a/a/j;
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 57
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->d:Ljava/lang/Double;

    .line 58
    return-object p0
.end method

.method public a(I)Lcom/a/a/j;
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/a/a/j;->c:I

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/a/a/j;
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/a/a/j;->i:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "Invalid empty productId"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-object p0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/a/a/j;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/j;
    .locals 0
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "receiptSignature"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/a/a/j;->f:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/a/a/j;->g:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/a/a/j;
    .locals 3
    .param p1, "revenueProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    sget-object v0, Lcom/a/a/j;->i:Lcom/a/a/d;

    const-string v1, "com.amplitude.api.Revenue"

    const-string v2, "setRevenueProperties is deprecated, please use setEventProperties instead"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, p1}, Lcom/a/a/j;->b(Lorg/json/JSONObject;)Lcom/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method protected a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-object v1, p0, Lcom/a/a/j;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/a/a/j;->i:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.Revenue"

    const-string v3, "Invalid revenue, need to set productId field"

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/a/a/j;->d:Ljava/lang/Double;

    if-nez v1, :cond_1

    .line 36
    sget-object v1, Lcom/a/a/j;->i:Lcom/a/a/d;

    const-string v2, "com.amplitude.api.Revenue"

    const-string v3, "Invalid revenue, need to set price"

    invoke-virtual {v1, v2, v3}, Lcom/a/a/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/a/a/j;
    .locals 0
    .param p1, "revenueType"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/a/a/j;->e:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/a/a/j;
    .locals 1
    .param p1, "eventProperties"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    invoke-static {p1}, Lcom/a/a/k;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/j;->h:Lorg/json/JSONObject;

    .line 85
    return-object p0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 89
    iget-object v2, p0, Lcom/a/a/j;->h:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, "obj":Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    const-string v2, "$productId"

    iget-object v3, p0, Lcom/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "$quantity"

    iget v3, p0, Lcom/a/a/j;->c:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v2, "$price"

    iget-object v3, p0, Lcom/a/a/j;->d:Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "$revenueType"

    iget-object v3, p0, Lcom/a/a/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "$receipt"

    iget-object v3, p0, Lcom/a/a/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "$receiptSig"

    iget-object v3, p0, Lcom/a/a/j;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    return-object v1

    .line 89
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/a/a/j;->h:Lorg/json/JSONObject;

    goto :goto_0

    .line 97
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/a/a/j;->i:Lcom/a/a/d;

    const-string v3, "com.amplitude.api.Revenue"

    const-string v4, "Failed to convert revenue object to JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
