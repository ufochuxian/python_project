.class public Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INTERVAL_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OriginalJsScope"

.field static mClickManger:Lcom/jiliguala/niuwa/common/util/xutils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;->mClickManger:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrderForItem(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v1, Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;->mClickManger:Lcom/jiliguala/niuwa/common/util/xutils/c;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.start.storylesson"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static createShareObj(Landroid/webkit/WebView;)Lcom/jiliguala/niuwa/logic/network/json/ShareObj;
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;-><init>()V

    return-object v0
.end method

.method public static createWritingTaskResult(Landroid/webkit/WebView;)Lcom/jiliguala/niuwa/logic/network/json/WriteResult;
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 58
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;-><init>()V

    return-object v0
.end method

.method public static finishWritingTask(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.update.finish.wirte"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update.finish.wirte"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static goBack(Landroid/webkit/WebView;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 87
    sget-object v1, Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;->mClickManger:Lcom/jiliguala/niuwa/common/util/xutils/c;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.goBack"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static purchase(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v1, Lcom/jiliguala/niuwa/module/write/jsscope/OriginalJsScope;->mClickManger:Lcom/jiliguala/niuwa/common/util/xutils/c;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.start.purchase"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.start.purchase"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static setRightButtonHidden(Landroid/webkit/WebView;Z)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "show"    # Z

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.update.right.button"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update.right.button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public static share(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "shareObjStr"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.update.shareobj.and.share"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update.shareobj.and.share"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public static toast(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static version(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 47
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
