.class public final enum Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum GETMEDIAURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum GETPOSITION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

.field public static final enum STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;


# instance fields
.field private mArguments:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v5, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 13
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 14
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v7, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 15
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "GETPOSITION"

    invoke-direct {v0, v1, v8, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETPOSITION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 16
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "GETTRANSPORTSTATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 17
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "GETMEDIADURATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 18
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "GETVOLUME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 19
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "SEEK"

    const/4 v2, 0x7

    .line 21
    new-instance v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$1;

    invoke-direct {v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 24
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "PUSHURL"

    const/16 v2, 0x8

    new-instance v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;

    invoke-direct {v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$2;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 29
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "PLAYMEDIA"

    const/16 v2, 0x9

    new-instance v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$3;

    invoke-direct {v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$3;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 34
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "SETVOLUME"

    const/16 v2, 0xa

    new-instance v3, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$4;

    invoke-direct {v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION$4;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 37
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    const-string v1, "GETMEDIAURI"

    const/16 v2, 0xb

    .line 42
    invoke-direct {v0, v1, v2, v4}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;-><init>(Ljava/lang/String;ILjava/util/Vector;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIAURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETPOSITION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIAURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "arguments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->mArguments:Ljava/util/Vector;

    .line 49
    return-void
.end method

.method public static BuildJsonWithArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 8
    .param p0, "function"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 80
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v5

    .line 89
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v4, "functionContent":Lorg/json/JSONObject;
    const-string v6, "Flavor"

    const-string v7, "DLNA"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v2, "content":Lorg/json/JSONObject;
    const-string v6, "Action"

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 121
    :cond_2
    const-string v6, "Content"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 105
    .local v0, "argument":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "argumentValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v0    # "argument":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
    .end local v1    # "argumentValue":Ljava/lang/String;
    .end local v2    # "content":Lorg/json/JSONObject;
    .end local v4    # "functionContent":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Lorg/json/JSONObject;)Ljava/util/Vector;
    .locals 6
    .param p0, "function"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    .param p1, "jObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 75
    :cond_1
    :goto_0
    return-object v2

    .line 62
    :cond_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 64
    .local v2, "argumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArguments()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;

    .line 66
    .local v0, "argument":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;
    if-nez v0, :cond_3

    move-object v2, v3

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "argumentValue":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getArguments()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION_ARGUMENT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->mArguments:Ljava/util/Vector;

    return-object v0
.end method
