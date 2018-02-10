.class Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/AsyncTask;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    monitor-exit p0

    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c$1;

    invoke-direct {v1, p0, p1}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c$1;-><init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_0
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
