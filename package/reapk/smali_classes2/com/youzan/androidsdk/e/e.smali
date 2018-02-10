.class public final Lcom/youzan/androidsdk/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "kdtUnion_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {}, Lcom/youzan/androidsdk/e/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "VMCode":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 37
    .local v2, "buildCode":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 38
    .local v3, "deviceModel":Ljava/lang/String;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 39
    .local v6, "systemVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/youzan/androidsdk/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "appInfo":Ljava/lang/String;
    const-string v4, "Linux"

    .line 41
    .local v4, "kernelName":Ljava/lang/String;
    const-string v5, "Android"

    .line 42
    .local v5, "systemName":Ljava/lang/String;
    const-string v7, "Dalvik/%s (%s; %s %s; %s Build/%s; %s)"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    const-string v10, "Linux"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "Android"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v2, v8, v9

    const/4 v9, 0x6

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "youzanUA"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/youzan/androidsdk/e/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "systemUA":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "autoPrefix"    # Z

    .prologue
    .line 15
    if-eqz p1, :cond_1

    .line 16
    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kdtUnion_"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .end local p1    # "clientId":Ljava/lang/String;
    :cond_0
    :goto_0
    sput-object p1, Lcom/youzan/androidsdk/e/e;->a:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/youzan/androidsdk/e/e;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/youzan/androidsdk/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youzan/androidsdk/e/e;->b:Ljava/lang/String;

    .line 21
    :cond_1
    return-void

    .line 17
    .restart local p1    # "clientId":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kdtUnion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
