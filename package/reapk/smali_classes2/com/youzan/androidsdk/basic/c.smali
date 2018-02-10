.class public final Lcom/youzan/androidsdk/basic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "http"

.field private static final b:Ljava/lang/String; = "https"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/youzan/androidsdk/basic/a/a$a;->a()V

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/a$a;->b(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/youzan/androidsdk/basic/a/e;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/youzan/androidsdk/e/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->a(Landroid/webkit/WebView;)V

    .line 44
    return-void
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 98
    const v0, 0x9c49

    if-eq p0, v0, :cond_0

    const v0, 0x9c4a

    if-eq p0, v0, :cond_0

    const v0, 0xa410

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/d;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/youzan/androidsdk/e/b;->a()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/youzan/androidsdk/e/b;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/f;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 129
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youzan/androidsdk/basic/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "https"

    .line 131
    .local v1, "fixedScheme":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 132
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "fixedScheme":Ljava/lang/String;
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 130
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "http"

    goto :goto_0
.end method
