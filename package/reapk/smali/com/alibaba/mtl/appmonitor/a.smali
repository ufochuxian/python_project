.class public final Lcom/alibaba/mtl/appmonitor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/appmonitor/a$f;,
        Lcom/alibaba/mtl/appmonitor/a$e;,
        Lcom/alibaba/mtl/appmonitor/a$g;,
        Lcom/alibaba/mtl/appmonitor/a$d;,
        Lcom/alibaba/mtl/appmonitor/a$c;,
        Lcom/alibaba/mtl/appmonitor/a$b;,
        Lcom/alibaba/mtl/appmonitor/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "AppMonitor"

.field protected static b:Lcom/alibaba/mtl/appmonitor/d;

.field private static c:Landroid/app/Application;

.field private static d:Lcom/alibaba/mtl/appmonitor/a$g;

.field private static e:Landroid/os/HandlerThread;

.field private static volatile f:Z

.field private static g:Ljava/lang/Object;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Lcom/alibaba/mtl/appmonitor/a$f;

.field private static o:Landroid/content/Context;

.field private static p:Landroid/content/ServiceConnection;

.field private static q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    .line 54
    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    .line 55
    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->e:Landroid/os/HandlerThread;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->g:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->h:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    .line 65
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->b:Lcom/alibaba/mtl/appmonitor/a$f;

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->n:Lcom/alibaba/mtl/appmonitor/a$f;

    .line 70
    :try_start_0
    const-string v0, "ut_c_api"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    const-string v0, "AppMonitor"

    const-string v1, "load ut_c_api.so success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$13;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$13;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->p:Landroid/content/ServiceConnection;

    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v0, "AppMonitor"

    const-string v1, "load ut_c_api.so failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1412
    return-void
.end method

.method private static a(Lcom/alibaba/mtl/appmonitor/a/f;)I
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/mtl/appmonitor/a/f;->a()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    const-class v1, Lcom/alibaba/mtl/appmonitor/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    monitor-exit v1

    return-void

    .line 115
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$1;-><init>()V

    .line 125
    sget-object v2, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)V
    .locals 2
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 156
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$3;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$3;-><init>(I)V

    .line 170
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 81
    const-class v1, Lcom/alibaba/mtl/appmonitor/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "AppMonitor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[init]"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->f:Z

    if-nez v0, :cond_2

    .line 84
    sput-object p0, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    .line 85
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->o:Landroid/content/Context;

    .line 88
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AppMonitor_Client"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->e:Landroid/os/HandlerThread;

    .line 89
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$g;

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/mtl/appmonitor/a$g;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    .line 91
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->n:Lcom/alibaba/mtl/appmonitor/a$f;

    sget-object v2, Lcom/alibaba/mtl/appmonitor/a$f;->b:Lcom/alibaba/mtl/appmonitor/a$f;

    if-ne v0, v2, :cond_3

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->m()V

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->o()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->f:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    .line 94
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->k()Z

    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alibaba/mtl/appmonitor/a/f;I)V
    .locals 2
    .param p0, "eventType"    # Lcom/alibaba/mtl/appmonitor/a/f;
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 1092
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/a;->a(Lcom/alibaba/mtl/appmonitor/a/f;)I

    move-result v0

    .line 1096
    new-instance v1, Lcom/alibaba/mtl/appmonitor/a$10;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/mtl/appmonitor/a$10;-><init>(II)V

    .line 1106
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1143
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-static {p0}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 1144
    sput-object p0, Lcom/alibaba/mtl/appmonitor/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;

    .prologue
    .line 224
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/a$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;)V

    .line 237
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/g/c;

    .prologue
    .line 284
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;)V

    .line 298
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V
    .locals 6
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .param p4, "isCommitDetail"    # Z

    .prologue
    .line 317
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;ZZ)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;ZZ)V
    .locals 4
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/g/c;
    .param p4, "isCommitDetail"    # Z
    .param p5, "isInternal"    # Z

    .prologue
    .line 389
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "AppMonitor"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[registerInternal] : module:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string v3, "monitorPoint:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "measures:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const/4 v2, 0x6

    const-string v3, "dimensions:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p3, v1, v2

    const/16 v2, 0x8

    const-string v3, "isCommitDetail:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "isInternal:"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-nez p5, :cond_1

    .line 394
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 396
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)Ljava/lang/Runnable;

    move-result-object v0

    .line 397
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/g/f;
    .param p3, "isCommitDetail"    # Z

    .prologue
    .line 254
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Z)V

    .line 267
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 11
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "defaultValue"    # D

    .prologue
    .line 355
    const-string v0, "AppMonitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[updateMeasure]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/mtl/appmonitor/a$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    .line 371
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # [Ljava/lang/String;
    .param p3, "dimensions"    # [Ljava/lang/String;
    .param p4, "isCommitDetail"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 333
    const-string v2, "AppMonitor"

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "[register]"

    aput-object v0, v3, v1

    const-string v0, "module:"

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const/4 v0, 0x3

    const-string v4, "measures:"

    aput-object v4, v3, v0

    const/4 v4, 0x4

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x5

    const-string v4, "dimensions:"

    aput-object v4, v3, v0

    const/4 v4, 0x6

    if-nez p3, :cond_1

    const-string v0, "null"

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x7

    const-string v4, "isCommitDetail:"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    if-eqz p2, :cond_4

    .line 336
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/f;->a()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v2

    move v0, v1

    .line 337
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 338
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/g/f;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/f;

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 333
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 341
    :cond_2
    const/4 v0, 0x0

    .line 342
    if-eqz p3, :cond_3

    .line 343
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/c;->a()Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    .line 344
    :goto_3
    array-length v3, p3

    if-ge v1, v3, :cond_3

    .line 345
    aget-object v3, p3, v1

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/c;

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 348
    :cond_3
    invoke-static {p0, p1, v2, v0, p4}, Lcom/alibaba/mtl/appmonitor/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 352
    :goto_4
    return-void

    .line 350
    :cond_4
    const-string v0, "AppMonitor"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "register failed:no mearsure"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1156
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$11;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$11;-><init>(Ljava/util/Map;)V

    .line 1167
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "open"    # Z

    .prologue
    .line 196
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$5;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$5;-><init>(Z)V

    .line 210
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "isSecurity"    # Z
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "authcode"    # Ljava/lang/String;

    .prologue
    .line 1124
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1127
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    .line 1128
    sput-boolean p0, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    .line 1129
    sput-object p1, Lcom/alibaba/mtl/appmonitor/a;->k:Ljava/lang/String;

    .line 1130
    sput-object p2, Lcom/alibaba/mtl/appmonitor/a;->m:Ljava/lang/String;

    .line 1131
    sput-object p3, Lcom/alibaba/mtl/appmonitor/a;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1385
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$16;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$16;-><init>(Ljava/lang/String;)V

    .line 1394
    return-object v0
.end method

.method private static b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1372
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/a$15;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    const-class v1, Lcom/alibaba/mtl/appmonitor/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    monitor-exit v1

    return-void

    .line 136
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$2;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$2;-><init>()V

    .line 146
    sget-object v2, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v2, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(I)V
    .locals 2
    .param p0, "sampling"    # I

    .prologue
    .line 178
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$4;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/a$4;-><init>(I)V

    .line 192
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1287
    const-string v0, "AppMonitor"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1289
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    .line 1290
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->l()V

    .line 1293
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V
    .locals 2

    .prologue
    .line 402
    :try_start_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$e;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$e;-><init>()V

    .line 403
    iput-object p0, v0, Lcom/alibaba/mtl/appmonitor/a$e;->a:Ljava/lang/String;

    .line 404
    iput-object p1, v0, Lcom/alibaba/mtl/appmonitor/a$e;->b:Ljava/lang/String;

    .line 405
    iput-object p2, v0, Lcom/alibaba/mtl/appmonitor/a$e;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    .line 406
    iput-object p3, v0, Lcom/alibaba/mtl/appmonitor/a$e;->d:Lcom/alibaba/mtl/appmonitor/g/c;

    .line 407
    iput-boolean p4, v0, Lcom/alibaba/mtl/appmonitor/a$e;->e:Z

    .line 408
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 50
    sput-boolean p0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    return p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)Ljava/lang/Runnable;
    .locals 6

    .prologue
    .line 1398
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/mtl/appmonitor/a$17;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)V

    .line 1409
    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 1171
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1174
    :cond_0
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$12;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$12;-><init>()V

    .line 1184
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/a$g;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Lcom/alibaba/mtl/appmonitor/a$g;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->d:Lcom/alibaba/mtl/appmonitor/a$g;

    return-object v0
.end method

.method static synthetic f()Lcom/alibaba/mtl/appmonitor/a$f;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->n:Lcom/alibaba/mtl/appmonitor/a$f;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    return v0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->m()V

    return-void
.end method

.method private static k()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 1188
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 1196
    :goto_0
    return v0

    .line 1191
    :cond_0
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/AppMonitorService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/alibaba/mtl/appmonitor/a;->p:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 1192
    if-nez v1, :cond_1

    .line 1193
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->m()V

    .line 1195
    :cond_1
    const-string v2, "AppMonitor"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "bindsuccess:"

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1196
    goto :goto_0
.end method

.method private static declared-synchronized l()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1296
    const-class v2, Lcom/alibaba/mtl/appmonitor/a;

    monitor-enter v2

    :try_start_0
    const-string v1, "AppMonitor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[restart]"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1298
    :try_start_1
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    if-eqz v1, :cond_2

    .line 1299
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->i:Z

    .line 1310
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->m()V

    .line 1311
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/a;->o()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1312
    sget-boolean v1, Lcom/alibaba/mtl/appmonitor/a;->l:Z

    sget-object v3, Lcom/alibaba/mtl/appmonitor/a;->k:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/mtl/appmonitor/a;->m:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/mtl/appmonitor/a;->q:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/a;->b(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1313
    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/a;->b(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1314
    sget-object v3, Lcom/alibaba/mtl/appmonitor/a;->h:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .line 1315
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1316
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/a$e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1317
    if-eqz v0, :cond_0

    .line 1319
    :try_start_3
    iget-object v4, v0, Lcom/alibaba/mtl/appmonitor/a$e;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/mtl/appmonitor/a$e;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/mtl/appmonitor/a$e;->c:Lcom/alibaba/mtl/appmonitor/g/f;

    iget-object v7, v0, Lcom/alibaba/mtl/appmonitor/a$e;->d:Lcom/alibaba/mtl/appmonitor/g/c;

    iget-boolean v0, v0, Lcom/alibaba/mtl/appmonitor/a$e;->e:Z

    invoke-static {v4, v5, v6, v7, v0}, Lcom/alibaba/mtl/appmonitor/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/f;Lcom/alibaba/mtl/appmonitor/g/c;Z)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1315
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1325
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1330
    :cond_2
    :goto_2
    monitor-exit v2

    return-void

    .line 1325
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1327
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1296
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1320
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static m()V
    .locals 2

    .prologue
    .line 1333
    new-instance v0, Lcom/alibaba/mtl/appmonitor/e;

    sget-object v1, Lcom/alibaba/mtl/appmonitor/a;->c:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/e;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    .line 1334
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a$f;->b:Lcom/alibaba/mtl/appmonitor/a$f;

    sput-object v0, Lcom/alibaba/mtl/appmonitor/a;->n:Lcom/alibaba/mtl/appmonitor/a$f;

    .line 1335
    const-string v0, "AppMonitor"

    const-string v1, "Start AppMonitor Service failed,AppMonitor run in local Mode..."

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1336
    return-void
.end method

.method private static n()Z
    .locals 4

    .prologue
    .line 1347
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->f:Z

    if-nez v0, :cond_0

    .line 1348
    const-string v0, "AppMonitor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Please call init() before call other method"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    :cond_0
    sget-boolean v0, Lcom/alibaba/mtl/appmonitor/a;->f:Z

    return v0
.end method

.method private static o()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1354
    new-instance v0, Lcom/alibaba/mtl/appmonitor/a$14;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/a$14;-><init>()V

    .line 1368
    return-object v0
.end method
