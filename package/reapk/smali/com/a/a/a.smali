.class public Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/c;
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/a/a/c;->a()Lcom/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(D)V
    .locals 2
    .param p0, "amount"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->a(D)V

    .line 77
    return-void
.end method

.method public static a(J)V
    .locals 2
    .param p0, "sessionTimeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->b(J)Lcom/a/a/c;

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/c;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/c;

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->a(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static a(Ljava/lang/String;ID)V
    .locals 2
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/a/a/c;->a(Ljava/lang/String;ID)V

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "quantity"    # I
    .param p2, "price"    # D
    .param p4, "receipt"    # Ljava/lang/String;
    .param p5, "receiptSignature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/c;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "eventProperties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 61
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "userProperties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->a(Lorg/json/JSONObject;)V

    .line 93
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p0, "userProperties"    # Lorg/json/JSONObject;
    .param p1, "replace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c;->a(Lorg/json/JSONObject;Z)V

    .line 98
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .param p0, "newDeviceIdPerInstall"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->a(Z)Lcom/a/a/c;

    .line 26
    return-void
.end method

.method public static b()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->b()Lcom/a/a/c;

    .line 31
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->e(Ljava/lang/String;)Lcom/a/a/c;

    .line 103
    return-void
.end method

.method public static b(Z)V
    .locals 1
    .param p0, "optOut"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/c;->b(Z)Lcom/a/a/c;

    .line 51
    return-void
.end method

.method public static c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->c()Lcom/a/a/c;

    .line 36
    return-void
.end method

.method public static d()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->d()Lcom/a/a/c;

    .line 41
    return-void
.end method

.method public static e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->q()V

    .line 66
    return-void
.end method

.method public static f()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public static g()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
