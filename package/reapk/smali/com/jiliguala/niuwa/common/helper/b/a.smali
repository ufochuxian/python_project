.class public Lcom/jiliguala/niuwa/common/helper/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/jiliguala/niuwa/common/helper/b/a;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jiliguala/niuwa/common/helper/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/helper/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/helper/b/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/jiliguala/niuwa/common/helper/b/a;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/jiliguala/niuwa/common/helper/b/a;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/jiliguala/niuwa/common/helper/b/a;->b:Lcom/jiliguala/niuwa/common/helper/b/a;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/common/helper/b/a;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/helper/b/a;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/helper/b/a;->b:Lcom/jiliguala/niuwa/common/helper/b/a;

    .line 26
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/common/helper/b/a;->b:Lcom/jiliguala/niuwa/common/helper/b/a;

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 57
    .local v1, "pid":I
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 58
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 59
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_0

    .line 60
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 63
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/helper/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v3, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/helper/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    .local v0, "curTs":J
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/helper/b/a;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v0    # "curTs":J
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 42
    :cond_0
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 4
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/jiliguala/niuwa/common/util/b/a;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/helper/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/helper/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 49
    .local v2, "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "start":J
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
