.class public Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/onboading/callback/IOnBoardingCallBack;


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_EMAIL_LOGIN:I = 0x1000

.field public static final TYPE_EMAIL_REGISTER:I = 0x1001


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mFlag:Ljava/lang/String;

.field private mLoginContainer:Landroid/view/View;

.field private mMobileLoginContainer:Landroid/widget/RelativeLayout;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private mSource:Ljava/lang/String;

.field private mWeChatLoginContainer:Landroid/widget/RelativeLayout;

.field private topRightBtn:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 65
    new-instance v0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$1;-><init>(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->loginNow(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->addEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)Lcom/jiliguala/niuwa/common/a/g;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method private addEvent(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mSource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const-string v1, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    const-string v1, "Clicks on Sign In_Up View"

    invoke-static {p0, v1, v0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    return-void

    .line 174
    :sswitch_0
    const-string v1, "Type"

    const-string v2, "WeChat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :sswitch_1
    const-string v1, "Type"

    const-string v2, "QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :sswitch_2
    const-string v1, "Type"

    const-string v2, "Weibo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 183
    :sswitch_3
    const-string v1, "Type"

    const-string v2, "Email Sign Up"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    :sswitch_4
    const-string v1, "Type"

    const-string v2, "Email Sign In"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901d7 -> :sswitch_4
        0x7f0901d8 -> :sswitch_3
        0x7f0902fb -> :sswitch_1
        0x7f0902fc -> :sswitch_2
        0x7f0902fd -> :sswitch_0
    .end sparse-switch
.end method

.method private addEventObserver()V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    const-class v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    .line 215
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$2;-><init>(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)V

    new-instance v3, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$3;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity$3;-><init>(Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;)V

    .line 216
    invoke-virtual {v1, v2, v3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 248
    return-void
.end method

.method private goToMobileLoginPage()V
    .locals 5

    .prologue
    const v4, 0x7f010020

    const v3, 0x7f01001f

    .line 292
    sget-object v2, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 293
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 294
    .local v1, "fragmentTransaction":Landroid/support/v4/app/an;
    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 295
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    const v2, 0x7f090480

    sget-object v3, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 297
    sget-object v2, Lcom/jiliguala/niuwa/module/settings/login/fragment/MobileLoginFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 301
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 302
    return-void

    .line 299
    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DEFAULT_FLAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mFlag:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private loginNow(I)V
    .locals 5
    .param p1, "loginType"    # I

    .prologue
    .line 161
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "login_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v2, "source"

    const-string v3, "login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v2

    new-instance v3, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public static makeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public exitDirectly(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setResult(I)V

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->finish()V

    .line 311
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->overridePendingTransition(II)V

    .line 312
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setResult(I)V

    goto :goto_0
.end method

.method public getProgressDialog()Lcom/jiliguala/niuwa/common/a/g;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->finish()V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 271
    :sswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->finish()V

    goto :goto_0

    .line 274
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/p;->a()Lcom/jiliguala/niuwa/common/util/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    const/16 v0, 0x1001

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->loginNow(I)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->addEvent(I)V

    goto :goto_0

    .line 284
    :sswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->goToMobileLoginPage()V

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_0
        0x7f09034c -> :sswitch_2
        0x7f090616 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->addEventObserver()V

    .line 113
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->handleIntent()V

    .line 114
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v3

    const-string v4, "Sign In View"

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 115
    const v3, 0x7f0b0025

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setContentView(I)V

    .line 116
    const v3, 0x7f0902f9

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mLoginContainer:Landroid/view/View;

    .line 117
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mLoginContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mBackIcon:Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mBackIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v3, 0x7f0902fd

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "loginWeChat":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f0902fb

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v3, 0x7f0902fc

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f090616

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mWeChatLoginContainer:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mWeChatLoginContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f09034c

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mMobileLoginContainer:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mMobileLoginContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 139
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 140
    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->topRightBtn:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->topRightBtn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->topRightBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    const v3, 0x7f090592

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    .local v1, "titleTv":Landroid/widget/TextView;
    const v3, 0x7f0f025b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 147
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/a/g;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/g;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onLoginSucceed()V
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->G()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setResult(I)V

    .line 255
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_baby_empty"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->setResult(ILandroid/content/Intent;)V

    .line 261
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PURCHASE_GET_CHARGE"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/b/a/a;

    const/16 v3, 0x1027

    invoke-direct {v2, v3}, Lcom/jiliguala/niuwa/logic/b/a/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->finish()V

    .line 265
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 211
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSource"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mSource:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->mProgressDialogFragment:Lcom/jiliguala/niuwa/common/a/g;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/a/g;->b(Landroid/support/v4/app/ag;)V

    .line 337
    :cond_0
    return-void
.end method

.method public switchContent(Landroid/support/v4/app/Fragment;)V
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 316
    .local v1, "manager":Landroid/support/v4/app/ag;
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v2

    .line 317
    .local v2, "transaction":Landroid/support/v4/app/an;
    const v3, 0x7f01001f

    const v4, 0x7f010014

    const v5, 0x7f010013

    const v6, 0x7f010020

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 318
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    const v3, 0x7f090480

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/v4/app/an;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 322
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/app/an;->h()I

    .line 323
    invoke-virtual {v1}, Landroid/support/v4/app/ag;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
