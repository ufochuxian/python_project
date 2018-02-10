.class Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$6;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pdus"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, [Ljava/lang/Object;

    .line 157
    .local v2, "data":[Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 174
    .end local v2    # "data":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local v2    # "data":[Ljava/lang/Object;
    :cond_1
    :try_start_0
    array-length v9, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v4, v2, v8

    .line 161
    .local v4, "obj":Ljava/lang/Object;
    check-cast v4, [B

    .end local v4    # "obj":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [B

    move-object v5, v0

    .line 162
    .local v5, "pdu":[B
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 163
    .local v6, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "message":Ljava/lang/String;
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/x;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 167
    iget-object v10, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$6;->a:Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    iget-object v10, v10, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 170
    .end local v1    # "code":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "pdu":[B
    .end local v6    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v7

    .line 171
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
