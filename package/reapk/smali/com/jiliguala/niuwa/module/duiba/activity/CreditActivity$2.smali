.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$2;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$2;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_0
    return-void
.end method

.method public localRefresh(Ljava/lang/String;)V
    .locals 2
    .param p1, "credits"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_0
    return-void
.end method

.method public login()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 225
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$1;-><init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void
.end method
