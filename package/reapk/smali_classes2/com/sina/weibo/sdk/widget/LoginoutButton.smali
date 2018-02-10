.class public Lcom/sina/weibo/sdk/widget/LoginoutButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginButton"


# instance fields
.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

.field private mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mContext:Landroid/content/Context;

.field private mExternalOnClickListener:Landroid/view/View$OnClickListener;

.field private mLogoutListener:Lcom/sina/weibo/sdk/net/RequestListener;

.field private mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/widget/LoginoutButton;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-void
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/widget/LoginoutButton;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/widget/LoginoutButton;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/widget/LoginoutButton;)Lcom/sina/weibo/sdk/net/RequestListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mLogoutListener:Lcom/sina/weibo/sdk/net/RequestListener;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0, p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->loadDefaultStyle(Landroid/util/AttributeSet;)V

    .line 214
    return-void
.end method

.method private loadDefaultStyle(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 222
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sina/weibo/sdk/R$drawable;->com_sina_weibo_sdk_button_blue:I

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setBackgroundResource(I)V

    .line 225
    sget v1, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 226
    sget v2, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 227
    sget v3, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_padding_right:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 228
    sget v4, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_padding_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 225
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setPadding(IIII)V

    .line 229
    sget v1, Lcom/sina/weibo/sdk/R$drawable;->ic_com_sina_weibo_sdk_logo:I

    invoke-virtual {p0, v1, v5, v5, v5}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 231
    sget v1, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 230
    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setCompoundDrawablePadding(I)V

    .line 232
    sget v1, Lcom/sina/weibo/sdk/R$color;->com_sina_weibo_sdk_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setTextColor(I)V

    .line 234
    sget v1, Lcom/sina/weibo/sdk/R$dimen;->com_sina_weibo_sdk_loginview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 233
    invoke-virtual {p0, v5, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setTextSize(IF)V

    .line 235
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setGravity(I)V

    .line 237
    sget v1, Lcom/sina/weibo/sdk/R$string;->com_sina_weibo_sdk_login_with_weibo_account:I

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setText(I)V

    .line 239
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private login()V
    .locals 3

    .prologue
    .line 245
    const-string v1, "LoginButton"

    const-string v2, "Click to login"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth;

    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/WeiboAuth;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;)V

    .line 249
    .local v0, "weiboAuth":Lcom/sina/weibo/sdk/auth/WeiboAuth;
    new-instance v2, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1, v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    .line 252
    .end local v0    # "weiboAuth":Lcom/sina/weibo/sdk/auth/WeiboAuth;
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    new-instance v2, Lcom/sina/weibo/sdk/widget/LoginoutButton$1;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton$1;-><init>(Lcom/sina/weibo/sdk/widget/LoginoutButton;)V

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_1
    const-string v1, "LoginButton"

    const-string v2, "Please setWeiboAuthInfo(...) for first"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logout()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "LoginButton"

    const-string v1, "Click to logout"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/sina/weibo/sdk/openapi/LogoutAPI;

    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/openapi/LogoutAPI;-><init>(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    new-instance v1, Lcom/sina/weibo/sdk/widget/LoginoutButton$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton$2;-><init>(Lcom/sina/weibo/sdk/widget/LoginoutButton;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/openapi/LogoutAPI;->logout(Lcom/sina/weibo/sdk/net/RequestListener;)V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mSsoHandler:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mExternalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mExternalOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->logout()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->login()V

    goto :goto_0
.end method

.method public setExternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mExternalOnClickListener:Landroid/view/View$OnClickListener;

    .line 159
    return-void
.end method

.method public setLogoutInfo(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 1
    .param p1, "accessToken"    # Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .param p2, "logoutListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    .line 133
    iput-object p2, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mLogoutListener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 135
    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcom/sina/weibo/sdk/R$string;->com_sina_weibo_sdk_logout:I

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/widget/LoginoutButton;->setText(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public setLogoutListener(Lcom/sina/weibo/sdk/net/RequestListener;)V
    .locals 0
    .param p1, "logoutListener"    # Lcom/sina/weibo/sdk/net/RequestListener;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mLogoutListener:Lcom/sina/weibo/sdk/net/RequestListener;

    .line 147
    return-void
.end method

.method public setWeiboAuthInfo(Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 0
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;
    .param p2, "authListener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    .line 109
    iput-object p2, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 110
    return-void
.end method

.method public setWeiboAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "authListener"    # Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .prologue
    .line 121
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    iget-object v1, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthInfo:Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    .line 122
    iput-object p4, p0, Lcom/sina/weibo/sdk/widget/LoginoutButton;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 123
    return-void
.end method
