.class public Lcn/jpush/android/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcn/jpush/android/c/g;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:B

.field private c:Lcn/jpush/android/c/e;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jpush/android/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    iput-byte v1, p0, Lcn/jpush/android/c/g;->b:B

    .line 39
    iput-boolean v1, p0, Lcn/jpush/android/c/g;->e:Z

    .line 42
    return-void
.end method

.method public static a()Lcn/jpush/android/c/g;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcn/jpush/android/c/g;->d:Lcn/jpush/android/c/g;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcn/jpush/android/c/g;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcn/jpush/android/c/g;->d:Lcn/jpush/android/c/g;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcn/jpush/android/c/g;

    invoke-direct {v0}, Lcn/jpush/android/c/g;-><init>()V

    sput-object v0, Lcn/jpush/android/c/g;->d:Lcn/jpush/android/c/g;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcn/jpush/android/c/g;->d:Lcn/jpush/android/c/g;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 333
    invoke-static {p0, p1, p2}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    const-string v1, "action"

    const-string v2, "cn.jpush.android.intent.plugin.platform.REFRESSH_REGID"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "plugin.platform.regid "

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "plugin.platform.type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 338
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    const-string v2, "PluginPlatformsInterface"

    const-string v3, "checkClearRegId"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    invoke-virtual {v2}, Lcn/jpush/android/c/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    invoke-virtual {v3}, Lcn/jpush/android/c/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    :cond_0
    const-string v0, "PluginPlatformsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "platform:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appkey or appid is empty,need not clear plugin rid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "jpush appkey is empty,need not clear plugin rid"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    const-string v5, "3.1.0"

    .line 3256
    const-string v6, "flag_clear_plugin_rid"

    invoke-static {p1, v6, v8}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3258
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3259
    const-string v0, "flag_clear_plugin_rid"

    invoke-static {p1, v0, v2}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 378
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 379
    const-string v0, "PluginPlatformsInterface"

    const-string v2, "app info changed , will clear plugin rid"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {p1, p2, v1}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 381
    invoke-static {p1, p2, v8}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 3263
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3268
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3269
    const-string v3, "flag_clear_plugin_rid"

    invoke-static {p1, v3, v2}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_6
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "app info not change, will not clear plugin rid"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 309
    invoke-static {p0, p1}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v1

    .line 312
    if-nez v1, :cond_0

    .line 313
    const-string v1, "PluginPlatformsInterface"

    const-string v2, "need upload -- last upload failed or never upload success"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return v0

    .line 318
    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const-string v1, "PluginPlatformsInterface"

    const-string v2, "need upload -- regId changed"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "need not upload regId"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    :goto_0
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFcmToken:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    const-string v2, "PluginPlatformsInterface"

    const-string v3, "get fcm token error:"

    invoke-static {v2, v3, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    if-nez p1, :cond_1

    .line 74
    :try_start_0
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result v0

    iput-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    .line 1057
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_1
    const-string v0, "PluginPlatformsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "whichPlatform - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcn/jpush/android/c/g;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcn/jpush/android/c/i;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    .line 86
    const-string v0, "PluginPlatformsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isIntegrateFCM -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/jpush/android/c/g;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    if-nez v0, :cond_2

    .line 89
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 90
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 1099
    :cond_2
    if-nez p1, :cond_3

    .line 1100
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_2
    iget-object v0, p0, Lcn/jpush/android/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1059
    :pswitch_0
    :try_start_2
    new-instance v0, Lcn/jpush/android/c/j;

    invoke-direct {v0, p1}, Lcn/jpush/android/c/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    goto :goto_1

    .line 1062
    :pswitch_1
    new-instance v0, Lcn/jpush/android/c/b;

    invoke-direct {v0, p1}, Lcn/jpush/android/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    goto :goto_1

    .line 1065
    :pswitch_2
    new-instance v0, Lcn/jpush/android/c/d;

    invoke-direct {v0, p1}, Lcn/jpush/android/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1105
    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    if-eqz v0, :cond_4

    .line 1106
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1113
    :cond_4
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    if-eqz v0, :cond_6

    .line 1114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1115
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/e;->a(Landroid/content/Context;)V

    .line 1116
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "plugin plateform register start"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    :try_start_5
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lcn/jpush/android/c/g;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " register error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1108
    :catch_1
    move-exception v0

    .line 1109
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#FirebaseAPP init error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1118
    :cond_5
    :try_start_6
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "stopPush was called. will not init the third push"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1121
    :cond_6
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "can not find the plugin platform action"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 229
    :cond_0
    if-nez p1, :cond_2

    .line 230
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    const-string v0, "PluginPlatformsInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploadRegID regid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 235
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    if-eqz v0, :cond_3

    .line 236
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;I)V

    .line 237
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    invoke-static {p1, v0, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    invoke-static {p1, v0, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "mPluginPlatformAction is null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/e;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lcn/jpush/android/c/g;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumePush error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    :try_start_1
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "can not find the plugin platform action"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 267
    if-nez p1, :cond_0

    .line 268
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 270
    :cond_0
    if-nez p1, :cond_2

    .line 271
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const-string v0, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadRegID regid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 276
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    if-eqz v0, :cond_5

    .line 1288
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 2277
    const-string v2, "flag_clear_fcm_rid"

    invoke-static {p1, v2, v5}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2278
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2279
    const-string v2, "flag_clear_fcm_rid"

    invoke-static {p1, v2, v0}, Lcn/jiguang/api/MultiSpHelper;->commitString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const/4 v0, 0x1

    .line 1288
    :goto_1
    if-eqz v0, :cond_4

    .line 1289
    const-string v0, "PluginPlatformsInterface"

    const-string v2, "appkey changed,will clear fcm token"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-static {p1, v4, v1}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 1291
    invoke-static {p1, v4, v5}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 278
    :goto_2
    invoke-static {p1, v4, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {p1, v4, p2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;BLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2282
    goto :goto_1

    .line 1293
    :cond_4
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "appkey not change,will not clear fcm token"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 282
    :cond_5
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "not support fcm"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/e;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lcn/jpush/android/c/g;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopPush error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    :try_start_1
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "can not find the plugin platform action"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 176
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "uploadRegIdAfterLogin"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/jpush/android/c/g;->c:Lcn/jpush/android/c/e;

    if-eqz v0, :cond_3

    .line 178
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;I)V

    .line 179
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    invoke-static {p1, v0}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-byte v1, p0, Lcn/jpush/android/c/g;->b:B

    invoke-static {p1, v1, v0}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    iget-byte v1, p0, Lcn/jpush/android/c/g;->b:B

    invoke-static {p1, v1, v0}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;BLjava/lang/String;)V

    .line 186
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    if-eqz v0, :cond_5

    .line 1199
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "sendBroadCastToUploadFCMToken"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {}, Lcn/jpush/android/c/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1202
    invoke-virtual {p0, p1, v0}, Lcn/jpush/android/c/g;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "mPluginPlatformAction is null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1206
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1207
    const-string v1, "cn.jpush.android.intent.plugin.platform.REFRESSH_REGID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1209
    const-string v2, "sdktype"

    sget-object v3, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v3}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    const-string v1, "PluginPlatformsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send ACTION_PLUGIN_PALTFORM_REQ_REFRESSH_REGID failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_5
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "not support fcm"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    sget-object p1, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 249
    :cond_0
    if-nez p1, :cond_2

    .line 250
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    const-string v0, "PluginPlatformsInterface"

    const-string v1, "refeshFcmToken"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 255
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcn/jpush/android/c/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/jpush/android/c/g;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;)B
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 346
    iget-byte v0, p0, Lcn/jpush/android/c/g;->b:B

    return v0
.end method

.method public final g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    .line 354
    iget-boolean v0, p0, Lcn/jpush/android/c/g;->e:Z

    return v0
.end method
