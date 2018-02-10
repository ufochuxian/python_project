.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 210
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 212
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareThumbnail:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$1;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shareSubtitle:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;->onShareClick(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method
