.class public Lcom/android/volley/toolbox/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/j;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;Lcom/android/volley/toolbox/i;)Lcom/android/volley/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/android/volley/j;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxDiskCacheBytes"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;Lcom/android/volley/toolbox/i;I)Lcom/android/volley/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/volley/toolbox/i;)Lcom/android/volley/j;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/i;

    .prologue
    .line 103
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;Lcom/android/volley/toolbox/i;I)Lcom/android/volley/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/volley/toolbox/i;I)Lcom/android/volley/j;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/i;
    .param p2, "maxDiskCacheBytes"    # I

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v0, "cacheDir":Ljava/io/File;
    const-string v5, "volley/0"

    .line 51
    .local v5, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 57
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 58
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    .line 59
    new-instance p1, Lcom/android/volley/toolbox/j;

    .end local p1    # "stack":Lcom/android/volley/toolbox/i;
    invoke-direct {p1}, Lcom/android/volley/toolbox/j;-><init>()V

    .line 67
    .restart local p1    # "stack":Lcom/android/volley/toolbox/i;
    :cond_0
    :goto_1
    new-instance v2, Lcom/android/volley/toolbox/c;

    invoke-direct {v2, p1}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/i;)V

    .line 70
    .local v2, "network":Lcom/android/volley/g;
    const/4 v6, -0x1

    if-gt p2, v6, :cond_2

    .line 72
    new-instance v4, Lcom/android/volley/j;

    new-instance v6, Lcom/android/volley/toolbox/f;

    invoke-direct {v6, v0}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/android/volley/j;-><init>(Lcom/android/volley/b;Lcom/android/volley/g;)V

    .line 78
    .local v4, "queue":Lcom/android/volley/j;
    :goto_2
    invoke-virtual {v4}, Lcom/android/volley/j;->a()V

    .line 80
    return-object v4

    .line 63
    .end local v2    # "network":Lcom/android/volley/g;
    .end local v4    # "queue":Lcom/android/volley/j;
    :cond_1
    new-instance p1, Lcom/android/volley/toolbox/g;

    .end local p1    # "stack":Lcom/android/volley/toolbox/i;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/android/volley/toolbox/g;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p1    # "stack":Lcom/android/volley/toolbox/i;
    goto :goto_1

    .line 75
    .restart local v2    # "network":Lcom/android/volley/g;
    :cond_2
    new-instance v4, Lcom/android/volley/j;

    new-instance v6, Lcom/android/volley/toolbox/f;

    invoke-direct {v6, v0, p2}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;I)V

    invoke-direct {v4, v6, v2}, Lcom/android/volley/j;-><init>(Lcom/android/volley/b;Lcom/android/volley/g;)V

    .restart local v4    # "queue":Lcom/android/volley/j;
    goto :goto_2

    .line 54
    .end local v2    # "network":Lcom/android/volley/g;
    .end local v4    # "queue":Lcom/android/volley/j;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
