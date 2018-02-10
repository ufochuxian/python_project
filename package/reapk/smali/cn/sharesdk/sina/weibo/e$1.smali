.class Lcn/sharesdk/sina/weibo/e$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/e;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->b(Lcn/sharesdk/sina/weibo/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/e;->c(Lcn/sharesdk/sina/weibo/e;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0, v2}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;I)I

    .line 96
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;I)I

    .line 106
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/e$1;->a:Lcn/sharesdk/sina/weibo/e;

    invoke-static {v0, p2}, Lcn/sharesdk/sina/weibo/e;->a(Lcn/sharesdk/sina/weibo/e;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
