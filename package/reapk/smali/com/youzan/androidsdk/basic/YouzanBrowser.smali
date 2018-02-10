.class public Lcom/youzan/androidsdk/basic/YouzanBrowser;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/ui/YouzanClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/basic/YouzanBrowser$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x7d0


# instance fields
.field private volatile b:Z

.field private volatile c:Z

.field private d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

.field private e:Lcom/youzan/androidsdk/basic/web/plugin/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 55
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "privateBrowsing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 47
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    .line 48
    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/youzan/androidsdk/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should init YouzanSDK at first!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/youzan/androidsdk/e/c;->a(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0, p1, v1, v1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->a(Landroid/content/Context;Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;Lcom/youzan/androidsdk/basic/web/plugin/a;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lcom/youzan/androidsdk/basic/YouzanBrowser$1;

    invoke-direct {v0, p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser$1;-><init>(Lcom/youzan/androidsdk/basic/YouzanBrowser;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/youzan/androidsdk/basic/YouzanBrowser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youzan/androidsdk/basic/YouzanBrowser;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youzan/androidsdk/basic/a/a$b;->a(Landroid/content/Context;Z)V

    .line 99
    invoke-static {p1}, Lcom/youzan/androidsdk/basic/a/a$b;->a(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/webkit/WebView;)V

    .line 101
    sget-object v0, Lcom/youzan/androidsdk/e/e;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->b(Landroid/webkit/WebView;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;Lcom/youzan/androidsdk/basic/web/plugin/a;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chromeClientWrapper"    # Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;
    .param p3, "webClientWrapper"    # Lcom/youzan/androidsdk/basic/web/plugin/a;

    .prologue
    .line 112
    if-eqz p2, :cond_0

    .line 113
    iput-object p2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    .line 117
    :goto_0
    if-eqz p3, :cond_1

    .line 118
    iput-object p3, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    .line 123
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setWebChromeClient"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebChromeClient;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    .local v0, "chromeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setWebViewClient"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebViewClient;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 128
    .local v1, "webMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "chromeMethod":Ljava/lang/reflect/Method;
    .end local v1    # "webMethod":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 115
    :cond_0
    new-instance v2, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    invoke-direct {v2, p0}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    goto :goto_0

    .line 120
    :cond_1
    new-instance v2, Lcom/youzan/androidsdk/basic/web/plugin/a;

    invoke-direct {v2, p1}, Lcom/youzan/androidsdk/basic/web/plugin/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    goto :goto_1

    .line 130
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "hide"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/youzan/androidsdk/basic/a/a$b;->a(Landroid/content/Context;Z)V

    .line 224
    return-void
.end method

.method public final a(ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->receiveFile(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final pageCanGoBack()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_2

    .line 174
    iget-object v2, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    invoke-virtual {v2}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->d(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->canGoBack()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final pageGoBack()Z
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->b:Z

    if-eqz v0, :cond_2

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    invoke-virtual {v0, p0}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a(Landroid/webkit/WebView;)Z

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->pageCanGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->c(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youzan/androidsdk/basic/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->goBackOrForward(I)V

    .line 162
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->goBack()V

    goto :goto_1
.end method

.method public receiveFile(ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    iget-object v0, v0, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    invoke-virtual {v0, p2}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/content/Intent;)V

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnChooseFileCallback(Lcom/youzan/androidsdk/basic/YouzanBrowser$a;)V
    .locals 2
    .param p1, "listener"    # Lcom/youzan/androidsdk/basic/YouzanBrowser$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    new-instance v1, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;

    invoke-direct {v1, p0, p1}, Lcom/youzan/androidsdk/basic/YouzanBrowser$2;-><init>(Lcom/youzan/androidsdk/basic/YouzanBrowser;Lcom/youzan/androidsdk/basic/YouzanBrowser$a;)V

    invoke-virtual {v0, v1}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Lcom/youzan/androidsdk/b/f;)V

    .line 312
    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/webkit/WebChromeClient;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public final setWebChromeClient(Lcom/youzan/androidsdk/basic/web/plugin/b;)V
    .locals 1
    .param p1, "client"    # Lcom/youzan/androidsdk/basic/web/plugin/b;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Landroid/webkit/WebChromeClient;)V

    .line 209
    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->c:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a(Landroid/webkit/WebViewClient;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public final setWebViewClient(Lcom/youzan/androidsdk/basic/web/plugin/c;)V
    .locals 1
    .param p1, "client"    # Lcom/youzan/androidsdk/basic/web/plugin/c;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->e:Lcom/youzan/androidsdk/basic/web/plugin/a;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a(Landroid/webkit/WebViewClient;)V

    .line 213
    return-void
.end method

.method public final sharePage()V
    .locals 0

    .prologue
    .line 186
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/c;->a(Landroid/webkit/WebView;)V

    .line 187
    return-void
.end method

.method public final subscribe(Lcom/youzan/androidsdk/b/f;)V
    .locals 1
    .param p1, "event"    # Lcom/youzan/androidsdk/b/f;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/YouzanBrowser;->d:Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/ChromeClientWrapper;->a(Lcom/youzan/androidsdk/b/f;)V

    .line 248
    return-void
.end method

.method public sync(Lcom/youzan/androidsdk/g;)V
    .locals 1
    .param p1, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/youzan/androidsdk/basic/a/e;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 253
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/YouzanBrowser;->reload()V

    .line 254
    return-void
.end method
