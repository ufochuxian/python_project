.class Lcom/pingplusplus/android/a/b;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/a/a;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/a;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->h(Lcom/pingplusplus/android/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/a;->b(Lcom/pingplusplus/android/a/a;Z)Z

    .line 72
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->j(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v1}, Lcom/pingplusplus/android/a/a;->i(Lcom/pingplusplus/android/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/WebViewEx;->loadUrl(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    const-string v0, "#PayResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->n(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/a;->c(Lcom/pingplusplus/android/a/a;Z)Z

    .line 83
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    return-void

    .line 73
    :cond_2
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->h(Lcom/pingplusplus/android/a/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->l(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v1}, Lcom/pingplusplus/android/a/a;->k(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->m(Lcom/pingplusplus/android/a/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
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
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->a(Lcom/pingplusplus/android/a/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->a(Lcom/pingplusplus/android/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->b(Lcom/pingplusplus/android/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->c(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->d(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/a;->a(Lcom/pingplusplus/android/a/a;Z)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 54
    const-string v0, "https://www.baifubao.com/wap/0/wallet/0/transaction/0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->e(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 64
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    .line 56
    :cond_1
    const-string v0, "https://m.baifubao.com/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0}, Lcom/pingplusplus/android/a/a;->g(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v1}, Lcom/pingplusplus/android/a/a;->f(Lcom/pingplusplus/android/a/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "http://wappass.baidu.com/passport/reg?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://wappass.baidu.com/passport/getpass?"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://wappass.baidu.com/passport/agreement?"

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/pingplusplus/android/a/b;->a:Lcom/pingplusplus/android/a/a;

    invoke-static {v0, p2}, Lcom/pingplusplus/android/a/a;->a(Lcom/pingplusplus/android/a/a;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    goto :goto_1
.end method
