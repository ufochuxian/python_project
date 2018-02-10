.class public Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->c:Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 41
    sget-object v1, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v2, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 44
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    .line 45
    .local v0, "req":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;
    const-string v1, "snsapi_userinfo"

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->a()V

    .line 27
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->b()V

    .line 29
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/wxapi/WxEntryProxyActivity;->finish()V

    .line 30
    return-void
.end method
