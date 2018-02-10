.class Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/xutils/task/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .prologue
    .line 65
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .prologue
    .line 69
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;"
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->b(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$2;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;->b(Lcom/jiliguala/niuwa/common/util/xutils/task/b;Ljava/lang/Object;)V

    goto :goto_0
.end method
