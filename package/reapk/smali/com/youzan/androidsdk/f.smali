.class public Lcom/youzan/androidsdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youzan/androidsdk/f;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/youzan/androidsdk/a/b;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/youzan/androidsdk/g;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Lcom/youzan/androidsdk/g;

    .prologue
    .line 36
    invoke-static {p2}, Lcom/youzan/androidsdk/a/b;->a(Lcom/youzan/androidsdk/g;)V

    .line 37
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/youzan/androidsdk/f;->a:Z

    .line 23
    invoke-static {p1, p2, v0}, Lcom/youzan/androidsdk/e/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/e/c;->b(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 28
    invoke-static {p1}, Lcom/youzan/androidsdk/d;->a(Z)V

    .line 29
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/youzan/androidsdk/f;->a:Z

    return v0
.end method
