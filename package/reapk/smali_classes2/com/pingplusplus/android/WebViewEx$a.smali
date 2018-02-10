.class public Lcom/pingplusplus/android/WebViewEx$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/WebViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/WebViewEx;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/WebViewEx;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/pingplusplus/android/WebViewEx$a;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 383
    instance-of v0, p1, Lcom/pingplusplus/android/WebViewEx;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$a;->a:Lcom/pingplusplus/android/WebViewEx;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$a;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 377
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 378
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pingplusplus/android/WebViewEx$a;->a:Lcom/pingplusplus/android/WebViewEx;

    invoke-static {v0, p1}, Lcom/pingplusplus/android/WebViewEx;->a(Lcom/pingplusplus/android/WebViewEx;Landroid/webkit/WebView;)V

    .line 395
    return-void
.end method
