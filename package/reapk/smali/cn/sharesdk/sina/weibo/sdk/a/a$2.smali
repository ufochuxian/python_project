.class Lcn/sharesdk/sina/weibo/sdk/a/a$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/sdk/a/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/sina/weibo/sdk/a/a;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/sdk/a/a;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 195
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->a(I)V

    .line 196
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/sdk/a/a$2;->a:Lcn/sharesdk/sina/weibo/sdk/a/a;

    invoke-static {v0}, Lcn/sharesdk/sina/weibo/sdk/a/a;->a(Lcn/sharesdk/sina/weibo/sdk/a/a;)Lcn/sharesdk/sina/weibo/sdk/LoadingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/sdk/LoadingBar;->setVisibility(I)V

    goto :goto_0
.end method
