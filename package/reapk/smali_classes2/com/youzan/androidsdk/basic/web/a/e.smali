.class public Lcom/youzan/androidsdk/basic/web/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "javascript:var isReadyForYouZanJSBridge=true;"

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/youzan/androidsdk/basic/web/a/e;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "web"    # Landroid/webkit/WebView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "keep"    # Z

    .prologue
    .line 20
    sget-object v0, Lcom/youzan/androidsdk/basic/web/a/e;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/youzan/androidsdk/basic/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    if-eqz p2, :cond_2

    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    sput-object p1, Lcom/youzan/androidsdk/basic/web/a/e;->b:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/youzan/androidsdk/basic/web/a/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/youzan/androidsdk/basic/web/a/c;

    invoke-direct {v0}, Lcom/youzan/androidsdk/basic/web/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/youzan/androidsdk/basic/web/a/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youzan/androidsdk/basic/web/a/e;->c:Ljava/lang/String;

    .line 26
    :cond_0
    sget-object v0, Lcom/youzan/androidsdk/basic/web/a/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    const-string v0, "javascript:var isReadyForYouZanJSBridge=true;"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    :cond_1
    return-void

    .line 21
    .restart local p1    # "url":Ljava/lang/String;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method
