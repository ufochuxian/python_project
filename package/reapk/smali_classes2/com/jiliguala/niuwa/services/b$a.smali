.class Lcom/jiliguala/niuwa/services/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/services/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/services/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/services/b;)V
    .locals 1
    .param p1, "downloadMgr"    # Lcom/jiliguala/niuwa/services/b;

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 415
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/services/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 416
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 421
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/b;->b(Lcom/jiliguala/niuwa/services/b;)Lcom/jiliguala/niuwa/services/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/services/b$b;->a()Lcom/jiliguala/niuwa/services/c;

    move-result-object v0

    .line 423
    .local v0, "task":Lcom/jiliguala/niuwa/services/c;
    iget-object v1, p0, Lcom/jiliguala/niuwa/services/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/services/b;

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/b;->c(Lcom/jiliguala/niuwa/services/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/services/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    .end local v0    # "task":Lcom/jiliguala/niuwa/services/c;
    :cond_0
    return-void
.end method
