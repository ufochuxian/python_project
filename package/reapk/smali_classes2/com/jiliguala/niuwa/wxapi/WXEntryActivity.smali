.class public Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;
.super Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.source "SourceFile"


# static fields
.field public static final ERR_OK:I = 0x0

.field public static final ERR_USER_CANCEL:I = -0x2

.field private static final TAG:Ljava/lang/String;

.field public static final WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field public mIWXAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->TAG:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "wxf7dd6da532b7b8a0"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "wx925dd305a9a0ec74"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 49
    new-instance v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity$1;-><init>(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->mIWXAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;)Lcom/jiliguala/niuwa/common/util/xutils/c;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->setContentView(Landroid/view/View;)V

    .line 161
    sget-object v0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v1, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->WEI_XIN_LOGIN_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->mIWXAPIEventHandler:Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 164
    return-void
.end method

.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "iLaunchMyself":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 0
    .param p1, "msg"    # Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .prologue
    .line 226
    return-void
.end method
