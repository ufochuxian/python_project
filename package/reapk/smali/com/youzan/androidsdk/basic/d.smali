.class public Lcom/youzan/androidsdk/basic/d;
.super Lcom/youzan/androidsdk/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youzan/androidsdk/f;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;)V

    .line 34
    invoke-static {p1}, Lcom/youzan/androidsdk/basic/a/e;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 40
    invoke-static {p1, p2}, Lcom/youzan/androidsdk/basic/c;->a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V

    .line 41
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/youzan/androidsdk/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/youzan/androidsdk/f;->a(Z)V

    .line 28
    invoke-static {p1}, Lcom/youzan/androidsdk/basic/a/f;->a(Z)V

    .line 29
    return-void
.end method
