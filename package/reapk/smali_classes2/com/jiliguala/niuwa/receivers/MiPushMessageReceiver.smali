.class public Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mCommand:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mResultCode:J

.field private mStartTime:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;

.field private mUserAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mResultCode:J

    return-void
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    .line 114
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 118
    .local v1, "cmdArg1":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 119
    .local v2, "cmdArg2":Ljava/lang/String;
    :cond_0
    const-string v4, "register"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 121
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mRegId:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->e()V

    .line 124
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/push/JlglPushManager;->f()V

    .line 172
    :cond_1
    :goto_1
    return-void

    .end local v1    # "cmdArg1":Ljava/lang/String;
    .end local v2    # "cmdArg2":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 117
    goto :goto_0

    .line 126
    .restart local v1    # "cmdArg1":Ljava/lang/String;
    .restart local v2    # "cmdArg2":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/logic/login/a;->f()V

    goto :goto_1

    .line 129
    :cond_4
    const-string v4, "set-alias"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 131
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_5
    const-string v4, "unset-alias"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 135
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 136
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_1

    .line 139
    :cond_6
    const-string v4, "subscribe-topic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 140
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 141
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;)Ljava/util/List;

    goto :goto_1

    .line 147
    :cond_7
    const-string v4, "unsubscibe-topic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 148
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 149
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;)Ljava/util/List;

    goto :goto_1

    .line 153
    :cond_8
    const-string v4, "accept-time"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 154
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 155
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mStartTime:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mEndTime:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_9
    const-string v4, "set-account"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 160
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 161
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAccount:Ljava/lang/String;

    goto/16 :goto_1

    .line 165
    :cond_a
    const-string v4, "unset-account"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 167
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAccount:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 101
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mMessage:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mUserAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 80
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v2

    const-string v3, "Push Open"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mMessage:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v0

    .line 91
    .local v0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    const-string v2, "intent_uri"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    :cond_1
    :goto_1
    return-void

    .line 84
    .end local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mUserAccount:Ljava/lang/String;

    goto :goto_0

    .line 94
    .restart local v0    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v2, "intent_uri"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .prologue
    .line 68
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mMessage:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getUserAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mUserAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 176
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "arguments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 179
    .local v1, "cmdArg1":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 180
    .local v2, "cmdArg2":Ljava/lang/String;
    :cond_0
    const-string v4, "register"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 182
    iput-object v1, p0, Lcom/jiliguala/niuwa/receivers/MiPushMessageReceiver;->mRegId:Ljava/lang/String;

    .line 190
    :cond_1
    return-void

    .end local v1    # "cmdArg1":Ljava/lang/String;
    .end local v2    # "cmdArg2":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 178
    goto :goto_0
.end method
