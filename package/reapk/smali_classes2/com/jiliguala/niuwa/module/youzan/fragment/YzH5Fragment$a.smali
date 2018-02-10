.class final Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;
.super Lcom/youzan/androidsdk/basic/web/plugin/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/jiliguala/niuwa/common/util/xutils/c;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/youzan/androidsdk/basic/web/plugin/c;-><init>()V

    .line 542
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 546
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 619
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$800(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$800(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$900(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1000(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$1000(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$200(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/youzan/androidsdk/basic/YouzanBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 627
    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 607
    invoke-super {p0, p1, p2, p3}, Lcom/youzan/androidsdk/basic/web/plugin/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 608
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$800(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$800(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/widget/circleprogressbar/CircleProgressBar;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$900(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Lcom/youzan/androidsdk/basic/web/plugin/c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    if-eqz p1, :cond_0

    .line 647
    const-string v0, "file:///android_asset/local_error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 551
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/c;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 553
    .local v1, "isDeal":Z
    if-nez v1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 554
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 555
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$400(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v4, "-relay-"

    invoke-static {v2, v4, p2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 560
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 602
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 568
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "jlgl://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->b:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 570
    goto :goto_0

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 573
    goto :goto_0

    .line 578
    :cond_2
    const-string v2, "file:///android_asset/refresh"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    if-eqz p1, :cond_3

    .line 581
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$500(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;)V

    move v2, v3

    .line 582
    goto :goto_0

    .line 586
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 587
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v2, p2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$600(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-static {v2, p2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->access$700(Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;Ljava/lang/String;)V

    .line 592
    :cond_4
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 593
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 594
    const/4 v1, 0x1

    .line 595
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u7981\u6b62\u6253\u7535\u8bdd"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    move v2, v1

    .line 602
    goto/16 :goto_0

    .line 596
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 597
    const/4 v1, 0x1

    .line 598
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/youzan/fragment/YzH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "\u7981\u6b62\u53d1\u90ae\u4ef6"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
