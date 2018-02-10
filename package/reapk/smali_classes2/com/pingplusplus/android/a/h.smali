.class public Lcom/pingplusplus/android/a/h;
.super Lcom/pingplusplus/android/j;
.source "SourceFile"


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 34
    const-string v0, "https://h5pay.jd.com/jdpay/payResult?"

    iput-object v0, p0, Lcom/pingplusplus/android/a/h;->p:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)Lcom/pingplusplus/android/WebViewEx;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object p1
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/h;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/h;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)Lcom/pingplusplus/android/WebViewEx;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object p1
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/h;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/pingplusplus/android/a/h;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/h;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/h;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/WebViewEx;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object v0
.end method

.method static synthetic g(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/WebViewEx;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    return-object v0
.end method

.method static synthetic j(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/pingplusplus/android/a/h;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/a/i;

    iget-object v2, p0, Lcom/pingplusplus/android/a/h;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/a/i;-><init>(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 92
    const-string v0, "jdpay_wap"

    iput-object v0, p0, Lcom/pingplusplus/android/a/h;->h:Ljava/lang/String;

    .line 94
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    const-string v1, "success_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pingplusplus/android/a/h;->o:Ljava/lang/String;

    .line 96
    const-string v1, "fail_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/a/h;->q:Ljava/lang/String;

    .line 98
    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    const-string v1, "jdpay_wap"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentActivity start jdpay_wap credential : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 104
    const-string v0, "https://m.jdpay.com/wepay/web/pay"

    move-object v1, v0

    .line 105
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    const-string v5, "channelUrl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 110
    goto :goto_0

    .line 113
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    const-string v0, "="

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 123
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/pingplusplus/android/a/h;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "invalid_credential"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_2
    return-void

    .line 128
    :cond_2
    const-string v0, "&"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pingplusplus/android/a/h;->a(Ljava/lang/String;[B)V

    goto :goto_2
.end method
