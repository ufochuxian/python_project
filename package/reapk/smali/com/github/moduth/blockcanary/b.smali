.class public final Lcom/github/moduth/blockcanary/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BlockCanary"

.field private static b:Lcom/github/moduth/blockcanary/b;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private c:Lcom/github/moduth/blockcanary/d;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "File-IO"

    invoke-static {v0}, Lcom/github/moduth/blockcanary/b;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/github/moduth/blockcanary/b;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/b;->d:Z

    .line 42
    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v0

    invoke-static {v0}, Lcom/github/moduth/blockcanary/d;->a(Lcom/github/moduth/blockcanary/c;)V

    .line 43
    invoke-static {}, Lcom/github/moduth/blockcanary/d;->a()Lcom/github/moduth/blockcanary/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    .line 44
    iget-object v0, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/moduth/blockcanary/d;->a(Lcom/github/moduth/blockcanary/e;)V

    .line 45
    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    new-instance v1, Lcom/github/moduth/blockcanary/h;

    invoke-direct {v1}, Lcom/github/moduth/blockcanary/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/moduth/blockcanary/d;->a(Lcom/github/moduth/blockcanary/e;)V

    goto :goto_0
.end method

.method public static a()Lcom/github/moduth/blockcanary/b;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/github/moduth/blockcanary/b;->b:Lcom/github/moduth/blockcanary/b;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/github/moduth/blockcanary/b;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/github/moduth/blockcanary/b;->b:Lcom/github/moduth/blockcanary/b;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/github/moduth/blockcanary/b;

    invoke-direct {v0}, Lcom/github/moduth/blockcanary/b;-><init>()V

    sput-object v0, Lcom/github/moduth/blockcanary/b;->b:Lcom/github/moduth/blockcanary/b;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/github/moduth/blockcanary/b;->b:Lcom/github/moduth/blockcanary/b;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/github/moduth/blockcanary/c;)Lcom/github/moduth/blockcanary/b;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockCanaryContext"    # Lcom/github/moduth/blockcanary/c;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/github/moduth/blockcanary/c;->a(Landroid/content/Context;Lcom/github/moduth/blockcanary/c;)V

    .line 61
    const-class v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/c;->j()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/github/moduth/blockcanary/b;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 62
    invoke-static {}, Lcom/github/moduth/blockcanary/b;->a()Lcom/github/moduth/blockcanary/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/github/moduth/blockcanary/m;

    invoke-direct {v0, p0}, Lcom/github/moduth/blockcanary/m;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/github/moduth/blockcanary/b;->b(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    sget-object v0, Lcom/github/moduth/blockcanary/b;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 140
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 142
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    move v1, v3

    .line 144
    .local v1, "newState":I
    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 145
    return-void

    .line 142
    .end local v1    # "newState":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/github/moduth/blockcanary/b$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/github/moduth/blockcanary/b$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {v1}, Lcom/github/moduth/blockcanary/b;->a(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/b;->d:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/b;->d:Z

    .line 87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    iget-object v1, v1, Lcom/github/moduth/blockcanary/d;->a:Lcom/github/moduth/blockcanary/k;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 89
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/b;->d:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/moduth/blockcanary/b;->d:Z

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 98
    iget-object v0, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->b:Lcom/github/moduth/blockcanary/n;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/n;->b()V

    .line 99
    iget-object v0, p0, Lcom/github/moduth/blockcanary/b;->c:Lcom/github/moduth/blockcanary/d;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/d;->c:Lcom/github/moduth/blockcanary/g;

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/g;->b()V

    .line 101
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/github/moduth/blockcanary/o;->a()V

    .line 108
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/moduth/blockcanary/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BlockCanary_StartTime"

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public f()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 128
    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/moduth/blockcanary/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "BlockCanary_StartTime"

    .line 129
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 130
    .local v0, "startTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 131
    invoke-static {}, Lcom/github/moduth/blockcanary/c;->a()Lcom/github/moduth/blockcanary/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/moduth/blockcanary/c;->f()I

    move-result v4

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
