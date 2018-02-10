.class Lcom/pingplusplus/android/a/f;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/a/e;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/e;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v0, "fqlpay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->k(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://m.mall.fenqile.com/app/order/result/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->l(Lcom/pingplusplus/android/a/e;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    const-string v0, "javascript:window.local_obj.showSource(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->m(Lcom/pingplusplus/android/a/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0, v2}, Lcom/pingplusplus/android/a/e;->c(Lcom/pingplusplus/android/a/e;Z)Z

    .line 86
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->o(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->n(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    const-string v0, "http://bt.xyqb.com/order-landing?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->m(Lcom/pingplusplus/android/a/e;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/e;->d(Lcom/pingplusplus/android/a/e;Z)Z

    .line 100
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 101
    return-void

    .line 87
    :cond_3
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->m(Lcom/pingplusplus/android/a/e;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->p(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->onBackPressed()V

    goto :goto_0

    .line 89
    :cond_4
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->q(Lcom/pingplusplus/android/a/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0, v2}, Lcom/pingplusplus/android/a/e;->c(Lcom/pingplusplus/android/a/e;Z)Z

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 41
    const-string v0, "mmdpay_wap"

    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->a(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://wap.memedai.cn/merchantApp/sdk/web/ending?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/e;->a(Lcom/pingplusplus/android/a/e;Z)Z

    .line 43
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->b(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "processing"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 45
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->r(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 49
    const-string v1, "pay_result=-1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->c(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "fail"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->d(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 52
    :cond_2
    const-string v1, "http://wapzt.189.cn/pages/login/login_userLogin.html#/pages/password/passwordNoLogin.html"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://uac.10010.com/cust/resetpwd/inputName"

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://bj.ac.10086.cn/login"

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1, p2}, Lcom/pingplusplus/android/a/e;->a(Lcom/pingplusplus/android/a/e;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_4
    const-string v1, "intent://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const-string v1, "http://pingxx/?payResult=success"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->e(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_5
    const-string v1, "http://m.mall.fenqile.com/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "http://m.fenqile.com/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "http://m.mall.fenqile.com/app/order/result/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 63
    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->f(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingplusplus/android/PaymentActivity;->onBackPressed()V

    goto :goto_1

    .line 65
    :cond_7
    const-string v1, "fqlpay_wap"

    iget-object v2, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v2}, Lcom/pingplusplus/android/a/e;->g(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1}, Lcom/pingplusplus/android/a/e;->h(Lcom/pingplusplus/android/a/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "http://m.mall.fenqile.com/app/order/result/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 66
    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1, p2}, Lcom/pingplusplus/android/a/e;->b(Lcom/pingplusplus/android/a/e;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 68
    :cond_8
    const-string v1, "mmdpay_wap"

    iget-object v2, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v2}, Lcom/pingplusplus/android/a/e;->i(Lcom/pingplusplus/android/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://wap.memedai.cn/merchantApp/sdk/web/ending?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v1, v0}, Lcom/pingplusplus/android/a/e;->b(Lcom/pingplusplus/android/a/e;Z)Z

    .line 70
    iget-object v0, p0, Lcom/pingplusplus/android/a/f;->a:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->j(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "processing"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    goto/16 :goto_0
.end method
