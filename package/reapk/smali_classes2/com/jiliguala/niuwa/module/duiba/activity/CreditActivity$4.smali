.class Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 291
    .local v1, "value":I
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 293
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$200(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 282
    .local v0, "currentValue":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$000(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 283
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->access$100(Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;)V

    .line 284
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 303
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    :goto_0
    return v2

    .line 305
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 307
    const-string v3, "file:///android_asset/refresh"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    if-eqz p1, :cond_1

    .line 310
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->request()V

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    .local v0, "jlglUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "scheme":Ljava/lang/String;
    const-string v3, "jlgl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-static {v3, p2}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity$4;->a:Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;

    invoke-virtual {v2, p1, p2}, Lcom/jiliguala/niuwa/module/duiba/activity/CreditActivity;->shouldOverrideUrlByDuiba(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
