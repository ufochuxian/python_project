.class public Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->finish()V

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 82
    :cond_1
    const v0, 0x7f010012

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 32
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 33
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$1;-><init>(Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->setContentView(I)V

    .line 41
    const v1, 0x7f09060a

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "about.html?appVersion=%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 45
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$2;-><init>(Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    return-void
.end method
