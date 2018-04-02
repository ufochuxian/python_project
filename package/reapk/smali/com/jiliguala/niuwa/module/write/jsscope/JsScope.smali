.class public Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mXWalkWebView:Lorg/xwalk/core/XWalkView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkView;Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;)V
    .locals 1
    .param p1, "xWalkWebView"    # Lorg/xwalk/core/XWalkView;
    .param p2, "callback"    # Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mXWalkWebView:Lorg/xwalk/core/XWalkView;

    .line 28
    return-void
.end method


# virtual methods
.method public createShareObj()Lcom/jiliguala/niuwa/logic/network/json/ShareObj;
    .locals 1
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/ShareObj;-><init>()V

    return-object v0
.end method

.method public createWritingTaskResult()Lcom/jiliguala/niuwa/logic/network/json/WriteResult;
    .locals 1
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/WriteResult;-><init>()V

    return-object v0
.end method

.method public finishWritingTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->dealWriteResult(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public goToLesson(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->goToLesson(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onGameCompleted(Ljava/lang/String;)V
    .locals 1
    .param p1, "gameID"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->onGameCompleted(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onSectionCompleted(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->onSectionCompleted(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setRightButtonHidden(Ljava/lang/String;)V
    .locals 1
    .param p1, "show"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->showRightTopBtn(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public share(Ljava/lang/String;)V
    .locals 1
    .param p1, "shareObjStr"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->doShare(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public shareWithJSON(Ljava/lang/String;)V
    .locals 1
    .param p1, "shareObjStr"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->doShare(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->startRecording(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public startRecordingPron(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0, p1}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->startRecordingPron(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/jsscope/JsScope;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/webview/base/callback/BridgeCallback;->stopRecording()V

    .line 107
    :cond_0
    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
