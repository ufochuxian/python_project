.class final Lcn/jpush/android/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/a/a;

.field private b:Landroid/content/Context;

.field private c:Lcn/jpush/android/service/JPushMessageReceiver;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcn/jpush/android/a/a;Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcn/jpush/android/a/a$a;->a:Lcn/jpush/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    .line 52
    iput-object p4, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    .line 53
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 56
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "intent was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    const-string v1, "message_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcn/jpush/android/service/d;->a(Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;

    move-result-object v1

    .line 64
    const-string v2, "JMessageReceiverHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "messageType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",jPushMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v1, :cond_1

    .line 66
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "parse tagalias message failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 70
    invoke-virtual {v1}, Lcn/jpush/android/api/JPushMessage;->isTagCheckOperator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 75
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 76
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcn/jpush/android/service/JPushMessageReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 78
    :cond_4
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "unsupport message type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_5
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "unsupport action type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
