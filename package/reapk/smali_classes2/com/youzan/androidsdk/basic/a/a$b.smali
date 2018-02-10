.class public Lcom/youzan/androidsdk/basic/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/basic/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "alipay_installed"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "KDTSESSIONID"

    invoke-static {v0, p1}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    invoke-static {p1, p2}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 39
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hide"    # Z

    .prologue
    .line 47
    const-string v1, "hide_app_topbar"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 48
    return-void

    .line 47
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "youzan_user_id"

    invoke-static {v0, p1}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/basic/a/a$a;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 69
    return-void
.end method
