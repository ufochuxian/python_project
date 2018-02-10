.class public Lcom/jiliguala/niuwa/receivers/JPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extras"

.field static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "JPush"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    .local v0, "key":Ljava/lang/String;
    const-string v3, "cn.jpush.android.NOTIFICATION_ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_0
    const-string v3, "cn.jpush.android.CONNECTION_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 52
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 181
    sget-object v1, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;

    .line 182
    .local v0, "listener":Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;
    invoke-interface {v0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;->onNotifyReceived()V

    goto :goto_0

    .line 184
    .end local v0    # "listener":Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 178
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;)V
    .locals 1
    .param p0, "listener"    # Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;

    .prologue
    .line 56
    sget-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const-string v6, "cn.jpush.android.PUSH_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "pushID":Ljava/lang/String;
    const-string v6, "cn.jpush.android.ALERT"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "alert":Ljava/lang/String;
    const-string v6, "cn.jpush.android.EXTRA"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "extra":Ljava/lang/String;
    const-string v6, "cn.jpush.android.NOTIFICATION_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "notifID":Ljava/lang/String;
    const-string v6, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "notifTitle":Ljava/lang/String;
    const-string v6, "cn.jpush.android.MSG_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "msgID":Ljava/lang/String;
    return-void
.end method

.method public static b(Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;)V
    .locals 1
    .param p0, "listener"    # Lcom/jiliguala/niuwa/receivers/JPushReceiver$a;

    .prologue
    .line 62
    sget-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "cn.jpush.android.intent.REGISTRATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    const-string v7, "cn.jpush.android.REGISTRATION_ID"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_2
    const-string v7, "cn.jpush.android.intent.MESSAGE_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v7, "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    const-string v7, "cn.jpush.android.NOTIFICATION_ID"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 88
    .local v5, "notificationId":I
    const-string v7, "Notification View"

    invoke-static {p1, v7}, Lcom/umeng/analytics/MobclickAgent;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->a()V

    goto :goto_0

    .line 92
    .end local v5    # "notificationId":I
    :cond_4
    const-string v7, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 94
    const-string v7, "cn.jpush.android.MSG_ID"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcn/jpush/android/api/JPushInterface;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/receivers/JPushReceiver;->b(Landroid/os/Bundle;)V

    .line 96
    const-string v7, "cn.jpush.android.EXTRA"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "extra":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 103
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v3, "extraJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 105
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 112
    .end local v3    # "extraJson":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/d/a;->a(Ljava/lang/String;)V

    .line 115
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v4, "i":Landroid/content/Intent;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 118
    const-string v7, "rid"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_6
    const/high16 v7, 0x14000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/y;->a()Lcom/jiliguala/niuwa/common/util/y;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/common/util/y;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 124
    const/4 v7, 0x0

    invoke-static {v4, p1, v7}, Lcom/jiliguala/niuwa/logic/d/a;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 126
    :cond_7
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    .end local v2    # "extra":Ljava/lang/String;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_8
    const-string v7, "cn.jpush.android.intent.ACTION_RICHPUSH_CALLBACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 133
    const-string v7, "cn.jpush.android.intent.CONNECTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const-string v7, "cn.jpush.android.CONNECTION_CHANGE"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "connected":Z
    if-nez v1, :cond_9

    .line 137
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->f()V

    goto/16 :goto_0

    .line 139
    :cond_9
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/login/a;->e()V

    goto/16 :goto_0

    .line 107
    .end local v1    # "connected":Z
    .restart local v2    # "extra":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
