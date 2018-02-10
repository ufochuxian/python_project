.class public Lcom/pingplusplus/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pingplusplus/android/m;
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/pingplusplus/android/PaymentActivity;

.field private b:Lcom/pingplusplus/android/PaymentActivity;

.field private c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/PaymentActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 35
    iput-object p1, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    .line 36
    iget-object v0, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 41
    return-void
.end method

.method public a(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "wxPayEnActivity not equals paymentActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/pingplusplus/android/o;->b:Lcom/pingplusplus/android/PaymentActivity;

    .line 110
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/switfpass/pay/bean/RequestMsg;

    invoke-direct {v0}, Lcom/switfpass/pay/bean/RequestMsg;-><init>()V

    .line 76
    invoke-virtual {v0, p2}, Lcom/switfpass/pay/bean/RequestMsg;->setTokenId(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/switfpass/pay/MainApplication;->WX_APP_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/bean/RequestMsg;->setTradeType(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p1}, Lcom/switfpass/pay/bean/RequestMsg;->setAppId(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v2, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v2}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 80
    iget-object v1, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-static {v1, v0}, Lcom/switfpass/pay/activity/PayPlugin;->unifiedAppPay(Landroid/app/Activity;Lcom/switfpass/pay/bean/RequestMsg;)V

    .line 81
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 55
    iget-object v1, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v2, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v2}, Lcom/pingplusplus/android/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 56
    new-instance v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelpay/PayReq;-><init>()V

    .line 57
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 58
    const-string v0, "partnerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 59
    const-string v0, "prepayId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 60
    const-string v0, "nonceStr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 61
    const-string v0, "timeStamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "timeStamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 66
    :goto_0
    const-string v0, "packageValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 67
    const-string v0, "sign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    .line 72
    :goto_1
    return-void

    .line 64
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

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v0, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "invalid_credential"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pingplusplus/android/o;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    return v0
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "onResp"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentActivity wx result errCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , errStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pingplusplus/android/PaymentActivity;->a:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResp wxPayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    iget v1, v1, Lcom/pingplusplus/android/PaymentActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    iput v1, v0, Lcom/pingplusplus/android/PingppObject;->wxErrCode:I

    .line 96
    iget-object v0, p0, Lcom/pingplusplus/android/o;->b:Lcom/pingplusplus/android/PaymentActivity;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/pingplusplus/android/o;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->finish()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/o;->b:Lcom/pingplusplus/android/PaymentActivity;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/o;->a:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->a()V

    goto :goto_0
.end method
