.class public Lcom/youzan/androidsdk/basic/web/plugin/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static a:I = 0x0

.field private static final c:J = 0xbb8L


# instance fields
.field private b:J

.field private final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/webkit/WebViewClient;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, -0x9

    sput v0, Lcom/youzan/androidsdk/basic/web/plugin/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->b:J

    .line 55
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->g:Z

    .line 73
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Landroid/app/Activity;

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->f:Ljava/lang/ref/WeakReference;

    .line 77
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Lcom/youzan/androidsdk/basic/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    iget-object v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    .local v0, "now":J
    iget-wide v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->b:J

    .line 266
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youzan/androidsdk/basic/a/e;->a(Landroid/content/Context;)V

    .line 267
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "delegate"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 80
    instance-of v0, p1, Lcom/youzan/androidsdk/basic/web/plugin/a;

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Landroid/webkit/WebView;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/plugin/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/youzan/androidsdk/basic/web/plugin/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x1

    .line 128
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final e()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->g:Z

    if-eqz v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->g:Z

    .line 192
    const-string v0, "Inject on page finished"

    invoke-static {v0}, Lcom/youzan/androidsdk/d;->a(Ljava/lang/String;)V

    .line 193
    invoke-static {p1, p2, v1}, Lcom/youzan/androidsdk/basic/web/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->h:Ljava/lang/String;

    .line 206
    :cond_0
    invoke-direct {p0, p2}, Lcom/youzan/androidsdk/basic/web/plugin/a;->a(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->g:Z

    .line 208
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 211
    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 229
    sget v0, Lcom/youzan/androidsdk/basic/web/plugin/a;->a:I

    if-ne p2, v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/a;->b(Landroid/webkit/WebView;)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 248
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    sget v1, Lcom/youzan/androidsdk/basic/web/plugin/a;->a:I

    if-ne v0, v1, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/youzan/androidsdk/basic/web/plugin/a;->b(Landroid/webkit/WebView;)V

    .line 259
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 311
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 352
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/support/annotation/ae;
        b = 0x18
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    .line 362
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 363
    .local v3, "stack":Landroid/webkit/WebBackForwardList;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 364
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 366
    .local v1, "item":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 382
    .end local v1    # "item":Landroid/webkit/WebHistoryItem;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 372
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youzan/androidsdk/basic/a/d;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 373
    invoke-static {v0, v4}, Lcom/youzan/androidsdk/basic/a/d;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youzan/androidsdk/basic/a/f;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 381
    iget-object v8, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v8, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v7

    .line 382
    .local v2, "result":Z
    :goto_1
    if-nez v2, :cond_3

    invoke-static {v0, v4}, Lcom/youzan/androidsdk/basic/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_3
    move v6, v7

    goto :goto_0

    .end local v2    # "result":Z
    :cond_4
    move v2, v6

    .line 381
    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/youzan/androidsdk/basic/web/a/e;->a()V

    .line 395
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 396
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 399
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 400
    .local v3, "stack":Landroid/webkit/WebBackForwardList;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 401
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 402
    .local v1, "item":Landroid/webkit/WebHistoryItem;
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 420
    .end local v1    # "item":Landroid/webkit/WebHistoryItem;
    .end local v3    # "stack":Landroid/webkit/WebBackForwardList;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v5

    .line 408
    .restart local v3    # "stack":Landroid/webkit/WebBackForwardList;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youzan/androidsdk/basic/a/d;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 409
    invoke-static {v0, v4}, Lcom/youzan/androidsdk/basic/a/d;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youzan/androidsdk/basic/a/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 417
    iget-object v7, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/youzan/androidsdk/basic/web/plugin/a;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v7, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v6

    .line 418
    .local v2, "result":Z
    :goto_1
    if-nez v2, :cond_3

    invoke-static {v0, v4}, Lcom/youzan/androidsdk/basic/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0

    .end local v2    # "result":Z
    :cond_4
    move v2, v5

    .line 417
    goto :goto_1

    .line 420
    .end local v3    # "stack":Landroid/webkit/WebBackForwardList;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method
