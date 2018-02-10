.class public Lcom/a/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    .local v1, "properties":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "properties":Lorg/json/JSONObject;
    .local v2, "properties":Lorg/json/JSONObject;
    move-object v1, v2

    .line 21
    .end local v2    # "properties":Lorg/json/JSONObject;
    .restart local v1    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method public static a(D)V
    .locals 2
    .param p0, "amount"    # D

    .prologue
    .line 67
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->a(D)V

    .line 68
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 33
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->a(Landroid/app/Application;)Lcom/a/a/c;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/c;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;D)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 105
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 109
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 110
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 113
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 114
    return-void
.end method

.method public static a(Ljava/lang/String;ID)V
    .locals 2
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D

    .prologue
    .line 71
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/a/a/c;->a(Ljava/lang/String;ID)V

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D
    .param p4, "receipt"    # Ljava/lang/String;
    .param p5, "receiptSignature"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/c;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 117
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->a(Ljava/lang/String;J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 118
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "jsonProperties"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "jsonProperties"    # Ljava/lang/String;
    .param p2, "outOfSession"    # Z

    .prologue
    .line 51
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 101
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 102
    return-void
.end method

.method public static a(Ljava/lang/String;[D)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [D

    .prologue
    .line 141
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 142
    return-void
.end method

.method public static a(Ljava/lang/String;[F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 145
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 146
    return-void
.end method

.method public static a(Ljava/lang/String;[I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 149
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 150
    return-void
.end method

.method public static a(Ljava/lang/String;[J)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [J

    .prologue
    .line 153
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 154
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 158
    return-void
.end method

.method public static a(Ljava/lang/String;[Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Z

    .prologue
    .line 137
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;[Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 138
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 59
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->b(Z)Lcom/a/a/c;

    .line 60
    return-void
.end method

.method public static b()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static b(Ljava/lang/String;D)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 166
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 167
    return-void
.end method

.method public static b(Ljava/lang/String;F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 170
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 171
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 175
    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 178
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->b(Ljava/lang/String;J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 179
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 122
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 162
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 163
    return-void
.end method

.method public static b(Ljava/lang/String;[D)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [D

    .prologue
    .line 202
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 203
    return-void
.end method

.method public static b(Ljava/lang/String;[F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 206
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 207
    return-void
.end method

.method public static b(Ljava/lang/String;[I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 210
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 211
    return-void
.end method

.method public static b(Ljava/lang/String;[J)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [J

    .prologue
    .line 214
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 215
    return-void
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 219
    return-void
.end method

.method public static b(Ljava/lang/String;[Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Z

    .prologue
    .line 198
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;[Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 199
    return-void
.end method

.method public static b(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 84
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->e(Z)Lcom/a/a/c;

    .line 85
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->e(Ljava/lang/String;)Lcom/a/a/c;

    .line 56
    return-void
.end method

.method public static c(Ljava/lang/String;D)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 223
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->c(Ljava/lang/String;D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 224
    return-void
.end method

.method public static c(Ljava/lang/String;F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 227
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 228
    return-void
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 231
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 232
    return-void
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 235
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->c(Ljava/lang/String;J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 236
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/a/a/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 126
    return-void
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 248
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 249
    return-void
.end method

.method public static c(Ljava/lang/String;[D)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [D

    .prologue
    .line 288
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 289
    return-void
.end method

.method public static c(Ljava/lang/String;[F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .prologue
    .line 292
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 293
    return-void
.end method

.method public static c(Ljava/lang/String;[I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 296
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 297
    return-void
.end method

.method public static c(Ljava/lang/String;[J)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [J

    .prologue
    .line 300
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 301
    return-void
.end method

.method public static c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 305
    return-void
.end method

.method public static c(Ljava/lang/String;[Z)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # [Z

    .prologue
    .line 284
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;[Z)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 285
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()V

    .line 92
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "jsonProperties"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-static {p0}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lorg/json/JSONObject;)V

    .line 64
    return-void
.end method

.method public static d(Ljava/lang/String;D)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 252
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->d(Ljava/lang/String;D)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 253
    return-void
.end method

.method public static d(Ljava/lang/String;F)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 256
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->d(Ljava/lang/String;F)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 257
    return-void
.end method

.method public static d(Ljava/lang/String;I)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 260
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->d(Ljava/lang/String;I)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 261
    return-void
.end method

.method public static d(Ljava/lang/String;J)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 264
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lcom/a/a/h;->d(Ljava/lang/String;J)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 265
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    .local v0, "properties":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/a/a/h;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0}, Lcom/a/a/h;->a(Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 97
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 183
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/a/a/h;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 187
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    .local v0, "properties":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/a/a/h;->b(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 240
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/a/a/h;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 244
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/a/a/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 269
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/a/a/h;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    .line 273
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p1}, Lcom/a/c/a/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    .local v0, "properties":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    new-instance v2, Lcom/a/a/h;

    invoke-direct {v2}, Lcom/a/a/h;-><init>()V

    const-string v3, "list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/a/a/h;->c(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/a/a/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/h;)V

    goto :goto_0
.end method
