.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->localRefresh(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;->b:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    sget-object v0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->creditsListener:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;->b:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    iget-object v1, v1, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$2$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$CreditsListener;->onLocalRefresh(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 256
    return-void
.end method
