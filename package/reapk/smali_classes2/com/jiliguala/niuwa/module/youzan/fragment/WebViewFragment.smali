.class public abstract Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"


# instance fields
.field private mIsWebViewAvailable:Z

.field private mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract getLayoutId()I
    .annotation build Landroid/support/annotation/w;
    .end annotation
.end method

.method public getWebView()Lcom/youzan/androidsdk/basic/YouzanBrowser;
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mIsWebViewAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getWebViewId()I
    .annotation build Landroid/support/annotation/r;
    .end annotation
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->destroy()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->getWebViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youzan/androidsdk/basic/YouzanBrowser;

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mIsWebViewAvailable:Z

    .line 52
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->destroy()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 109
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mIsWebViewAvailable:Z

    .line 96
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroyView()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->onPause()V

    .line 76
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/WebViewFragment;->mWebView:Lcom/youzan/androidsdk/basic/YouzanBrowser;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->onResume()V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onResume()V

    .line 87
    return-void
.end method
