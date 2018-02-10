.class public Lcom/mob/tools/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/mob/tools/c/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 16
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sput-object v10, Lcom/mob/tools/c/b;->a:Ljava/util/HashSet;

    .line 20
    new-instance v4, Lcom/mob/tools/c/b$1;

    invoke-direct {v4}, Lcom/mob/tools/c/b$1;-><init>()V

    .line 57
    .local v4, "mainThreadAct":Lcom/mob/tools/c/k$a;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 58
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Lcom/mob/tools/c/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 87
    .local v9, "thread":Ljava/lang/Object;
    :goto_0
    :try_start_0
    const-string v10, "mH"

    invoke-static {v9, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "handler":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v10, "mC"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v10, "al"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v10, "lb"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v10, "ac"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v10, "k"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "method":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 96
    .local v0, "backup":Landroid/os/Handler$Callback;
    move-object v1, v9

    .line 97
    .local v1, "fThread":Ljava/lang/Object;
    new-instance v10, Lcom/mob/tools/c/b$3;

    invoke-direct {v10, v1, v0}, Lcom/mob/tools/c/b$3;-><init>(Ljava/lang/Object;Landroid/os/Handler$Callback;)V

    invoke-static {v2, v5, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v0    # "backup":Landroid/os/Handler$Callback;
    .end local v1    # "fThread":Ljava/lang/Object;
    .end local v2    # "handler":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 60
    .end local v9    # "thread":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    .local v3, "lock":Ljava/lang/Object;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    .line 62
    .local v6, "output":[Ljava/lang/Object;
    monitor-enter v3

    .line 63
    const/4 v10, 0x0

    :try_start_1
    new-instance v11, Lcom/mob/tools/c/b$2;

    invoke-direct {v11, v3, v6, v4}, Lcom/mob/tools/c/b$2;-><init>(Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/c/k$a;)V

    invoke-static {v10, v11}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    aget-object v9, v6, v14

    .restart local v9    # "thread":Ljava/lang/Object;
    goto :goto_0

    .line 78
    .end local v9    # "thread":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 79
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 81
    .end local v8    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 166
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v6    # "output":[Ljava/lang/Object;
    .restart local v9    # "thread":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 167
    .restart local v8    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/mob/tools/c/b;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Lcom/mob/tools/c/b$a;)V
    .locals 1
    .param p0, "t"    # Lcom/mob/tools/c/b$a;

    .prologue
    .line 172
    sget-object v0, Lcom/mob/tools/c/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public static b(Lcom/mob/tools/c/b$a;)V
    .locals 1
    .param p0, "t"    # Lcom/mob/tools/c/b$a;

    .prologue
    .line 176
    sget-object v0, Lcom/mob/tools/c/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method
