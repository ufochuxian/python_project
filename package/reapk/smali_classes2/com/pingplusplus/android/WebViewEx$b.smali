.class public Lcom/pingplusplus/android/WebViewEx$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/WebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/pingplusplus/android/WebViewEx;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/pingplusplus/android/WebViewEx$b;->b:Lcom/pingplusplus/android/WebViewEx;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$b;->b:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 408
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 409
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$b;->b:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 402
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$b;->b:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 420
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$b;->b:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 414
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 415
    return-void
.end method
