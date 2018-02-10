.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$3;
.super Landroid/webkit/WebChromeClient;
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
    .line 268
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$3;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$3;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-virtual {v0, p1, p2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 272
    return-void
.end method
