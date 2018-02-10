.class Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;
.super Lorg/xwalk/core/XWalkResourceClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/jiliguala/niuwa/common/util/xutils/c;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkView;Landroid/content/Context;Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "client"    # Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkResourceClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 411
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->c:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 415
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->a:Ljava/lang/ref/WeakReference;

    .line 416
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    .line 417
    return-void
.end method


# virtual methods
.method public onLoadFinished(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkResourceClient;->onLoadFinished(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onLoadFinished(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkResourceClient;->onLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;

    invoke-interface {v0, p2}, Lcom/jiliguala/niuwa/module/webview/base/callback/WebActionClient;->onLoadStarted(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jlgl://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->c:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 454
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/webview/base/CrossBaseActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 449
    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
