.class public Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;
.super Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

.field private mPurchaseSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;-><init>()V

    return-void
.end method

.method private registerCompletedPurchasedReceiver()V
    .locals 2

    .prologue
    .line 48
    new-instance v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method


# virtual methods
.method protected getPurchaseSource()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mPurchaseSource:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "1v1"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "1v1"

    return-object v0
.end method

.method protected goToMobilePage()V
    .locals 3

    .prologue
    const v2, 0x7f0f0182

    .line 72
    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 73
    const-string v1, "PURCHASE_ONE_V_ONE_COURSE"

    invoke-static {p0, v2, v1}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPurchaseCompletion(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->registerCompletedPurchasedReceiver()V

    .line 30
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_PURCHASE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mPurchaseSource:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;->onDestroy()V

    .line 43
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->unRegisterPurchasedReceiver()V

    .line 44
    return-void
.end method

.method public onReceivedSuccessPayResult()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOneCoursePurchaseSuccessActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 66
    .local v1, "isLandScape":Z
    :goto_0
    const-string v2, "KEY_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void

    .line 65
    .end local v1    # "isLandScape":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unRegisterPurchasedReceiver()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->mCompletedPurchasedReceiver:Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    :cond_0
    return-void
.end method
