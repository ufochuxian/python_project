.class public final Lcom/youzan/androidsdk/basic/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "weixin"

.field private static final b:Ljava/lang/String; = "alipays"

.field private static final c:Ljava/lang/String; = "mqqwpa"

.field private static final d:Ljava/lang/String; = "sms"

.field private static final e:Ljava/lang/String; = "tel"

.field private static final f:Ljava/lang/String; = "mailto"

.field private static final g:Ljava/lang/String; = "geo"

.field private static final h:Ljava/lang/String; = "\u7f51\u9875\u8bf7\u6c42\u6253\u5f00\u5e94\u7528"

.field private static final i:Ljava/lang/String; = "\u6253\u5f00"

.field private static final j:Ljava/lang/String; = "\u7cfb\u7edf\u672a\u5b89\u88c5\u76f8\u5e94\u5e94\u7528"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6253\u5f00"

    new-instance v2, Lcom/youzan/androidsdk/basic/a/d$1;

    invoke-direct {v2, p1, p0}, Lcom/youzan/androidsdk/basic/a/d$1;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youzan/androidsdk/YouzanException;
        }
    .end annotation

    .prologue
    .line 48
    const/high16 v1, 0x10800000

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Lcom/youzan/androidsdk/YouzanException;

    const-string v2, "\u7cfb\u7edf\u672a\u5b89\u88c5\u76f8\u5e94\u5e94\u7528"

    invoke-direct {v1, v2}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/youzan/androidsdk/basic/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    .line 80
    :cond_1
    const-string v1, "\u7f51\u9875\u8bf7\u6c42\u6253\u5f00\u5e94\u7528"

    invoke-static {p0, p1, v1}, Lcom/youzan/androidsdk/basic/a/d;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/youzan/androidsdk/YouzanException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 35
    .local v1, "target":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 36
    move-object v1, p1

    .line 39
    :cond_0
    const/high16 v2, 0x20000000

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/youzan/androidsdk/YouzanException;

    const-string v3, "\u7cfb\u7edf\u672a\u5b89\u88c5\u76f8\u5e94\u5e94\u7528"

    invoke-direct {v2, v3}, Lcom/youzan/androidsdk/YouzanException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 56
    const-string v0, "sms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tel"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mailto"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geo"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/youzan/androidsdk/basic/a/d;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 107
    :goto_0
    return v4

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 98
    .local v2, "intent":Landroid/content/Intent;
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 99
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    invoke-static {v2, v4}, Lcom/youzan/androidsdk/basic/a/d;->a(Landroid/content/Intent;Landroid/app/Activity;)Z

    move-result v4

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {v2, p0}, Lcom/youzan/androidsdk/basic/a/d;->a(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/youzan/androidsdk/YouzanException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    move v4, v5

    .line 107
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Lcom/youzan/androidsdk/YouzanException;
    invoke-virtual {v1}, Lcom/youzan/androidsdk/YouzanException;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 105
    .end local v1    # "e":Lcom/youzan/androidsdk/YouzanException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 63
    const-string v0, "weixin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alipays"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mqqwpa"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
