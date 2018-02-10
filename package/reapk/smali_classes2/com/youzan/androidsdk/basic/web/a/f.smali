.class public final Lcom/youzan/androidsdk/basic/web/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "meta"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->d:Z

    .line 17
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/web/a/f;->c(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/a/f;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/youzan/androidsdk/basic/web/a/f;->d:Z

    .line 26
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/a/f;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    .line 46
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "meta":Lorg/json/JSONObject;
    const-string v6, "types"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 52
    .local v1, "argsTypes":Lorg/json/JSONArray;
    const-string v6, "args"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, "argsData":Lorg/json/JSONArray;
    const-string v6, "method"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/youzan/androidsdk/basic/web/a/f;->b(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, "currType":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 57
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_1
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 60
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "currData":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/youzan/androidsdk/basic/web/a/f;->a(Ljava/lang/String;)V

    .line 63
    .end local v2    # "currData":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/youzan/androidsdk/basic/web/a/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "argsData":Lorg/json/JSONArray;
    .end local v1    # "argsTypes":Lorg/json/JSONArray;
    .end local v3    # "currType":Ljava/lang/String;
    .end local v5    # "meta":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 65
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->d:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/youzan/androidsdk/basic/web/a/f;

    .line 79
    .local v0, "that":Lcom/youzan/androidsdk/basic/web/a/f;
    iget-object v3, p0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/a/f;->a:Ljava/lang/String;

    return-object v0
.end method
