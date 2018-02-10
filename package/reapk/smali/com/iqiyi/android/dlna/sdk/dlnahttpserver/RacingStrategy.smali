.class public Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static dataHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->dataHashMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isMessageOk(Lorg/cybergarage/http/HTTPRequest;)Z
    .locals 12
    .param p0, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    const-class v8, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getTempContent()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "dataStr":Ljava/lang/String;
    const-string v9, "#"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "dataSplit":[Ljava/lang/String;
    array-length v9, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    .line 70
    :goto_0
    monitor-exit v8

    return v6

    .line 36
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "uuidKey":Ljava/lang/String;
    sget-object v9, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->dataHashMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 48
    sget-object v9, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->dataHashMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;

    .line 50
    .local v2, "msgData":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 51
    .local v4, "time":J
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->getTime()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-nez v9, :cond_1

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "repeat, uuid:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " time:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " data:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    .end local v0    # "dataSplit":[Ljava/lang/String;
    .end local v1    # "dataStr":Ljava/lang/String;
    .end local v2    # "msgData":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
    .end local v3    # "uuidKey":Ljava/lang/String;
    .end local v4    # "time":J
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 55
    .restart local v0    # "dataSplit":[Ljava/lang/String;
    .restart local v1    # "dataStr":Ljava/lang/String;
    .restart local v2    # "msgData":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
    .restart local v3    # "uuidKey":Ljava/lang/String;
    .restart local v4    # "time":J
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->getTime()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "later, uuid:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " time:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " data:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2, v4, v5}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;->setTime(J)V

    move v6, v7

    .line 62
    goto/16 :goto_0

    .line 66
    .end local v2    # "msgData":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
    .end local v4    # "time":J
    :cond_3
    const-string v6, "uuid \u6ca1\u6709\u547d\u4e2d"

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v9, 0x0

    aget-byte v6, v6, v9

    invoke-direct {v2, v3, v10, v11, v6}, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;-><init>(Ljava/lang/String;JB)V

    .line 69
    .restart local v2    # "msgData":Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/MessageData;
    sget-object v6, Lcom/iqiyi/android/dlna/sdk/dlnahttpserver/RacingStrategy;->dataHashMap:Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v7

    .line 70
    goto/16 :goto_0
.end method
