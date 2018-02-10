.class public Lcom/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.amplitude.api.Utils"

.field private static b:Lcom/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/k;->b:Lcom/a/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 21
    if-nez p0, :cond_0

    .line 43
    :goto_0
    return-object v5

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 28
    .local v3, "nameArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 32
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 34
    .local v2, "len":I
    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    .line 35
    .local v4, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 36
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 29
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v6, Lcom/a/a/k;->b:Lcom/a/a/d;

    const-string v7, "com.amplitude.api.Utils"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 32
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 40
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/a/a/k;->b:Lcom/a/a/d;

    const-string v7, "com.amplitude.api.Utils"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
