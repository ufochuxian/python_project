.class public abstract Lcom/youzan/androidsdk/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "getUserInfo"

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "{\"need_login\":true}"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/youzan/androidsdk/b/a;->a(Landroid/content/Context;Z)V

    .line 44
    return-void
.end method

.method public abstract a(Landroid/content/Context;Z)V
.end method
