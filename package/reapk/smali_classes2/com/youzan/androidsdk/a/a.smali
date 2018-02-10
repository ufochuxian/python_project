.class public Lcom/youzan/androidsdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "shop.sid"

.field private static final b:Ljava/lang/String; = "shop.name"

.field private static final c:Ljava/lang/String; = "shop.logo"

.field private static final d:Ljava/lang/String; = "shop.url"

.field private static final e:Ljava/lang/String; = "shop.cert_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.sid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 62
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.cert_type"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lcom/youzan/androidsdk/e/c;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {v0}, Lcom/youzan/androidsdk/a/a;->a(Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/youzan/androidsdk/a/a;->b(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/youzan/androidsdk/a/a;->c(Ljava/lang/String;)V

    .line 74
    invoke-static {v0}, Lcom/youzan/androidsdk/a/a;->d(Ljava/lang/String;)V

    .line 75
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/youzan/androidsdk/a/a;->a(I)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.sid"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.name"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.logo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.logo"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.url"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.url"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static e()I
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "shop.cert_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/youzan/androidsdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youzan/androidsdk/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
