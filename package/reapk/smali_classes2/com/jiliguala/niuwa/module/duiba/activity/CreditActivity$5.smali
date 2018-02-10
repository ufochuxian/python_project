.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shouldOverrideUrlByDuiba(Landroid/webkit/WebView;Ljava/lang/String;)Z
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
    .line 509
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$5;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;->onLoginClick(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 513
    return-void
.end method
