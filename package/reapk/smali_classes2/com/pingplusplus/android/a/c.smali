.class public Lcom/pingplusplus/android/a/c;
.super Lcom/pingplusplus/android/j;
.source "SourceFile"


# instance fields
.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/pingplusplus/android/j;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/pingplusplus/android/a/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/c;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/pingplusplus/android/a/c;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/pingplusplus/android/a/c;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/pingplusplus/android/a/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/pingplusplus/android/a/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/pingplusplus/android/a/c;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    return-object v0
.end method

.method static synthetic g(Lcom/pingplusplus/android/a/c;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/a/d;

    iget-object v2, p0, Lcom/pingplusplus/android/a/c;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/a/d;-><init>(Lcom/pingplusplus/android/a/c;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 83
    const-string v0, "cmb_wallet"

    iput-object v0, p0, Lcom/pingplusplus/android/a/c;->h:Ljava/lang/String;

    .line 85
    const-string v0, "credential"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    const-string v1, "cmb_wallet"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v1, "result_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/a/c;->o:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    const-string v5, "ChannelUrl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    const-string v5, "channelVersion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_1
    const-string v0, "="

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v6, "fail"

    invoke-virtual {v0, v6}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/pingplusplus/android/a/c;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    const-string v2, "invalid_credential"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2
    return-void

    .line 117
    :cond_3
    const-string v0, "&"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/pingplusplus/android/a/c;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 120
    :catch_1
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method
