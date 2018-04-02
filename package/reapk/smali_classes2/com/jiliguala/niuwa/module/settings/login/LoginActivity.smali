.class public Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;,
        Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$LOGIN_TYPE;
    }
.end annotation


# static fields
.field public static final KEY_LOGIN_TYPE:Ljava/lang/String; = "login_type"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mSource:Ljava/lang/String;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;
    .param p1, "x1"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->updateTokenView(Z)V

    return-void
.end method

.method private loginToSinaWeibo()V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth;

    const-string v1, "291973128"

    const-string v2, "https://api.weibo.com/oauth2/default.html"

    const-string v3, "all"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sina/weibo/sdk/auth/WeiboAuth;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 138
    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 139
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v1, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity$a;-><init>(Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 140
    return-void
.end method

.method private qqLogin()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/b/a;->a()Lcom/jiliguala/niuwa/logic/login/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/b/a;->b()V

    .line 127
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/b/a;->a()Lcom/jiliguala/niuwa/logic/login/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/b/a;->c()V

    .line 128
    return-void
.end method

.method private sinaLogin()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->loginToSinaWeibo()V

    .line 132
    return-void
.end method

.method private updateTokenView(Z)V
    .locals 0
    .param p1, "hasExisted"    # Z

    .prologue
    .line 151
    return-void
.end method

.method private wechatLogin()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->loginToWeixin()V

    .line 113
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    .line 114
    return-void
.end method


# virtual methods
.method public loginToWeixin()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "source"

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    const-string v3, "login_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 91
    .local v2, "type":I
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->mSource:Ljava/lang/String;

    .line 92
    packed-switch v2, :pswitch_data_0

    .line 107
    .end local v2    # "type":I
    :cond_2
    :goto_0
    const v3, 0x7f0b0143

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->setContentView(I)V

    .line 108
    return-void

    .line 94
    .restart local v2    # "type":I
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->qqLogin()V

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->finish()V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->sinaLogin()V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/login/LoginActivity;->wechatLogin()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 177
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->a(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 171
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->b(Landroid/content/Context;)V

    .line 172
    return-void
.end method
