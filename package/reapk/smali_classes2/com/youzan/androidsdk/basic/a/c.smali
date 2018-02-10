.class public final Lcom/youzan/androidsdk/basic/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "javascript:window.YouzanJSBridge.trigger(\'share\')"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    const-string v0, "javascript:window.YouzanJSBridge.trigger(\'share\')"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 17
    :goto_0
    return-void

    .line 15
    :cond_0
    const-string v0, "WebView Is Null On sharePage"

    invoke-static {v0}, Lcom/youzan/androidsdk/d;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
