.class public Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x7d0L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field private focusing:Z

.field private outstandingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private stopped:Z

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 39
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 51
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "currentFocusMode":Ljava/lang/String;
    sget-object v1, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    .line 54
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->start()V

    .line 55
    return-void
.end method

.method private declared-synchronized autoFocusAgainLater()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->stopped:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 66
    new-instance v0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;-><init>(Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v0, "newTask":Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 69
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v0    # "newTask":Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 71
    .restart local v0    # "newTask":Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_1

    .line 65
    .end local v0    # "newTask":Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager$a;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized cancelOutstandingTask()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "theCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 59
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->focusing:Z

    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->outstandingTask:Landroid/os/AsyncTask;

    .line 83
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->stopped:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->focusing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->focusing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 92
    .local v0, "re":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->autoFocusAgainLater()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->stopped:Z

    .line 109
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->cancelOutstandingTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/zxing/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method
