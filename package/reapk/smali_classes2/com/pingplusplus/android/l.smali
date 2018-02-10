.class Lcom/pingplusplus/android/l;
.super Lcom/pingplusplus/android/WebViewEx$b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/j;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$b;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$b;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pingplusplus/android/l;->a:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
