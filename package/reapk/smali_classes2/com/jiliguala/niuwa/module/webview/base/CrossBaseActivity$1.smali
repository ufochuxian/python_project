.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;->a:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;->a:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->dismissConfirmPayResultDialog()V

    .line 708
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;->a:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onBackPressed()V

    .line 709
    return-void
.end method
