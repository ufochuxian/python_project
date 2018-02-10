.class public abstract Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;
.implements Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;
.implements Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;
.implements Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;,
        Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;,
        Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$a;,
        Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;,
        Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;
    }
.end annotation


# static fields
.field public static final ACTION_GOBACK:Ljava/lang/String; = "action.goBack"

.field public static final ACTION_START_BUY_STORY_LESSON_ACTIVITY:Ljava/lang/String; = "action.start.storylesson"

.field public static final ACTION_START_PURCHASE:Ljava/lang/String; = "action.start.purchase"

.field public static final ACTION_UPDATE_FINISH_WRITING_TASK:Ljava/lang/String; = "action.update.finish.wirte"

.field public static final ACTION_UPDATE_RIGHT_BUTTON:Ljava/lang/String; = "action.update.right.button"

.field public static final ACTION_UPDATE_SHARE_OBJ_AND_SHARE:Ljava/lang/String; = "action.update.shareobj.and.share"

.field private static final TAG:Ljava/lang/String; = "CrossBaseActivity"


# instance fields
.field protected currentUrl:Ljava/lang/String;

.field private intentFilter:Landroid/content/IntentFilter;

.field protected loadFinished:Z

.field private mBridgeName:Ljava/lang/String;

.field private mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

.field private mItemId:Ljava/lang/String;

.field private mJSBridgeReceiver:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;

.field private mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

.field protected mPlan:Ljava/lang/String;

.field protected mSkuBridge:Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

.field private mUsingCrossWalk:Z

.field private mWebView:Landroid/webkit/WebView;

.field public mXWalkView:Lorg/xwalk/core/XWalkView;

.field private mismatchOfCpuArchitecture:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    .line 76
    const-string v0, "JLGL"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mBridgeName:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->loadFinished:Z

    .line 88
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mUsingCrossWalk:Z

    .line 91
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mismatchOfCpuArchitecture:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mBridgeName:Ljava/lang/String;

    return-object v0
.end method

.method private initializeCrossWalkFailed(Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mismatchOfCpuArchitecture:Z

    .line 136
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeWebView()V

    .line 137
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    return-void
.end method

.method private initializeJsBridgeCallback()V
    .locals 2

    .prologue
    .line 379
    new-instance v0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;-><init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mJSBridgeReceiver:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 381
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.update.right.button"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.update.shareobj.and.share"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.update.finish.wirte"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.start.storylesson"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.start.purchase"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.goBack"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mJSBridgeReceiver:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    return-void
.end method

.method private initializeWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 356
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeJsBridgeCallback()V

    .line 358
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    .line 359
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->setDebug()V

    .line 360
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 361
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;

    invoke-direct {v1, p0, p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$b;-><init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 367
    return-void
.end method

.method private initializeXWalk()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 340
    new-instance v0, Lorg/xwalk/core/XWalkView;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v1, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;-><init>(Lorg/xwalk/core/XWalkView;Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;)V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mBridgeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/XWalkView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-direct {v1, v2, p0, p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;-><init>(Lorg/xwalk/core/XWalkView;Landroid/content/Context;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkView;->setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V

    .line 347
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v1, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-direct {v1, v2, p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;-><init>(Lorg/xwalk/core/XWalkView;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkView;->setUIClient(Lorg/xwalk/core/XWalkUIClient;)V

    .line 350
    const-string v0, "remote-debugging"

    invoke-static {v0, v3}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 352
    const-string v0, "enable-javascript"

    invoke-static {v0, v3}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 353
    return-void
.end method

.method private loadUrlNow(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->loadFinished:Z

    .line 182
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->isCrossWalkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/XWalkView;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "mItemID"    # Ljava/lang/String;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v4, v0, v2

    .line 717
    .local v4, "price":D
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 718
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Channel"

    invoke-interface {v7, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPlan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const-string v0, "AB Test"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPlan:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getPurchaseSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    const-string v0, "LessonID"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getPurchaseSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getRevenueType()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;IDLjava/lang/String;Ljava/util/Map;)V

    .line 726
    return-void
.end method

.method private reportClickPurchase()V
    .locals 3

    .prologue
    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Item_id"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mItemId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "none"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v1, "Type"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Item Purchase Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 675
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mItemId:Ljava/lang/String;

    goto :goto_0
.end method

.method private setCookies(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->shouldSetCookies(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    const-string v1, "Authorization="

    .line 161
    .local v1, "cookie":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->s()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "token":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "basicAuth":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .end local v0    # "basicAuth":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->isCrossWalkAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    new-instance v2, Lorg/xwalk/core/XWalkCookieManager;

    invoke-direct {v2}, Lorg/xwalk/core/XWalkCookieManager;-><init>()V

    .line 169
    .local v2, "cookieManager":Lorg/xwalk/core/XWalkCookieManager;
    invoke-virtual {v2, v8}, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookie(Z)V

    .line 170
    invoke-virtual {v2, p1, v1}, Lorg/xwalk/core/XWalkCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v1    # "cookie":Ljava/lang/String;
    .end local v2    # "cookieManager":Lorg/xwalk/core/XWalkCookieManager;
    :cond_1
    :goto_0
    return-void

    .line 172
    .restart local v1    # "cookie":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 173
    .local v2, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v2, v8}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 174
    invoke-virtual {v2, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDebug()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 371
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method private shouldSetCookies(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jiliguala.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected afterOverrideUrlLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 462
    return-void
.end method

.method public brideGoBack()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method protected canGoBack()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->isCrossWalkAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v4}, Lorg/xwalk/core/XWalkView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v4}, Lorg/xwalk/core/XWalkView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    move v3, v2

    .line 205
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 202
    .local v1, "history":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v4, "file:///android_asset/local_error.html"

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    .line 203
    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoBack()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_1

    .line 204
    .end local v1    # "history":Landroid/webkit/WebBackForwardList;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    goto :goto_1
.end method

.method public dismissConfirmPayResultDialog()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->dismiss()V

    .line 793
    :cond_0
    return-void
.end method

.method protected getPurchaseSource()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRevenueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    const-string v0, ""

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    const-string v0, ""

    return-object v0
.end method

.method protected goBack()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->isCrossWalkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v0

    sget-object v1, Lorg/xwalk/core/XWalkNavigationHistory$Direction;->BACKWARD:Lorg/xwalk/core/XWalkNavigationHistory$Direction;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/xwalk/core/XWalkNavigationHistory;->navigate(Lorg/xwalk/core/XWalkNavigationHistory$Direction;I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public hidePayPage()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 657
    :cond_0
    return-void
.end method

.method protected initWebView(Landroid/view/View;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 100
    if-nez p1, :cond_0

    .line 125
    .end local p1    # "parent":Landroid/view/View;
    :goto_0
    return-void

    .line 105
    .restart local p1    # "parent":Landroid/view/View;
    :cond_0
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mUsingCrossWalk:Z

    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeXWalk()V

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljunit/framework/AssertionFailedError;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeCrossWalkFailed(Landroid/view/View;)V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljunit/framework/AssertionFailedError;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeCrossWalkFailed(Landroid/view/View;)V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeWebView()V

    .line 119
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 122
    .restart local p1    # "parent":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->initializeWebView()V

    .line 123
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected isCrossWalkAvailable()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mUsingCrossWalk:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mismatchOfCpuArchitecture:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->setCookies(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->loadUrlNow(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "file:///android_asset/local_error.html"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->loadUrlNow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 742
    invoke-super {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 743
    sget v3, Lcom/pingplusplus/android/Pingpp;->REQUEST_CODE_PAYMENT:I

    if-ne p1, v3, :cond_3

    .line 744
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 745
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pay_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_msg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "extraMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v3, :cond_0

    .line 756
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 759
    :cond_0
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->hidePayPage()V

    .line 761
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v3, :cond_1

    .line 762
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->requestOrderResultWithNoRetry()V

    .line 766
    :cond_1
    const-string v3, "success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 767
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->showConfirmPayResultDialog()V

    .line 768
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-eqz v3, :cond_2

    .line 769
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->reportOrderNoStatusToServer()V

    .line 773
    :cond_2
    const-string v3, "fail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 775
    const-string v3, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v3}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 779
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v1    # "extraMsg":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkView;->onDestroy()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 224
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onPause()V

    .line 225
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkView;->pauseTimers()V

    .line 227
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkView;->onHide()V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    .line 232
    :try_start_0
    const-string v3, "android.webkit.WebView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 233
    .local v2, "webview":Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 234
    const-string v4, "onPause"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 235
    .local v1, "pause":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 236
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .end local v1    # "pause":Ljava/lang/reflect/Method;
    .end local v2    # "webview":Ljava/lang/Class;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    .line 252
    :try_start_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v4, "javascript:if(window.stopAllMedia){window.stopAllMedia()}"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_2
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 243
    :catch_2
    move-exception v3

    goto :goto_0

    .line 241
    :catch_3
    move-exception v3

    goto :goto_0

    .line 239
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method public onReceivedPayResult(Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;
    .param p2, "payAmount"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "orderId"    # Ljava/lang/String;

    .prologue
    .line 689
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v1, p1, Lcom/jiliguala/niuwa/logic/network/json/PingPPPayResult$Data;->status:Ljava/lang/String;

    const-string v2, "paid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    invoke-direct {p0, p3, p2, p4}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->reportAvenueAmplitude(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-eqz v1, :cond_2

    .line 696
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    const-string v2, "\u606d\u559c\u60a8\u8d2d\u4e70\u6210\u529f!"

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->setPayResultDesc(Ljava/lang/String;)V

    .line 698
    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/jiliguala/niuwa/receivers/CompletePurchasedReceiver;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 699
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_key_purchased"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mSkuBridge:Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 700
    const-string v1, "extra_key_oid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$1;-><init>(Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onReceivedPayResultTimeout()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->enablePayBtn()V

    .line 680
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->dismiss()V

    .line 682
    const-string v0, "\u652f\u4ed8\u5931\u8d25,\u8bf7\u5728\u5fae\u4fe1\u5173\u6ce8\u53fd\u91cc\u5471\u5566\u670d\u52a1\u53f7\u540e\u8fdb\u884c\u53cd\u9988"

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->dismissConfirmPayResultDialog()V

    .line 684
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->onBackPressed()V

    .line 685
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onResume()V

    .line 262
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkView;->resumeTimers()V

    .line 264
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkView;->onShow()V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 268
    :try_start_0
    const-string v2, "android.webkit.WebView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 269
    .local v1, "webview":Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 270
    const-string v3, "onResume"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 271
    .local v0, "resume":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 272
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "resume":Ljava/lang/reflect/Method;
    .end local v1    # "webview":Ljava/lang/Class;
    :cond_1
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v2

    goto :goto_0

    .line 279
    :catch_1
    move-exception v2

    goto :goto_0

    .line 277
    :catch_2
    move-exception v2

    goto :goto_0

    .line 275
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public onWeixinPayClick()V
    .locals 1

    .prologue
    .line 661
    const-string v0, "\u6b63\u5728\u8fdb\u5165\u5fae\u4fe1,\u8bf7\u7a0d\u540e..."

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->reportClickPurchase()V

    .line 663
    return-void
.end method

.method public onZhiFuBaoPayClick()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->reportClickPurchase()V

    .line 668
    return-void
.end method

.method protected pressBack()V
    .locals 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 299
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "javascript:if(window.stopAllMedia){window.stopAllMedia()}"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 301
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 302
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    .line 303
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 304
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->removeAllViews()V

    .line 308
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mJSBridgeReceiver:Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$c;

    invoke-virtual {p0, v2}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 320
    :goto_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    if-eqz v2, :cond_2

    .line 322
    :try_start_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkView;->stopLoading()V

    .line 323
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xwalk/core/XWalkView;->clearCache(Z)V

    .line 324
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkNavigationHistory;->clear()V

    .line 325
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mXWalkView:Lorg/xwalk/core/XWalkView;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkView;->onDestroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 331
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->finish()V

    .line 332
    const v2, 0x7f010012

    const v3, 0x7f01001e

    invoke-virtual {p0, v2, v3}, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->overridePendingTransition(II)V

    .line 333
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public setBridgeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bridgeName"    # Ljava/lang/String;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mBridgeName:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setUsingCrossWalk(Z)V
    .locals 0
    .param p1, "usingCrossWalk"    # Z

    .prologue
    .line 797
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mUsingCrossWalk:Z

    .line 798
    return-void
.end method

.method public showConfirmPayResultDialog()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mConfirmPayResultDialog:Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/detail/view/ConfirmPayResultDialog;->show()V

    .line 787
    return-void
.end method

.method public showPayPage(Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "skuBridge"    # Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;
    .param p2, "mItemID"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;

    .prologue
    .line 635
    :try_start_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mSkuBridge:Lcom/jiliguala/niuwa/logic/network/json/SkuBridge;

    .line 636
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mItemId:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    const-string v1, "REQUEST_CHARGE_USE_GET"

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setOnPayClickListener(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$onPayClickListenr;)V

    .line 640
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setCallBack(Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog$CallBack;)V

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->show()V

    .line 650
    :goto_1
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p2}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setItemId(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;->mPayDialog:Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;

    invoke-virtual {v0, p3}, Lcom/jiliguala/niuwa/module/pingplusplus/PayDialog;->setMoneyAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    goto :goto_1
.end method
