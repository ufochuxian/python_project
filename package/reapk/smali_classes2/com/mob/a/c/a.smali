.class public final Lcom/mob/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/c;


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/mob/a/c/a;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/mob/a/c/a;->b:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public static final declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    const-class v1, Lcom/mob/a/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 71
    new-instance v2, Lcom/mob/a/c/a$3;

    invoke-direct {v2, p0, v0}, Lcom/mob/a/c/a$3;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    invoke-static {v2}, Lcom/mob/a/c/a;->a(Lcom/mob/a/a;)V

    .line 100
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized a()V
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/mob/a/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/mob/a/c/a$1;

    invoke-direct {v0}, Lcom/mob/a/c/a$1;-><init>()V

    invoke-static {v0}, Lcom/mob/a/c/a;->a(Lcom/mob/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v1

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final a(Lcom/mob/a/a;)V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "comm/locks/.mrlock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-static {v0, p0}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 49
    return-void
.end method

.method public static final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    const-class v1, Lcom/mob/a/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 0\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/a/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized b()V
    .locals 2

    .prologue
    .line 108
    const-class v1, Lcom/mob/a/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/mob/a/c/a$4;

    invoke-direct {v0}, Lcom/mob/a/c/a$4;-><init>()V

    invoke-static {v0}, Lcom/mob/a/c/a;->a(Lcom/mob/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v1

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/mob/a/c/a$2;

    invoke-direct {v0, p0}, Lcom/mob/a/c/a$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mob/a/c/a;->a(Lcom/mob/a/a;)V

    .line 67
    return-void
.end method

.method public static final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    const-class v1, Lcom/mob/a/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/a/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/io/File;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/mob/a/c/a;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/mob/a/c/a;->b:Ljava/io/FileOutputStream;

    return-object v0
.end method
