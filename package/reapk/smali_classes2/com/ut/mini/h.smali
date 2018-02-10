.class public Lcom/ut/mini/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "(\\|\\||[\t\r\n])+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ut/mini/h;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/h;->a:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    return-void
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    if-eqz p1, :cond_2

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ut/mini/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 141
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/ut/mini/h;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 113
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    :cond_0
    return-object p0
.end method

.method private static d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p0, :cond_13

    .line 197
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->IMEI:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->IMEI:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->IMSI:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->IMSI:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->CARRIER:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->CARRIER:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ACCESS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ACCESS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_3
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_4
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->CHANNEL:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->CHANNEL:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_5
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->LL_USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->LL_USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_6
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->USERNICK:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_7
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->LL_USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->LL_USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_8
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->USERID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_9
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->SDKVERSION:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->SDKVERSION:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_a
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_b
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->UTDID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 249
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->UTDID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_c
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->SDKTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 253
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->SDKTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_d
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 257
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_e
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE3:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 261
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE3:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_f
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE4:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 265
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE4:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_10
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE5:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 269
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVE5:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_11
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVES:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVES:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_12
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 278
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_13
    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {p0}, Lcom/ut/mini/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method private static e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p0, :cond_1

    .line 289
    const-string v0, "_field_os"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "_field_os"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    const-string v1, "_field_os"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->OS:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    const-string v0, "_field_os_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "_field_os_version"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    const-string v1, "_field_os_version"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->OSVERSION:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    return-void
.end method

.method private static f(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->SDKTYPE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private static g(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 319
    const-string v0, "_track_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "_track_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    const-string v2, "_track_id"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const-string v2, "_tkid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 330
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->RESERVES:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/alibaba/mtl/log/e/p;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->PAGE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->PAGE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UT"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 345
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/g;->c(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 424
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 425
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 415
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V

    .line 416
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/util/Map;)V

    .line 407
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ut/mini/h;->a:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    const-string v0, "setGlobalProperty"

    const-string v1, "key is null or key is empty or value is null,please check it!"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 153
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    invoke-direct {p0, v0}, Lcom/ut/mini/h;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 158
    iget-object v0, p0, Lcom/ut/mini/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "_track_id"

    iget-object v1, p0, Lcom/ut/mini/h;->a:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-static {}, Lcom/ut/mini/a/a;->d()Lcom/ut/mini/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_1
    invoke-static {v5}, Lcom/ut/mini/h;->d(Ljava/util/Map;)V

    .line 177
    invoke-static {v5}, Lcom/ut/mini/h;->e(Ljava/util/Map;)V

    .line 178
    invoke-static {v5}, Lcom/ut/mini/h;->f(Ljava/util/Map;)V

    .line 179
    invoke-static {v5}, Lcom/ut/mini/h;->g(Ljava/util/Map;)V

    .line 185
    sget-object v0, Lcom/alibaba/mtl/log/model/LogField;->PAGE:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/mtl/log/model/LogField;->ARG1:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/alibaba/mtl/log/model/LogField;->ARG2:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/alibaba/mtl/log/model/LogField;->ARG3:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/log/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    :cond_2
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 85
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 354
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 355
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/g;->b(Ljava/util/Map;)V

    .line 389
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 380
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/g;->e(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ut/mini/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1
    .param p1, "aKey"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ut/mini/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 438
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/g;->d(Ljava/lang/Object;)V

    .line 439
    return-void
.end method
