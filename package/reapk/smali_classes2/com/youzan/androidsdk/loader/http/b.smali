.class public abstract Lcom/youzan/androidsdk/loader/http/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/loader/http/interfaces/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/youzan/androidsdk/loader/http/interfaces/b;"
    }
.end annotation


# static fields
.field private static final e:I = 0xc8


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youzan/androidsdk/loader/http/interfaces/d;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Lcom/youzan/androidsdk/loader/http/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/youzan/androidsdk/loader/http/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "raw"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youzan/androidsdk/YouzanException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x1

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    new-instance v7, Lcom/youzan/androidsdk/YouzanException;

    const-string v8, "HTTP response body is empty"

    invoke-direct {v7, v8}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "body":Lorg/json/JSONObject;
    const-string v7, "error_response"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 55
    .local v3, "error":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 56
    .local v5, "response":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 57
    const-string v7, "code"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "code":I
    if-eqz v1, :cond_4

    if-eq v1, v9, :cond_4

    .line 59
    new-instance v7, Lcom/youzan/androidsdk/YouzanException;

    const-string v8, "msg"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/youzan/androidsdk/YouzanException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 49
    .end local v0    # "body":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v3    # "error":Lorg/json/JSONObject;
    .end local v5    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/youzan/androidsdk/YouzanException;

    invoke-direct {v7, v2}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 61
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "body":Lorg/json/JSONObject;
    .restart local v3    # "error":Lorg/json/JSONObject;
    .restart local v5    # "response":Lorg/json/JSONObject;
    :cond_1
    if-eqz v5, :cond_3

    .line 62
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 63
    .restart local v1    # "code":I
    const-string v7, "is_success"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 64
    .local v4, "isSuccess":Z
    const-string v7, "success"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 65
    .local v6, "success":Z
    if-eqz v6, :cond_2

    if-nez v4, :cond_4

    .line 66
    :cond_2
    new-instance v7, Lcom/youzan/androidsdk/YouzanException;

    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/youzan/androidsdk/YouzanException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 69
    .end local v1    # "code":I
    .end local v4    # "isSuccess":Z
    .end local v6    # "success":Z
    :cond_3
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 70
    .restart local v1    # "code":I
    if-eqz v1, :cond_4

    if-eq v1, v9, :cond_4

    .line 71
    new-instance v7, Lcom/youzan/androidsdk/YouzanException;

    const-string v8, "msg"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/youzan/androidsdk/YouzanException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 74
    :cond_4
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "body"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TMODE",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/loader/http/b;->a(Lorg/json/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "notImplemented":Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException;
    invoke-virtual {p0}, Lcom/youzan/androidsdk/loader/http/b;->a()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONObject;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "body"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 104
    .local v1, "response":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 105
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 109
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local p1    # "body":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v1

    .line 108
    .end local v0    # "data":Lorg/json/JSONObject;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local p1    # "body":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    .restart local v0    # "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    move-object p1, v0

    .end local p1    # "body":Lorg/json/JSONObject;
    :cond_2
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Class;
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TMODE",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method protected a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TMODE",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    new-instance v0, Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException;

    invoke-direct {v0}, Lcom/youzan/androidsdk/loader/http/interfaces/NotImplementedException;-><init>()V

    throw v0
.end method

.method protected abstract a(Lcom/youzan/androidsdk/YouzanException;)V
    .param p1    # Lcom/youzan/androidsdk/YouzanException;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMODE",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    const/4 v0, 0x1

    return v0
.end method

.method b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMODE",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    invoke-static {p1}, Lcom/youzan/androidsdk/loader/http/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youzan/androidsdk/loader/http/b;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youzan/androidsdk/loader/http/b;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()I
.end method

.method protected abstract d()Ljava/lang/String;
    .annotation build Landroid/support/annotation/z;
    .end annotation
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/youzan/androidsdk/loader/http/b;, "Lcom/youzan/androidsdk/loader/http/b<TMODEL;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/b;->d:Lcom/youzan/androidsdk/loader/http/e;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/youzan/androidsdk/loader/http/b;->d:Lcom/youzan/androidsdk/loader/http/e;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/loader/http/e;->a()V

    .line 136
    :cond_0
    return-void
.end method
