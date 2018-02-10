.class public Lcom/jiliguala/niuwa/logic/network/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/logic/network/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/jiliguala/niuwa/logic/network/e;, "Lcom/jiliguala/niuwa/logic/network/e<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/gson/Gson;
    .locals 4

    .prologue
    .line 39
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/e$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/logic/network/e$a;-><init>(Lcom/jiliguala/niuwa/logic/network/e$1;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 40
    .local v0, "gson":Lcom/google/gson/Gson;
    return-object v0
.end method

.method private static a(Lcom/google/gson/stream/JsonReader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/stream/JsonReader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    .line 26
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 29
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 29
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v0, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Lcom/google/gson/stream/JsonReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 59
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 45
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "jsonStr":Ljava/lang/String;
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 51
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/jiliguala/niuwa/logic/network/e$1;

    invoke-direct {v3}, Lcom/jiliguala/niuwa/logic/network/e$1;-><init>()V

    .line 52
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/e$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 54
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "jsonStr"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 63
    const-string v0, "JSON_STR"

    invoke-static {v0, p0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method
