.class public Lcom/pingplusplus/android/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pingplusplus/android/m;
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/pingplusplus/android/PaymentActivity;

.field private b:Lcom/pingplusplus/android/PaymentActivity;

.field private c:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 31
    iput-object p1, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    .line 32
    iget-object v0, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 37
    return-void
.end method

.method public a(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const-string v0, "wxPayEnActivity not equals paymentActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/pingplusplus/android/n;->b:Lcom/pingplusplus/android/PaymentActivity;

    .line 106
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {v0}, Lcom/switfpass/pay/bean/RequestMsg;-><init>()V

    .line 72
    invoke-virtual {v0, p2}, Lcom/switfpass/pay/bean/RequestMsg;->setTokenId(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/switfpass/pay/MainApplication;->WX_APP_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/bean/RequestMsg;->setTradeType(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/switfpass/pay/bean/RequestMsg;->setAppId(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v2, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v2}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 76
    iget-object v1, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1, v0}, Lcom/switfpass/pay/activity/PayPlugin;->unifiedAppPay(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V

    .line 77
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 51
    iget-object v1, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v2, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v2}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 52
    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 53
    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 54
    const-string v0, "partnerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 55
    const-string v0, "prepayId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 56
    const-string v0, "nonceStr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 57
    const-string v0, "timeStamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "timeStamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 62
    :goto_0
    const-string v0, "packageValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 63
    const-string v0, "sign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 68
    :goto_1
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeStamp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v0, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "invalid_credential"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pingplusplus/android/n;->c:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    return v0
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "onResp"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentActivity wx result errCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , errStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp wxPayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    iget v1, v1, Lcom/pingplusplus/android/PaymentActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    iput v1, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    .line 92
    iget-object v0, p0, Lcom/pingplusplus/android/n;->b:Lcom/pingplusplus/android/PaymentActivity;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/pingplusplus/android/n;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->finish()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/n;->b:Lcom/pingplusplus/android/PaymentActivity;

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/n;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->a()V

    goto :goto_0
.end method
