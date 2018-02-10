.class public Lcom/youzan/androidsdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "token.access_token"

.field private static final b:Ljava/lang/String; = "token.cookie_key"

.field private static final c:Ljava/lang/String; = "token.cookie_value"


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
    .line 37
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.access_token"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p0}, Lcom/youzan/androidsdk/e/c;->a(Landroid/content/Context;)V

    .line 31
    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->a(Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->b(Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->c(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static a(Lcom/youzan/androidsdk/g;)V
    .locals 1
    .param p0, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/youzan/androidsdk/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/youzan/androidsdk/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/youzan/androidsdk/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youzan/androidsdk/a/b;->c(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.access_token"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.cookie_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.cookie_key"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.cookie_value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "token.cookie_value"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
