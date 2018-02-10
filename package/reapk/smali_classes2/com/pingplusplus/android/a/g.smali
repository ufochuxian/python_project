.class Lcom/pingplusplus/android/a/g;
.super Lcom/pingplusplus/android/WebViewEx$a;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/pingplusplus/android/a/e;


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/a/e;Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pingplusplus/android/a/g;->b:Lcom/pingplusplus/android/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/pingplusplus/android/WebViewEx$a;-><init>(Lcom/pingplusplus/android/WebViewEx;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/pingplusplus/android/WebViewEx$a;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 114
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 115
    iget-object v0, p0, Lcom/pingplusplus/android/a/g;->b:Lcom/pingplusplus/android/a/e;

    invoke-static {v0}, Lcom/pingplusplus/android/a/e;->s(Lcom/pingplusplus/android/a/e;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pingplusplus/android/PaymentActivity;->onBackPressed()V

    .line 116
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/pingplusplus/android/a/g;->b:Lcom/pingplusplus/android/a/e;

    invoke-static {v0, p2}, Lcom/pingplusplus/android/a/e;->a(Lcom/pingplusplus/android/a/e;Landroid/webkit/ValueCallback;)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
