.class public final Lcom/bumptech/glide/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/load/b;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/bumptech/glide/h/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/b;

    .line 26
    .local v1, "result":Lcom/bumptech/glide/load/b;
    if-nez v1, :cond_0

    .line 27
    invoke-static {p0}, Lcom/bumptech/glide/h/a;->b(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v2

    .line 28
    .local v2, "toAdd":Lcom/bumptech/glide/load/b;
    sget-object v3, Lcom/bumptech/glide/h/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/b;
    check-cast v1, Lcom/bumptech/glide/load/b;

    .line 30
    .restart local v1    # "result":Lcom/bumptech/glide/load/b;
    if-nez v1, :cond_0

    .line 31
    move-object v1, v2

    .line 35
    .end local v2    # "toAdd":Lcom/bumptech/glide/load/b;
    :cond_0
    return-object v1
.end method

.method static a()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/bumptech/glide/h/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/bumptech/glide/load/b;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    if-eqz v1, :cond_0

    .line 53
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "versionCode":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/bumptech/glide/h/d;

    invoke-direct {v3, v2}, Lcom/bumptech/glide/h/d;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 47
    .end local v2    # "versionCode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "versionCode":Ljava/lang/String;
    goto :goto_1
.end method
