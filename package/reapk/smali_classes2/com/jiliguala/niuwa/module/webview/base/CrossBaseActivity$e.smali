.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;
.super Lorg/xwalk/core/XWalkUIClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkView;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "client"    # Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkUIClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 395
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;->a:Ljava/lang/ref/WeakReference;

    .line 396
    return-void
.end method


# virtual methods
.method public onReceivedTitle(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkUIClient;->onReceivedTitle(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onReceivedTitle(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method
