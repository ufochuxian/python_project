.class public Lcom/youzan/androidsdk/basic/web/a/b;
.super Lcom/youzan/androidsdk/b/c;
.source "SourceFile"


# instance fields
.field private final a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youzan/androidsdk/b/c;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/a/b;->a:Landroid/webkit/WebView;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/youzan/androidsdk/basic/web/a/b;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/b/f;

    move-result-object v0

    .line 24
    .local v0, "action":Lcom/youzan/androidsdk/b/f;
    if-eqz v0, :cond_2

    .line 25
    const-string v4, "getUserInfo"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    const-string p2, "{\"need_login\":true}"

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/youzan/androidsdk/basic/web/a/b;->a:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 29
    .local v2, "context":Landroid/content/Context;
    instance-of v4, v2, Landroid/app/Activity;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 30
    check-cast v1, Landroid/app/Activity;

    .line 31
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 32
    new-instance v4, Lcom/youzan/androidsdk/b/c$a;

    invoke-direct {v4, v0, v2, p2}, Lcom/youzan/androidsdk/b/c$a;-><init>(Lcom/youzan/androidsdk/b/f;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/youzan/androidsdk/basic/web/a/b;->a(Ljava/lang/Runnable;)V

    .line 43
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return v3

    .line 37
    :cond_2
    const-string v4, "webReady"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "getUserInfo"

    .line 38
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "returnShareData"

    .line 39
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 43
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
