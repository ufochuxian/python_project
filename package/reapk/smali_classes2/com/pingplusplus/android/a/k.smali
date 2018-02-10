.class Lcom/pingplusplus/android/a/k;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/a/j;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/j;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->g(Lcom/pingplusplus/android/a/j;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->a(Lcom/pingplusplus/android/a/j;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->a(Lcom/pingplusplus/android/a/j;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->b(Lcom/pingplusplus/android/a/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->c(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/j;->a(Lcom/pingplusplus/android/a/j;Z)Z

    .line 53
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->d(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "http://shouyin.yeepay.com/nc-cashier-wap/wap/query/result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->e(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/a/j;->b(Lcom/pingplusplus/android/a/j;Z)Z

    .line 65
    :cond_0
    const-string v0, "https://ok.yeepay.com/paymobile/query/pay/success?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://mobiletest.yeepay.com/paymobile/query/pay/success?"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/a/k;->a:Lcom/pingplusplus/android/a/j;

    invoke-static {v0}, Lcom/pingplusplus/android/a/j;->f(Lcom/pingplusplus/android/a/j;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 69
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
