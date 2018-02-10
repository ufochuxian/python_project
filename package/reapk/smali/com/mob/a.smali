.class public Lcom/mob/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/c;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mob/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 22
    const-class v0, Lcom/mob/a;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/mob/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/mob/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/mob/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/mob/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mob/a;->a:Landroid/content/Context;

    .line 32
    invoke-static {p1, p2}, Lcom/mob/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/mob/b;->a()Lcom/mob/tools/log/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    const-class v0, Lcom/mob/tools/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/a/c;->a()V

    .line 38
    invoke-static {}, Lcom/mob/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :cond_0
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :try_start_0
    sget-object v1, Lcom/mob/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/mob/a;->a:Landroid/content/Context;

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 48
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    .line 52
    const-string v1, "Mob-AppKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 56
    const-string v1, "Mob-AppSecret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 60
    const-string v1, "Mob-AppSeret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_3
    sput-object p0, Lcom/mob/a;->b:Ljava/lang/String;

    .line 64
    sput-object p1, Lcom/mob/a;->c:Ljava/lang/String;

    .line 65
    return-void

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/mob/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/mob/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/mob/a$1;

    invoke-direct {v0}, Lcom/mob/a$1;-><init>()V

    .line 75
    invoke-virtual {v0}, Lcom/mob/a$1;->start()V

    .line 76
    return-void
.end method
