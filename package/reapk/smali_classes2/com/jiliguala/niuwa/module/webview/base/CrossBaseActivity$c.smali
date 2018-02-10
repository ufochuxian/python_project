.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "JSBridgeReceiver"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    .prologue
    .line 588
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 589
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    .line 590
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 594
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.update.right.button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 598
    const-string v5, "action.update.right.button"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 599
    .local v2, "show":Z
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v5, v2}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->showRightTopBtn(Z)V

    goto :goto_0

    .line 600
    .end local v2    # "show":Z
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.update.shareobj.and.share"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    const-string v5, "action.update.shareobj.and.share"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "shareObjStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 604
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v5, v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->doShare(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v1    # "shareObjStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.update.finish.wirte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 607
    const-string v5, "action.update.finish.wirte"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "shareObjStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 610
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v5, v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->dealWriteResult(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    .end local v1    # "shareObjStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.start.storylesson"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 613
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jiliguala/niuwa/module/story/QualityStoryPayPageActiivty;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .local v4, "startIntent":Landroid/content/Intent;
    const-string v5, "ITEM_ID"

    const-string v6, "ITEM_ID"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v5, v4}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 616
    .end local v4    # "startIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.start.purchase"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 617
    const-string v5, "action.start.purchase"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->fromJson(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

    move-result-object v3

    .line 619
    .local v3, "skuBridge":Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->merchantID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->price:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->merchantID:Ljava/lang/String;

    iget-object v7, v3, Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;->price:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v7}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->showPayPage(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v3    # "skuBridge":Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action.goBack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 623
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->brideGoBack()V

    goto/16 :goto_0
.end method
