.class public Lcom/ut/mini/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-static {}, Lcom/ut/mini/b/a/c;->a()Lcom/ut/mini/b/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static a(Lcom/ut/mini/b/a/b;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/b/a/b;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-static {}, Lcom/ut/mini/b/a/c;->a()Lcom/ut/mini/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/b/a/c;->a(Lcom/ut/mini/b/a/b;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1
    .param p0, "aApplicationInstance"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    invoke-static {}, Lcom/ut/mini/b/a/c;->a()Lcom/ut/mini/b/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static b(Lcom/ut/mini/b/a/b;)V
    .locals 1
    .param p0, "aCallbacks"    # Lcom/ut/mini/b/a/b;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Lcom/ut/mini/b/a/c;->a()Lcom/ut/mini/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/b/a/c;->b(Lcom/ut/mini/b/a/b;)V

    .line 24
    :cond_0
    return-void
.end method
