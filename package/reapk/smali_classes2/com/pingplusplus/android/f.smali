.class public Lcom/pingplusplus/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field private c:I

.field private d:Lcom/pingplusplus/android/PaymentActivity;

.field private e:Lcom/pingplusplus/android/PaymentActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/pingplusplus/android/f;->c:I

    .line 33
    iput-object p2, p0, Lcom/pingplusplus/android/f;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 35
    instance-of v0, p1, Lcom/pingplusplus/android/PaymentActivity;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lcom/pingplusplus/android/PaymentActivity;

    iput-object p1, p0, Lcom/pingplusplus/android/f;->d:Lcom/pingplusplus/android/PaymentActivity;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    .line 68
    return-void
.end method

.method public a(Lcom/pingplusplus/android/PaymentActivity;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pingplusplus/android/f;->d:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "qPayEnActivity not equals paymentActivity"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/pingplusplus/android/f;->e:Lcom/pingplusplus/android/PaymentActivity;

    .line 83
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pingplusplus/android/f;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/pingplusplus/android/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qwallet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pingplusplus/android/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    .line 50
    :goto_0
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    .line 53
    const-string v1, "HMAC-SHA1"

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    .line 55
    const-string v1, "bargainor_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/pingplusplus/android/f;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    .line 57
    const-string v1, "nonce"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    .line 58
    const-string v1, "sign"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    .line 59
    const-string v1, "token_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/pingplusplus/android/f;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v1, v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    .line 64
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PingppObject;->qpayScheme:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pingplusplus/android/f;->b:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    const-string v1, "pay"

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    const-string v1, "Callback from mqq"

    .line 89
    const-string v1, ""

    .line 93
    if-nez p1, :cond_1

    .line 94
    const-string v2, "response is null."

    move-object v2, v1

    move v1, v0

    .line 122
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/pingplusplus/android/f;->e:Lcom/pingplusplus/android/PaymentActivity;

    if-eqz v3, :cond_3

    .line 123
    iget-object v0, p0, Lcom/pingplusplus/android/f;->e:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->finish()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pingplusplus/android/f;->e:Lcom/pingplusplus/android/PaymentActivity;

    .line 128
    :goto_1
    return-void

    .line 96
    :cond_1
    instance-of v2, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    if-eqz v2, :cond_2

    .line 97
    check-cast p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " apiName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSucess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v0

    .line 106
    iget-object v2, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retMsg:Ljava/lang/String;

    .line 107
    iget v1, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->retCode:I

    .line 109
    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->isPayByWeChat()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transactionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->transactionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " payTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->payTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callbackUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalFee:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->totalFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mobileqq/openpay/data/pay/PayResponse;->spData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :cond_2
    const-string v2, "response is not PayResponse."

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 126
    :cond_3
    iget-object v3, p0, Lcom/pingplusplus/android/f;->d:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v3, v0, v2, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(ZLjava/lang/String;I)V

    goto/16 :goto_1
.end method
