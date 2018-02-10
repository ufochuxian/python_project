.class public Lcom/github/sahasbhop/flog/FLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/sahasbhop/flog/FLog$LogType;
    }
.end annotation


# static fields
.field public static final a:Ljava/text/DateFormat;

.field private static final b:I = 0x32

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/github/sahasbhop/flog/FLog;->e:Z

    .line 39
    sput-boolean v1, Lcom/github/sahasbhop/flog/FLog;->f:Z

    .line 40
    sput-boolean v1, Lcom/github/sahasbhop/flog/FLog;->g:Z

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-dd-MM HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/github/sahasbhop/flog/FLog;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "level"    # Lcom/github/sahasbhop/flog/FLog$LogType;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "builder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x100

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 375
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 376
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 378
    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->a:Ljava/text/DateFormat;

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "time":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 382
    const-string v5, "%s: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v5, "%s/%s(%d): "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    .line 385
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 384
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "time":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 406
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 411
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "paths":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    :cond_2
    goto :goto_0
.end method

.method private static a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "element"    # Ljava/lang/StackTraceElement;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 419
    if-nez p0, :cond_0

    .line 420
    .end local p1    # "msg":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "msg":Ljava/lang/String;
    :cond_0
    const-string v0, "%s # %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static declared-synchronized a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "level"    # Lcom/github/sahasbhop/flog/FLog$LogType;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 300
    const-class v2, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v2

    :try_start_0
    invoke-static {p2, p3}, Lcom/github/sahasbhop/flog/FLog;->f(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "stacktrace":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit v2

    return-void

    .line 300
    .end local v0    # "stacktrace":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 126
    const-class v3, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v3

    const/4 v1, 0x0

    .line 127
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 129
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, p0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    :cond_0
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_1
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    :cond_2
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/github/sahasbhop/flog/FLog$LogType;->VERBOSE:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v2, v1, p0, p1}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_3
    monitor-exit v3

    return-void

    .line 126
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    const-class v4, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 110
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_2
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/github/sahasbhop/flog/FLog$LogType;->VERBOSE:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v3, v2, v1}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_3
    monitor-exit v4

    return-void

    .line 105
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/github/sahasbhop/flog/FLog;->e:Z

    .line 59
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "enable"    # Z
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 76
    sput-boolean p0, Lcom/github/sahasbhop/flog/FLog;->g:Z

    .line 78
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/sahasbhop/flog/FLog;->d:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/github/sahasbhop/flog/FLog;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "level"    # Lcom/github/sahasbhop/flog/FLog$LogType;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v6, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->d:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->d:Ljava/lang/String;

    const-string v7, ""

    .line 306
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 312
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-static {p0, p1, p2}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "log":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/github/sahasbhop/flog/FLog;->c:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/github/sahasbhop/flog/FLog;->d:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .restart local v0    # "f":Ljava/io/File;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v3, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 325
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v5, v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v7, 0x100

    invoke-direct {v4, v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 327
    .local v4, "writer":Ljava/io/BufferedWriter;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 329
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 333
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v5

    .line 339
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "log":Ljava/lang/String;
    :cond_1
    :goto_2
    monitor-exit v6

    return-void

    .line 331
    .restart local v0    # "f":Ljava/io/File;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "log":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 332
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 305
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "log":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 313
    .restart local v0    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    const-class v3, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v3

    const/4 v1, 0x0

    .line 167
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 169
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v0, p0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    :cond_0
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_1
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    :cond_2
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/github/sahasbhop/flog/FLog$LogType;->DEBUG:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v2, v1, p0, p1}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_3
    monitor-exit v3

    return-void

    .line 166
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs declared-synchronized b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 145
    const-class v4, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 148
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 150
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_0
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    :cond_2
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/github/sahasbhop/flog/FLog$LogType;->DEBUG:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v3, v2, v1}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_3
    monitor-exit v4

    return-void

    .line 145
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static b(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/github/sahasbhop/flog/FLog;->f:Z

    .line 67
    return-void
.end method

.method private static c()Ljava/lang/StackTraceElement;
    .locals 4

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "element":Ljava/lang/StackTraceElement;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 399
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 400
    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 402
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    const-class v3, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v3

    const/4 v1, 0x0

    .line 207
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 209
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 210
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v0, p0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_0
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_1
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 216
    :cond_2
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/github/sahasbhop/flog/FLog$LogType;->INFO:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v2, v1, p0, p1}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_3
    monitor-exit v3

    return-void

    .line 206
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs declared-synchronized c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 185
    const-class v4, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 188
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 190
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    :cond_0
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :cond_2
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/github/sahasbhop/flog/FLog$LogType;->INFO:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v3, v2, v1}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_3
    monitor-exit v4

    return-void

    .line 185
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 246
    const-class v3, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v3

    const/4 v1, 0x0

    .line 247
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 249
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 250
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v0, p0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 254
    :cond_0
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :cond_1
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :cond_2
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/github/sahasbhop/flog/FLog$LogType;->WARNING:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v2, v1, p0, p1}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_3
    monitor-exit v3

    return-void

    .line 246
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs declared-synchronized d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 225
    const-class v4, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 228
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 230
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 231
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_0
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    :cond_2
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/github/sahasbhop/flog/FLog$LogType;->WARNING:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v3, v2, v1}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_3
    monitor-exit v4

    return-void

    .line 225
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 286
    const-class v3, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v3

    const/4 v1, 0x0

    .line 287
    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 289
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, p0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 294
    :cond_0
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    :cond_1
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    :cond_2
    sget-boolean v2, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/github/sahasbhop/flog/FLog$LogType;->ERROR:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v2, v1, p0, p1}, Lcom/github/sahasbhop/flog/FLog;->a(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_3
    monitor-exit v3

    return-void

    .line 286
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs declared-synchronized e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 265
    const-class v4, Lcom/github/sahasbhop/flog/FLog;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 268
    .local v2, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/github/sahasbhop/flog/FLog;->c()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 270
    .local v0, "element":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .line 271
    invoke-static {v0}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v0, v1}, Lcom/github/sahasbhop/flog/FLog;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_0
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->e:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->f:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_2
    sget-boolean v3, Lcom/github/sahasbhop/flog/FLog;->g:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/github/sahasbhop/flog/FLog$LogType;->ERROR:Lcom/github/sahasbhop/flog/FLog$LogType;

    invoke-static {v3, v2, v1}, Lcom/github/sahasbhop/flog/FLog;->b(Lcom/github/sahasbhop/flog/FLog$LogType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_3
    monitor-exit v4

    return-void

    .line 265
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    if-eqz p1, :cond_2

    .line 346
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 351
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_2

    .line 353
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    const/16 v5, 0x32

    if-ge v3, v5, :cond_1

    .line 354
    aget-object v1, v2, v3

    .line 356
    .local v1, "element":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    .line 357
    const-string v5, "\tat "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x32

    .line 361
    .local v4, "more":I
    if-lez v4, :cond_2

    .line 362
    const-string v5, "\t... "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " more"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    .end local v3    # "i":I
    .end local v4    # "more":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
