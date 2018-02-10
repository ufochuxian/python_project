.class public Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_HINT:Ljava/lang/String; = "KEY_HINT"

.field public static final KEY_MODE:Ljava/lang/String; = "KEY_MODE"

.field public static final MODE_GUACOIN_PHONE_REGISTRATION:I = 0x83b

.field public static final MODE_GUACOIN_REBIND_PHONE:I = 0x83a

.field public static final MODE_GUEST_PHONE_REQUIRED:I = 0x839

.field public static final MODE_INFO_COMPLETION:I = 0x836

.field public static final MODE_PASSWORD_FORGOT:I = 0x838

.field public static final MODE_PHONE_REBIND:I = 0x837

.field public static final MODE_REGISTER:I = 0x835

.field public static final REQUEST_CODE_MOBILE_REQUIRED:I = 0x2329


# instance fields
.field mBackBtn:Landroid/widget/ImageView;

.field mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

.field mConfirmBtn:Landroid/view/View;

.field mHint:Ljava/lang/String;

.field mMode:I

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOnConfirmClickListener:Landroid/view/View$OnClickListener;

.field private mOnTermClickListener:Landroid/view/View$OnClickListener;

.field mPhone:Ljava/lang/String;

.field mPhoneInput:Landroid/widget/EditText;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field mSubtitle:Landroid/widget/TextView;

.field mTermBtn:Landroid/view/View;

.field mTermGroup:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mTopRightBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$1;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$2;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnTermClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$3;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->askForVerifyCodeForForgetPwd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->askForVerifyCode(Ljava/lang/String;)V

    return-void
.end method

.method private askForVerifyCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 314
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->j(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 315
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 316
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 317
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->verifyCodeSub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 318
    return-void
.end method

.method private askForVerifyCodeForForgetPwd(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v1

    .line 304
    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/logic/network/d;->k(Ljava/lang/String;)Lrx/e;

    move-result-object v1

    .line 305
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 306
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 307
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->verifyCodeSub()Lrx/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 308
    return-void
.end method

.method public static makeIntentForGuaCoinInfoCompletion(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x83a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v1, "KEY_HINT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    return-object v0
.end method

.method public static makeIntentForGuaCoinPhoneRegistration(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x83b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "KEY_HINT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    return-object v0
.end method

.method public static makeIntentForPasswordForgot(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x838

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    return-object v0
.end method

.method public static makeIntentForPhoneInfoCompletion(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x836

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    return-object v0
.end method

.method public static makeIntentForPhoneNumberRequired(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x839

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    return-object v0
.end method

.method public static makeIntentForPhoneNumberRequired(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hint"    # I
        .annotation build Landroid/support/annotation/ai;
        .end annotation
    .end param

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x839

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "KEY_HINT"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    return-object v0
.end method

.method public static makeIntentForPhoneRebind(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x837

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    return-object v0
.end method

.method public static makeIntentForRegistration(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KEY_MODE"

    const/16 v2, 0x835

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    return-object v0
.end method

.method private verifyCodeSub()Lrx/l;
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$4;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 511
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 512
    if-ne p2, v0, :cond_0

    .line 516
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 517
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 518
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    .line 522
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const v3, 0x7f01001e

    const v2, 0x7f010012

    const/4 v1, 0x0

    .line 531
    iget v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    return-void

    .line 539
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 540
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 541
    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 544
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 545
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 546
    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 549
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 550
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 551
    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 555
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 556
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 557
    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f080198

    const/16 v9, 0x6b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 322
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 323
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v3, "KEY_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 326
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 327
    const v3, 0x7f010012

    const v4, 0x7f01001e

    invoke-virtual {p0, v3, v4}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    .line 501
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v3, "KEY_MODE"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    .line 332
    const-string v3, "KEY_HINT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mHint:Ljava/lang/String;

    .line 333
    const v3, 0x7f0b003f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setContentView(I)V

    .line 337
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 341
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 346
    const v3, 0x7f0903d9

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    .line 347
    const v3, 0x7f09053b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mSubtitle:Landroid/widget/TextView;

    .line 348
    const v3, 0x7f090157

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    .line 349
    const v3, 0x7f09055e

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermBtn:Landroid/view/View;

    .line 350
    const v3, 0x7f09055f

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    .line 351
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    .line 352
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    .line 353
    const v3, 0x7f090588

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    .line 358
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mHint:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mSubtitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mHint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_2
    iget v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 481
    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->setResult(I)V

    .line 482
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->finish()V

    .line 483
    const v3, 0x7f010012

    const v4, 0x7f01001e

    invoke-virtual {p0, v3, v4}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 364
    :pswitch_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f014b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 368
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 369
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 370
    new-instance v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$5;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    .line 378
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Sign Up View"

    .line 379
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 486
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    const v4, 0x7f0f01bf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 489
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 491
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnTermClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    goto/16 :goto_0

    .line 382
    :pswitch_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f014b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 387
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 388
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 389
    new-instance v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$6;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$6;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    .line 397
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Sign Up View"

    .line 398
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 401
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0150

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 405
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 406
    new-instance v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$7;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    .line 414
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Sign Up View"

    .line 415
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 419
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0159

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 424
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    goto/16 :goto_1

    .line 428
    :pswitch_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f00d4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 429
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    const v4, 0x7f0f0153

    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const v6, 0x7fffffff

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 434
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 435
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    const/16 v6, 0x6c

    aput v6, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 436
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/i;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/i;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/i;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    goto/16 :goto_1

    .line 440
    :pswitch_5
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f0150

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 441
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 442
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 445
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 446
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 447
    new-instance v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$8;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$8;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    .line 455
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Sign Up View"

    .line 456
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 459
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_6
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0f014b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 461
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTopRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mTermGroup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 464
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/a/d;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mConfirmBtn:Landroid/view/View;

    new-array v5, v8, [I

    aput v9, v5, v7

    invoke-direct {v3, v4, v5}, Lcom/jiliguala/niuwa/common/helper/a/d;-><init>(Landroid/view/View;[I)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    .line 465
    new-instance v3, Lcom/jiliguala/niuwa/common/helper/c/j;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mChecker:Lcom/jiliguala/niuwa/common/helper/a/b;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;-><init>(Lcom/jiliguala/niuwa/common/helper/a/b;)V

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/helper/c/j;->a(Landroid/widget/EditText;)Lcom/jiliguala/niuwa/common/helper/c/c;

    .line 466
    new-instance v1, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$9;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity$9;-><init>(Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;)V

    .line 474
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Mobile Sign Up View"

    .line 475
    invoke-virtual {v3, v4, v1}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 362
    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 563
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 564
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 506
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/register/PhoneInfoActivity;->mPhoneInput:Landroid/widget/EditText;

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/ad;->a(Landroid/widget/EditText;I)V

    .line 507
    return-void
.end method
