.class public final Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "image/*"


# instance fields
.field public final a:Ljava/lang/Integer;

.field private final c:Lcom/youzan/androidsdk/basic/web/a/b;

.field private final d:Landroid/webkit/WebView;

.field private e:Landroid/webkit/WebChromeClient;

.field private f:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->d:Landroid/webkit/WebView;

    .line 46
    new-instance v0, Lcom/youzan/androidsdk/basic/web/a/b;

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->d:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/youzan/androidsdk/basic/web/a/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->c:Lcom/youzan/androidsdk/basic/web/a/b;

    .line 47
    invoke-static {}, Lcom/youzan/androidsdk/e/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method private a(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "msg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->f:Landroid/webkit/ValueCallback;

    .line 349
    invoke-direct {p0, p2}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Lcom/youzan/androidsdk/basic/web/a/f;

    invoke-direct {v0, p1}, Lcom/youzan/androidsdk/basic/web/a/f;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "parser":Lcom/youzan/androidsdk/basic/web/a/f;
    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/web/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->c:Lcom/youzan/androidsdk/basic/web/a/b;

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/web/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/web/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youzan/androidsdk/basic/web/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "msg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->g:Landroid/webkit/ValueCallback;

    .line 357
    invoke-direct {p0, p2}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "acceptType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string p1, "image/*"

    .line 369
    :cond_0
    new-instance v0, Lcom/youzan/androidsdk/b/b$a;

    invoke-direct {v0}, Lcom/youzan/androidsdk/b/b$a;-><init>()V

    .line 370
    .local v0, "meta":Lcom/youzan/androidsdk/b/b$a;
    iput-object p1, v0, Lcom/youzan/androidsdk/b/b$a;->b:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/youzan/androidsdk/b/b$a;->a:I

    .line 372
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->c:Lcom/youzan/androidsdk/basic/web/a/b;

    const-string v2, "showFileChooser"

    invoke-virtual {v0}, Lcom/youzan/androidsdk/b/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youzan/androidsdk/basic/web/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 377
    :try_start_0
    iget-object v4, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->f:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_2

    .line 378
    if-nez p1, :cond_1

    move-object v1, v3

    .line 379
    .local v1, "result":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->f:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v1    # "result":Landroid/net/Uri;
    :cond_0
    :goto_1
    iput-object v3, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->g:Landroid/webkit/ValueCallback;

    .line 388
    iput-object v3, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->f:Landroid/webkit/ValueCallback;

    .line 389
    return-void

    .line 378
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_2
    iget-object v4, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->g:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_0

    .line 381
    if-nez p1, :cond_3

    move-object v2, v3

    .line 382
    .local v2, "results":[Landroid/net/Uri;
    :goto_2
    iget-object v4, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->g:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 384
    .end local v2    # "results":[Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    new-array v2, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public a(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "delegate"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 55
    instance-of v0, p1, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    .line 58
    :cond_0
    return-void
.end method

.method public a(Lcom/youzan/androidsdk/b/f;)V
    .locals 1
    .param p1, "subscribe"    # Lcom/youzan/androidsdk/b/f;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->c:Lcom/youzan/androidsdk/basic/web/a/b;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/a/b;->a(Lcom/youzan/androidsdk/b/f;)Lcom/youzan/androidsdk/b/c;

    .line 52
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 110
    const-wide/32 v2, 0x500000

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 111
    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_0

    .line 112
    iget-object v3, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 128
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 162
    invoke-direct {p0, p3}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "{\"code\": 200, \"result\":\"\"}"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    goto :goto_0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/webkit/PermissionRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 211
    const/16 v0, 0x19

    if-le p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/youzan/androidsdk/basic/web/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 221
    :goto_1
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/youzan/androidsdk/basic/web/a/e;->a()V

    goto :goto_0

    .line 219
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_1
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 7
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "types":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 338
    .local v0, "type":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->b(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v2

    .line 341
    :goto_1
    return v2

    .line 337
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    .restart local v0    # "type":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

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
    .line 320
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "openFileChooser"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 323
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 6
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-direct {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "openFileChooser"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 309
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 310
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

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
    .line 292
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-direct {p0, p1, p2}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "openFileChooser"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 295
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->e:Landroid/webkit/WebChromeClient;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 296
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
