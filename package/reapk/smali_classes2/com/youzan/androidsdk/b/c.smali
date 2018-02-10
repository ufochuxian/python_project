.class public abstract Lcom/youzan/androidsdk/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/b/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/youzan/androidsdk/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/youzan/androidsdk/b/h;->a()Lcom/youzan/androidsdk/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youzan/androidsdk/b/h;->b()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/youzan/androidsdk/b/f;)Lcom/youzan/androidsdk/b/c;
    .locals 1
    .param p1, "event"    # Lcom/youzan/androidsdk/b/f;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/youzan/androidsdk/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "Event method is null"

    invoke-static {v0}, Lcom/youzan/androidsdk/d;->a(Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-object p0

    .line 46
    :cond_0
    invoke-static {}, Lcom/youzan/androidsdk/b/h;->a()Lcom/youzan/androidsdk/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/b/h;->a(Lcom/youzan/androidsdk/b/f;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/youzan/androidsdk/b/f;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/youzan/androidsdk/b/h;->a()Lcom/youzan/androidsdk/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youzan/androidsdk/b/h;->a(Ljava/lang/String;)Lcom/youzan/androidsdk/b/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/youzan/androidsdk/b/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youzan/androidsdk/b/c;->a:Landroid/os/Handler;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/youzan/androidsdk/b/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_1
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method
