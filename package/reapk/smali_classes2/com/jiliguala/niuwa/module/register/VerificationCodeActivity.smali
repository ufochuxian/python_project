.class public Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment$HandleVerifyCodeResend;


# static fields
.field private static INCOMING:Ljava/lang/String; = null

.field public static final KEY_MODE:Ljava/lang/String; = "KEY_MODE"

.field public static final KEY_PHONE_NUMBER:Ljava/lang/String; = "KEY_PHONE_NUMBER"

.field private static final PROJECTION:[Ljava/lang/String;

.field public static final REQUEST_CODE_ASK_FOR_VERIFY_CODE:I = 0x3e9

.field private static final SELECTION:Ljava/lang/String; = "type = ? AND date > ?"

.field private static final SMS_INBOX_URI:Ljava/lang/String; = "content://sms/inbox"

.field private static final SMS_URI:Ljava/lang/String; = "content://sms/"

.field private static final SORT_ORDER:Ljava/lang/String; = "date desc limit 1"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBackBtn:Landroid/view/View;

.field mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field mCodeInput:Landroid/widget/EditText;

.field mConfirmBtn:Landroid/view/View;

.field mMode:I

.field mNotReceivedBtn:Landroid/view/View;

.field mOnBackClickListener:Landroid/view/View$OnClickListener;

.field mOnConfirmClickListener:Landroid/view/View$OnClickListener;

.field mOnResendClickListener:Landroid/view/View$OnClickListener;

.field private mOnTermClickListener:Landroid/view/View$OnClickListener;

.field mPasswordConfirmInput:Landroid/widget/EditText;

.field mPasswordInput:Landroid/widget/EditText;

.field mPhoneNumber:Ljava/lang/String;

.field mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mSmsContentObserver:Landroid/database/ContentObserver;

.field private mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

.field mSubtitle:Landroid/widget/TextView;

.field mTermBtn:Landroid/view/View;

.field mTermGroup:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mTopRightBtn:Landroid/widget/TextView;

.field mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

.field private smsFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->TAG:Ljava/lang/String;

    .line 64
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

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->PROJECTION:[Ljava/lang/String;

    .line 65
    const-string v0, "1"

    sput-object v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->INCOMING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$1;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnResendClickListener:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$3;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$4;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$5;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$5;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnTermClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->smsFilter:Landroid/content/IntentFilter;

    .line 150
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$6;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$6;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$7;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->requestCheckVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->requestCheckVerifyCodeForPwdForget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->INCOMING:Ljava/lang/String;

    return-object v0
.end method

.method private askForVerifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 484
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 485
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 486
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 487
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifyCodeSub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 482
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 488
    return-void
.end method

.method private askForVerifyCodeForForgetPwd(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 475
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->k(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 476
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 477
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 478
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifyCodeSub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 479
    return-void
.end method

.method public static makeIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v1, "KEY_PHONE_NUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    return-object v0
.end method

.method private requestCheckVerifyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;

    invoke-direct {v2, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->a(Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;)Lrx/e;

    move-result-object v1

    .line 317
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 318
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 319
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifySubscriber()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 320
    return-void
.end method

.method private requestCheckVerifyCodeForPwdForget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;

    invoke-direct {v2, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/logic/network/d;->b(Lcom/jiliguala/niuwa/logic/network/http/entity/VerifyCodeEntity;)Lrx/e;

    move-result-object v1

    .line 325
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 326
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 327
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->verifySubscriber()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 328
    return-void
.end method

.method private verifyCodeSub()Lrx/l;
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$9;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    return-object v0
.end method

.method private verifySubscriber()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/l",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$8;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setResult(I)V

    .line 518
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onBackPressed()V

    .line 519
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->overridePendingTransition(II)V

    .line 520
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f010012

    const/16 v10, 0x6d

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 332
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v3, "KEY_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 335
    :cond_0
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setResult(I)V

    .line 336
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->finish()V

    .line 337
    const v3, 0x7f01001e

    invoke-virtual {p0, v11, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->overridePendingTransition(II)V

    .line 470
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v3, "KEY_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    .line 342
    const-string v3, "KEY_PHONE_NUMBER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    .line 343
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setContentView(I)V

    .line 347
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 348
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 349
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 351
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 355
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mBackBtn:Landroid/view/View;

    .line 356
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTopRightBtn:Landroid/widget/TextView;

    .line 357
    const v3, 0x7f090588

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTitle:Landroid/widget/TextView;

    .line 358
    const v3, 0x7f09053b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSubtitle:Landroid/widget/TextView;

    .line 359
    const v3, 0x7f090157

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    .line 360
    const v3, 0x7f0905e5

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    .line 361
    const v3, 0x7f09041c

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordInput:Landroid/widget/EditText;

    .line 362
    const v3, 0x7f09041d

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordConfirmInput:Landroid/widget/EditText;

    .line 363
    const v3, 0x7f0905e2

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mNotReceivedBtn:Landroid/view/View;

    .line 364
    const v3, 0x7f09055e

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTermBtn:Landroid/view/View;

    .line 365
    const v3, 0x7f09055f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTermGroup:Landroid/view/View;

    .line 367
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSubtitle:Landroid/widget/TextView;

    const v4, 0x7f0f0263

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mNotReceivedBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnResendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mBackBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTermBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mOnTermClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 413
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->setResult(I)V

    .line 414
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->finish()V

    .line 415
    const v3, 0x7f01001e

    invoke-virtual {p0, v11, v3}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 380
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0196

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordConfirmInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 382
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 383
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/k;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 384
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/h;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 385
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :goto_1
    iget v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    packed-switch v3, :pswitch_data_1

    .line 450
    :goto_2
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 451
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mVerifyCodeResendDialogFragment:Lcom/jiliguala/niuwa/module/register/VerifyCodeResendDialogFragment;

    .line 463
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->smsFilter:Landroid/content/IntentFilter;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 464
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->smsFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 389
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordConfirmInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 391
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v9, [I

    aput v10, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 392
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/k;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 393
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f014f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 396
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordConfirmInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 398
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v9, [I

    aput v10, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 399
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/k;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 400
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0053

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 403
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f019e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 404
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mConfirmBtn:Landroid/view/View;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 405
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/k;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/k;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 406
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/h;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/h;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/h;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 407
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/g;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/g;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPasswordConfirmInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/g;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    goto/16 :goto_1

    .line 425
    :pswitch_5
    new-instance v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$10;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$10;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    .line 432
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Verify View"

    .line 433
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 436
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_6
    new-instance v1, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity$2;-><init>(Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;)V

    .line 443
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Verify View"

    .line 444
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 376
    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 382
    :array_0
    .array-data 4
        0x6d
        0x67
    .end array-data

    .line 422
    :pswitch_data_1
    .packed-switch 0x835
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 404
    :array_1
    .array-data 4
        0x6d
        0x67
        0x6e
    .end array-data
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 503
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsVerifyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 499
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 493
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mCodeInput:Landroid/widget/EditText;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/ad;->a(Landroid/widget/EditText;I)V

    .line 494
    return-void
.end method

.method public resend()V
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mMode:I

    const/16 v1, 0x838

    if-ne v0, v1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->askForVerifyCodeForForgetPwd(Ljava/lang/String;)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/register/VerificationCodeActivity;->askForVerifyCode(Ljava/lang/String;)V

    goto :goto_0
.end method
