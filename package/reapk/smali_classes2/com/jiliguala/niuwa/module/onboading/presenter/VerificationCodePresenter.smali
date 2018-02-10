.class public Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;
.super Lcom/jiliguala/niuwa/common/base/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/d",
        "<",
        "Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;",
        ">;"
    }
.end annotation


# static fields
.field private static INCOMING:Ljava/lang/String; = null

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String; = "type = ? AND date > ?"

.field private static final SMS_INBOX_URI:Ljava/lang/String; = "content://sms/inbox"

.field private static final SMS_URI:Ljava/lang/String; = "content://sms/"

.field private static final SORT_ORDER:Ljava/lang/String; = "date desc limit 1"


# instance fields
.field private mSmsContentObserver:Landroid/database/ContentObserver;

.field private mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

.field private smsFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->PROJECTION:[Ljava/lang/String;

    .line 44
    const-string v0, "1"

    sput-object v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->INCOMING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/d;-><init>()V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->smsFilter:Landroid/content/IntentFilter;

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$1;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$2;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->INCOMING:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public lisetenOnSMS()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->smsFilter:Landroid/content/IntentFilter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 136
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->smsFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    .line 143
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    return-void
.end method

.method public requestVerifyCodeValidate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->a(Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;)Lrx/e;

    move-result-object v1

    .line 163
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 164
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 165
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$3;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;)V

    .line 166
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 192
    :cond_0
    return-void
.end method

.method public requestVoiceSms(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneStr"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 199
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->D(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 200
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 201
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 202
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$4;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$4;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;)V

    .line 203
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 224
    :cond_0
    return-void
.end method

.method public requestVoiceSmsWithNoAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneStr"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getSubscription()Lrx/i/b;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 231
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->E(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 232
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 233
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 234
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$5;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter$5;-><init>(Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;)V

    .line 235
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 256
    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->getUi()Lcom/jiliguala/niuwa/common/base/e;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/onboading/view/IVerifyCodeView;->getActivityRef()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/onboading/presenter/VerificationCodePresenter;->mSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
