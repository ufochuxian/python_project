.class Lcom/pingplusplus/android/a/i;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/a/h;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->k(Lcom/pingplusplus/android/a/h;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->b(Lcom/pingplusplus/android/a/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->c(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->d(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;Z)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->e(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->f(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingplusplus/android/WebViewEx;->destroy()V

    .line 63
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1, v3}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)Lcom/pingplusplus/android/WebViewEx;

    .line 64
    const-string v1, "jdPay success"

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    .line 77
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->g(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->h(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1}, Lcom/pingplusplus/android/a/h;->i(Lcom/pingplusplus/android/a/h;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pingplusplus/android/WebViewEx;->destroy()V

    .line 69
    iget-object v1, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v1, v3}, Lcom/pingplusplus/android/a/h;->b(Lcom/pingplusplus/android/a/h;Lcom/pingplusplus/android/WebViewEx;)Lcom/pingplusplus/android/WebViewEx;

    .line 70
    const-string v1, "jdPay fail"

    invoke-static {v1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "https://www.jdpay.com/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0, p2}, Lcom/pingplusplus/android/a/h;->a(Lcom/pingplusplus/android/a/h;Ljava/lang/String;)V

    .line 77
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    invoke-static {v0}, Lcom/pingplusplus/android/a/h;->j(Lcom/pingplusplus/android/a/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/pingplusplus/android/a/i;->a:Lcom/pingplusplus/android/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/h;->b(Lcom/pingplusplus/android/a/h;Z)Z

    goto :goto_1
.end method
