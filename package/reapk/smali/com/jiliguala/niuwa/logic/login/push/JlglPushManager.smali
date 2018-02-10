.class public Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->d(Landroid/content/Context;)V

    .line 41
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;->MIPUSH:Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;)V

    .line 57
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->f(Landroid/content/Context;)V

    .line 45
    sget-object v1, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;->JPUSH:Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;)V
    .locals 4
    .param p0, "push"    # Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;

    .prologue
    .line 79
    :try_start_0
    const-string v2, "PUSH_ENABLE"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 81
    .local v1, "isPushEnable":Z
    sget-object v2, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$2;->a:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$Push;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 103
    .end local v1    # "isPushEnable":Z
    :goto_0
    return-void

    .line 83
    .restart local v1    # "isPushEnable":Z
    :pswitch_0
    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "isPushEnable":Z
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isPushEnable":Z
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V

    goto :goto_0

    .line 90
    :pswitch_1
    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 251
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "topicStr":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 256
    .end local v0    # "topicStr":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b()Z

    move-result v0

    .line 62
    .local v0, "isRegisted":Z
    :goto_0
    return v0

    .line 60
    .end local v0    # "isRegisted":Z
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->i()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "regid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "userID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "regId":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "regId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 135
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "curProcessName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "2882303761517275254"

    const-string v3, "5141727577254"

    invoke-static {p0, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->e(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->j()V

    .line 187
    :cond_0
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager$1;-><init>()V

    .line 160
    .local v0, "newLogger":Lcom/xiaomi/channel/commonutils/b/a;
    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/b/a;)V

    .line 161
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b:Z

    .line 191
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->j()V

    .line 194
    :cond_0
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 287
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 288
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->g(Landroid/content/Context;)V

    .line 289
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 266
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "userID":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "userAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "userAccounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0801cb

    const/4 v3, 0x1

    .line 293
    new-instance v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    invoke-direct {v0, p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, "builder":Lcn/jpush/android/api/BasicPushNotificationBuilder;
    iput v4, v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    .line 296
    const/16 v2, 0x10

    iput v2, v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    .line 298
    iput v3, v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    .line 299
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/jpush/android/api/JPushInterface;->setPushNotificationBuilder(Ljava/lang/Integer;Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V

    .line 302
    new-instance v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    invoke-direct {v1, p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v1, "defaultBuilder":Lcn/jpush/android/api/BasicPushNotificationBuilder;
    iput v4, v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    .line 304
    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->setDefaultPushNotificationBuilder(Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V

    .line 305
    return-void
.end method

.method public static h()V
    .locals 5

    .prologue
    .line 308
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "allTopics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    return-void

    .line 313
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "topic":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 197
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->i()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "userBd":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->O()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "babyBd":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "allTopics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "oldUserBds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v3, "oldBabyBds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 205
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 208
    .local v5, "topic":Ljava/lang/String;
    const-string v7, "U"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    :goto_1
    const-string v7, "19700101"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 220
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    const-string v7, "B"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_3
    const-string v7, "U19700101"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 226
    .end local v5    # "topic":Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "U"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v4, v6}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 231
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "B"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v3, v1}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 244
    .end local v2    # "index":I
    :cond_6
    :goto_3
    return-void

    .line 237
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 238
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "U"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 241
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/xiaomi/mipush/sdk/MiPushClient;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
