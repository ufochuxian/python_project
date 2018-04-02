.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;
.super Lcom/jiliguala/niuwa/logic/safejsbridge/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V
    .locals 1
    .param p1, "injectedName"    # Ljava/lang/String;
    .param p2, "injectedCls"    # Ljava/lang/Class;
    .param p3, "client"    # Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/safejsbridge/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 479
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 480
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 486
    invoke-super {p0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 501
    invoke-super/range {p0 .. p5}, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 491
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 494
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/safejsbridge/a;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onReceivedTitle(Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method
