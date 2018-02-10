.class public Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;
.super Lcom/youzan/androidsdk/basic/web/plugin/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomChromeClient"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/plugin/b;-><init>()V

    .line 656
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    .line 657
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 663
    invoke-super {p0, p1, p2, p3, p4}, Lcom/youzan/androidsdk/basic/web/plugin/b;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 677
    invoke-super/range {p0 .. p5}, Lcom/youzan/androidsdk/basic/web/plugin/b;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 668
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/b;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 671
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/b;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local_error.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5471\u5e97"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1100(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1202(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    const-string v2, "File Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 711
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 4
    .param p1, "uploadMsg"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1202(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    const-string v2, "File Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 722
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v1, p1}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1202(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$CustomChromeClient;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    const-string v2, "File Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 733
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
