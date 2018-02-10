.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ARGUMENT_VALUE_CHANNEL_MASTER:Ljava/lang/String; = "Master"

.field protected static final ARGUMENT_VALUE_UNIT_ABSTIME:Ljava/lang/String; = "ABS_TIME"

.field protected static final ARGUMENT_VALUE_UNIT_REALTIME:Ljava/lang/String; = "REL_TIME"

.field public static final FUNCTION_TAG_ACTION:Ljava/lang/String; = "Action"

.field public static final FUNCTION_TAG_CONTENT:Ljava/lang/String; = "Content"

.field public static final FUNCTION_TAG_DLNA:Ljava/lang/String; = "DLNA"

.field public static final FUNCTION_TAG_FLAVOR:Ljava/lang/String; = "Flavor"

.field public static final MUTE:Ljava/lang/String; = "1"

.field public static final NOT_IMPLEMENTED:Ljava/lang/String; = "NOT_IMPLEMENTED"

.field public static final SERVER_TAG_MI:Ljava/lang/String; = "Teleal-Cling"

.field public static final UNMUTE:Ljava/lang/String; = "0"

.field private static final UNSPPORT_SERVER_TAGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->mGson:Lcom/google/gson/Gson;

    .line 36
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util$1;

    invoke-direct {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->UNSPPORT_SERVER_TAGS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkServerNameInBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "serverName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->UNSPPORT_SERVER_TAGS:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "serverTag":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static getDefaultArgumentValues()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 195
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->InstanceID:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method public static getMediaTypeByName(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->values()[Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 268
    goto :goto_0

    .line 260
    :cond_2
    aget-object v0, v3, v2

    .line 262
    .local v0, "type":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "MediaType"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\"><item id=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" parentID=\"-1\" restricted=\"1\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 183
    const-string v2, "<upnp:genre>Unknown</upnp:genre>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string v2, "<upnp:storageMedium>UNKNOWN</upnp:storageMedium>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string v2, "<upnp:writeStatus>UNKNOWN</upnp:writeStatus>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string v2, "<upnp:class>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</upnp:class>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    const-string v2, "<dc:title>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</dc:title>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string v2, "</item></DIDL-Lite>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "MetaData":Ljava/lang/String;
    return-object v0
.end method

.method public static getMuteByStr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 310
    .local v0, "mute":Z
    return v0
.end method

.method protected static getPlayArgumentValues()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 202
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Speed:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-object v0
.end method

.method public static getPositionStringBySecondStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "positioninsecond"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 274
    const/4 v14, 0x0

    .line 304
    :goto_0
    return-object v14

    .line 279
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 280
    .local v12, "seconds":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gez v14, :cond_1

    .line 282
    const/4 v14, 0x0

    goto :goto_0

    .line 285
    :cond_1
    const-wide/16 v14, 0x3c

    rem-long v10, v12, v14

    .line 287
    .local v10, "second":J
    const-wide/16 v14, 0x3c

    div-long v8, v12, v14

    .line 289
    .local v8, "minutes":J
    const-wide/16 v14, 0x3c

    rem-long v4, v8, v14

    .line 291
    .local v4, "minute":J
    const-wide/16 v14, 0x3c

    div-long v2, v8, v14

    .line 293
    .local v2, "hours":J
    const-wide/16 v14, 0x9

    cmp-long v14, v10, v14

    if-gez v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "secondStr":Ljava/lang/String;
    :goto_1
    const-wide/16 v14, 0x9

    cmp-long v14, v4, v14

    if-gez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_2
    const-wide/16 v14, 0x9

    cmp-long v14, v2, v14

    if-gez v14, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "0"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "hourStr":Ljava/lang/String;
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 293
    .end local v1    # "hourStr":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    .end local v7    # "secondStr":Ljava/lang/String;
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 295
    .restart local v7    # "secondStr":Ljava/lang/String;
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 297
    .restart local v6    # "minuteStr":Ljava/lang/String;
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 302
    .end local v2    # "hours":J
    .end local v4    # "minute":J
    .end local v6    # "minuteStr":Ljava/lang/String;
    .end local v7    # "secondStr":Ljava/lang/String;
    .end local v8    # "minutes":J
    .end local v10    # "second":J
    .end local v12    # "seconds":J
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method protected static getPushUrlArgumentValues(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "metaData":Ljava/lang/String;
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 248
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->CurrentURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-virtual {v0, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->CurrentURIMetaData:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-object v0
.end method

.method protected static getSeekABSArgumentValues(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "targetPosition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 209
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Unit:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    const-string v2, "ABS_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Target:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object v0
.end method

.method protected static getSeekRELArgumentValues(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "targetPosition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 217
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Unit:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    const-string v2, "REL_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Target:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-object v0
.end method

.method protected static getSetMuteArgumentValues(Z)Ljava/util/Hashtable;
    .locals 3
    .param p0, "mute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSoundArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 232
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v2, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->DesiredMute:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    if-eqz p0, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-object v0

    .line 232
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method protected static getSetVolumeArgumentValues(I)Ljava/util/Hashtable;
    .locals 3
    .param p0, "percent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getSoundArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 239
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->DesiredVolume:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-object v0
.end method

.method protected static getSoundArgumentValues()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getDefaultArgumentValues()Ljava/util/Hashtable;

    move-result-object v0

    .line 225
    .local v0, "argumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->Channel:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    const-string v2, "Master"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-object v0
.end method

.method public static getVolumeByStr(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 321
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIntStrInRange(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "intStr"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-le p1, p2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    .local v1, "value":I
    if-lt v1, p1, :cond_0

    if-gt v1, p2, :cond_0

    .line 159
    const/4 v2, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static isMiDmrDevice(Lorg/cybergarage/upnp/Device;)Z
    .locals 5
    .param p0, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "serverName":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Teleal-Cling"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z
    .locals 5
    .param p0, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/4 v3, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v3

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "deviceType":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v1

    .line 53
    .local v1, "sSDPPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    const-string v4, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isQiyiServer()Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getServer()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "serverName":Ljava/lang/String;
    invoke-static {v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->checkServerNameInBlackList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isValidPositionStr(Ljava/lang/String;)Z
    .locals 11
    .param p0, "PostionStr"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v6

    .line 111
    :cond_1
    const-string v3, ":"

    .line 113
    .local v3, "separator":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "strs":[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 128
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "first":I
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, "second":I
    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 132
    .local v5, "third":I
    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-ge v2, v10, :cond_0

    if-ltz v5, :cond_0

    if-ge v5, v10, :cond_0

    move v6, v7

    .line 134
    goto :goto_0

    .line 141
    .end local v1    # "first":I
    .end local v2    # "second":I
    .end local v5    # "third":I
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
