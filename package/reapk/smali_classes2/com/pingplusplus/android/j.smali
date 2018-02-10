.class public Lcom/pingplusplus/android/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pingplusplus/android/j$a;,
        Lcom/pingplusplus/android/j$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/pingplusplus/android/WebViewEx;

.field protected b:Lcom/pingplusplus/android/PaymentActivity;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ProgressBar;

.field protected f:Landroid/widget/FrameLayout;

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:Z

.field protected j:Z

.field public k:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final m:I

.field public final n:I

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pingplusplus/android/PingppObject;->ignoreResultUrl:Z

    iput-boolean v0, p0, Lcom/pingplusplus/android/j;->g:Z

    .line 46
    invoke-static {}, Lcom/pingplusplus/android/PingppObject;->getInstance()Lcom/pingplusplus/android/PingppObject;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pingplusplus/android/PingppObject;->ignoreTitleBar:Z

    iput-boolean v0, p0, Lcom/pingplusplus/android/j;->p:Z

    .line 48
    iput-boolean v1, p0, Lcom/pingplusplus/android/j;->q:Z

    .line 50
    iput-boolean v1, p0, Lcom/pingplusplus/android/j;->j:Z

    .line 55
    iput v1, p0, Lcom/pingplusplus/android/j;->m:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/pingplusplus/android/j;->n:I

    .line 60
    new-instance v0, Lcom/pingplusplus/android/WebViewEx;

    invoke-direct {v0, p1}, Lcom/pingplusplus/android/WebViewEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/pingplusplus/android/PaymentActivity;

    iput-object v0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_pingpp_payment"

    const-string v2, "layout"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 64
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pingpp_webView"

    const-string v2, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pingplusplus/android/WebViewEx;

    iput-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pingpp_progressbar"

    const-string v2, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pingplusplus/android/j;->e:Landroid/widget/ProgressBar;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pingpp_title"

    const-string v2, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pingplusplus/android/j;->f:Landroid/widget/FrameLayout;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pingpp_back"

    const-string v2, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pingplusplus/android/j;->d:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/pingplusplus/android/j;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/pingplusplus/android/k;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/k;-><init>(Lcom/pingplusplus/android/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/pingplusplus/android/j;->d()V

    .line 88
    invoke-virtual {p0}, Lcom/pingplusplus/android/j;->b()V

    .line 89
    invoke-virtual {p0}, Lcom/pingplusplus/android/j;->a()V

    .line 91
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/pingplusplus/android/j;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v0, "PING++"

    const-string v1, "\u8bf7\u5bfc\u5165activity_pingpp_payment.xml\u6587\u4ef6"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v2, "fail"

    const-string v3, "invalid_credential"

    invoke-virtual {v1, v2, v3}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v0}, Lcom/pingplusplus/android/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 172
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 174
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 175
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 176
    const-string v1, "%s; %s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "PingppAndroidSDK"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "2.1.8"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/j$b;

    iget-object v2, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/j$b;-><init>(Lcom/pingplusplus/android/j;Landroid/content/Context;)V

    const-string v2, "PingppAndroidSDK"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/j$b;

    iget-object v2, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/j$b;-><init>(Lcom/pingplusplus/android/j;Landroid/content/Context;)V

    const-string v2, "PingppSDK"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/j$a;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/j$a;-><init>(Lcom/pingplusplus/android/j;)V

    const-string v2, "local_obj"

    invoke-virtual {v0, v1, v2}, Lcom/pingplusplus/android/WebViewEx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/pingplusplus/android/j;
    .locals 2

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pingplusplus/android/j;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    :goto_0
    return-object p0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/j;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    new-instance v1, Lcom/pingplusplus/android/l;

    iget-object v2, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Lcom/pingplusplus/android/l;-><init>(Lcom/pingplusplus/android/j;Lcom/pingplusplus/android/WebViewEx;)V

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 124
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 267
    iget-object v0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    iget-object v1, p0, Lcom/pingplusplus/android/j;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->setContentView(Landroid/view/View;)V

    .line 161
    if-nez p2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/pingplusplus/android/WebViewEx;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    iput-object v0, p0, Lcom/pingplusplus/android/j;->h:Ljava/lang/String;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6a21\u62df\u652f\u4ed8\u9875\u9762: \u652f\u4ed8\u6e20\u9053 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const-string v1, "http://sissi.pingxx.com/mock.php?ch_id=%s&channel=%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pingplusplus/android/j;->a(Ljava/lang/String;[B)V

    .line 157
    return-void

    .line 152
    :cond_0
    const-string v3, "http://sissi.pingxx.com/mock.php?ch_id=%s&channel=%s&or_id=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/pingplusplus/android/j;->p:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/pingplusplus/android/j;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/pingplusplus/android/j;->j:Z

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v0}, Lcom/pingplusplus/android/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pingplusplus/android/j;->i:Z

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/pingplusplus/android/j;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-virtual {v0}, Lcom/pingplusplus/android/WebViewEx;->goBack()V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    iget-object v1, p0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    iget-object v1, v1, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
