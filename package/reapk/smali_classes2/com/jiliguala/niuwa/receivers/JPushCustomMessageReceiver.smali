.class public Lcom/jiliguala/niuwa/receivers/JPushCustomMessageReceiver;
.super Lcn/jpush/android/service/JPushMessageReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/jpush/android/service/JPushMessageReceiver;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jPushMessage"    # Lcn/jpush/android/api/JPushMessage;

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    .line 30
    return-void
.end method

.method public onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jPushMessage"    # Lcn/jpush/android/api/JPushMessage;

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    .line 25
    return-void
.end method

.method public onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jPushMessage"    # Lcn/jpush/android/api/JPushMessage;

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    .line 20
    return-void
.end method
