.class public Lcom/pingplusplus/android/a/j;
.super Lcom/pingplusplus/android/j;
.source "SourceFile"


# instance fields
.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/j;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/j;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/j;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/pingplusplus/android/a/j;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/j;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/j;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/pingplusplus/android/a/j;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pingplusplus/android/a/j;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/a/k;

    iget-object v2, p0, Lcom/pingplusplus/android/a/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/a/k;-><init>(Lcom/pingplusplus/android/a/j;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "yeepay_wap"

    iput-object v0, p0, Lcom/pingplusplus/android/a/j;->h:Ljava/lang/String;

    .line 84
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    const-string v2, "result_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/a/j;->o:Ljava/lang/String;

    .line 87
    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v2, "yeepay_wap"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentActivity start yeepay_wap credential : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 91
    const-string v0, "merchantaccount"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    :try_start_0
    const-string v0, "encryptkey"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    :try_start_1
    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 100
    :goto_0
    const-string v5, "mode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v5, "live"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "https://ok.yeepay.com/paymobile/api/pay/request?merchantaccount=%s&encryptkey=%s&data=%s"

    .line 103
    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/a/j;->a(Ljava/lang/String;[B)V

    .line 105
    return-void

    .line 97
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 98
    :goto_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_0
    const-string v3, "http://mobiletest.yeepay.com/paymobile/api/pay/request?merchantaccount=%s&encryptkey=%s&data=%s"

    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_2
.end method
