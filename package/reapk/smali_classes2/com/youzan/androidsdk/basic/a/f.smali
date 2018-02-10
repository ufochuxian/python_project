.class public final Lcom/youzan/androidsdk/basic/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "redirect_uri"

.field private static final b:Ljava/lang/String; = "koudaitong.com"

.field private static final c:Ljava/lang/String; = "youzan.com"

.field private static final d:Ljava/lang/String; = "kdt.im"

.field private static final e:Ljava/lang/String; = "database"

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tenpay.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alipay.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qq.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/youzan/androidsdk/basic/a/f;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "redirect_uri"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 7
    .param p0, "webView"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 44
    .local v3, "settings":Landroid/webkit/WebSettings;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 48
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 51
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 52
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "database"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 59
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 60
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 64
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "settings":Landroid/webkit/WebSettings;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "WARNING: init WebView Failed"

    invoke-static {v4}, Lcom/youzan/androidsdk/d;->c(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p1, "UA"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 105
    if-nez p2, :cond_0

    .line 106
    const-string p2, ""

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 109
    .local v0, "settings":Landroid/webkit/WebSettings;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 114
    .end local v0    # "settings":Landroid/webkit/WebSettings;
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v1, "UserAgent Is Null"

    invoke-static {v1}, Lcom/youzan/androidsdk/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "debug"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 164
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 167
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "host":Ljava/lang/String;
    invoke-static {v1}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    invoke-static {v0}, Lcom/youzan/androidsdk/basic/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "web"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 80
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 81
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    sget-object v3, Lcom/youzan/androidsdk/basic/a/f;->f:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 202
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 5
    .param p0, "webView"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 126
    .local v2, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 127
    .local v0, "curIndex":I
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 128
    .local v3, "preIndex":I
    :goto_0
    if-ltz v3, :cond_0

    .line 129
    invoke-virtual {v2, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 130
    .local v1, "item":Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 133
    .end local v0    # "curIndex":I
    .end local v1    # "item":Landroid/webkit/WebHistoryItem;
    .end local v2    # "list":Landroid/webkit/WebBackForwardList;
    .end local v3    # "preIndex":I
    :cond_0
    return-object v4

    .line 127
    .restart local v0    # "curIndex":I
    .restart local v2    # "list":Landroid/webkit/WebBackForwardList;
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 218
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youzan/androidsdk/basic/a/f;->d(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/webkit/WebView;)Z
    .locals 6
    .param p0, "webView"    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 143
    if-eqz p0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 145
    .local v2, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 146
    .local v0, "curIndex":I
    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    .line 147
    .local v3, "preIndex":I
    :goto_0
    if-ltz v3, :cond_1

    .line 148
    invoke-virtual {v2, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 149
    .local v1, "item":Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youzan/androidsdk/basic/a/f;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 152
    .end local v0    # "curIndex":I
    .end local v1    # "item":Landroid/webkit/WebHistoryItem;
    .end local v2    # "list":Landroid/webkit/WebBackForwardList;
    .end local v3    # "preIndex":I
    :cond_1
    return v4

    .line 146
    .restart local v0    # "curIndex":I
    .restart local v2    # "list":Landroid/webkit/WebBackForwardList;
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "youzan.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "koudaitong.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kdt.im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
