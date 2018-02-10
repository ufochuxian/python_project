.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/ref/WeakReference;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 511
    const-string v0, "CustomWebViewClient"

    sput-object v0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V
    .locals 1
    .param p1, "context"    # Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
    .param p2, "client"    # Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 512
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->b:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 518
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    .line 519
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    .line 520
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->access$000(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    new-instance v0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->access$100(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-direct {v0, v2, v3, v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V

    .line 529
    .local v0, "client":Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->access$000(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 531
    .end local v0    # "client":Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onLoadFinished(Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onLoadStarted(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 536
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jlgl://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->b:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 563
    :goto_0
    return v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->afterOverrideUrlLoading(Ljava/lang/String;)V

    move v0, v1

    .line 547
    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 555
    const-string v0, "file:///android_asset/refresh"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onRefresh()V

    move v0, v1

    .line 559
    goto :goto_0

    .line 563
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
