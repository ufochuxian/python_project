.class public final Lcom/youzan/androidsdk/basic/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/youzan/androidsdk/basic/a/a$a;->b(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/youzan/androidsdk/basic/a/a$a;->a()V

    .line 26
    invoke-static {p0}, Lcom/youzan/androidsdk/a/b;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/youzan/androidsdk/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youzan/androidsdk/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/youzan/androidsdk/basic/a/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/youzan/androidsdk/a/b;->a(Lcom/youzan/androidsdk/g;)V

    .line 21
    return-void
.end method
