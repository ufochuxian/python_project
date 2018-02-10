.class final Landroid/support/v4/content/a$a;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/support/v4/content/a;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/support/v4/content/a;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v4/content/a;

    .prologue
    .line 45
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    iput-object p1, p0, Landroid/support/v4/content/a$a;->b:Landroid/support/v4/content/a;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/a$a;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/content/a$a;->b:Landroid/support/v4/content/a;

    invoke-virtual {v2}, Landroid/support/v4/content/a;->e()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Landroid/support/v4/os/OperationCanceledException;
    invoke-virtual {p0}, Landroid/support/v4/content/a$a;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    throw v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/a$a;->b:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/a;->b(Landroid/support/v4/content/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/a$a;->b:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/a$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/a$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v4/content/a$a;, "Landroid/support/v4/content/a<TD;>.a;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/a$a;->a:Z

    .line 102
    iget-object v0, p0, Landroid/support/v4/content/a$a;->b:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->c()V

    .line 103
    return-void
.end method
