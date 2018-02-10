.class Lcom/pingplusplus/android/a/d;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/a/c;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/c;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v0}, Lcom/pingplusplus/android/a/c;->g(Lcom/pingplusplus/android/a/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 50
    const-string v0, "https://netpay.cmbchina.com/netpayment/BaseHttp.dll?MB_EUserP_PayOK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://61.144.248.29:801/netpayment/BaseHttp.dll?MB_EUserP_PayOK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/c;->a(Lcom/pingplusplus/android/a/c;Z)Z

    .line 52
    iget-object v0, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v0}, Lcom/pingplusplus/android/a/c;->a(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 54
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 58
    new-instance v1, Lcmb/pb/util/CMBKeyboardFunc;

    iget-object v2, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v2}, Lcom/pingplusplus/android/a/c;->b(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcmb/pb/util/CMBKeyboardFunc;-><init>(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {v1, p1, p2}, Lcmb/pb/util/CMBKeyboardFunc;->HandleUrlCall(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 71
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v1}, Lcom/pingplusplus/android/a/c;->c(Lcom/pingplusplus/android/a/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v1}, Lcom/pingplusplus/android/a/c;->c(Lcom/pingplusplus/android/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v1}, Lcom/pingplusplus/android/a/c;->d(Lcom/pingplusplus/android/a/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v0}, Lcom/pingplusplus/android/a/c;->e(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v1}, Lcom/pingplusplus/android/a/c;->f(Lcom/pingplusplus/android/a/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    const-string v2, "success"

    iput-object v2, v1, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/pingplusplus/android/a/d;->a:Lcom/pingplusplus/android/a/c;

    invoke-static {v1, v0}, Lcom/pingplusplus/android/a/c;->b(Lcom/pingplusplus/android/a/c;Z)Z

    goto :goto_1
.end method
