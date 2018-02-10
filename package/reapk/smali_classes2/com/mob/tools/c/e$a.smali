.class Lcom/mob/tools/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/mob/tools/c/e;

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mob/tools/c/e;)V
    .locals 1

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/mob/tools/c/e$a;->b:Lcom/mob/tools/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/c/e$a;->a:Z

    .line 1913
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/c/e$a;->c:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/c/e;Lcom/mob/tools/c/e$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mob/tools/c/e;
    .param p2, "x1"    # Lcom/mob/tools/c/e$1;

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcom/mob/tools/c/e$a;-><init>(Lcom/mob/tools/c/e;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1928
    iget-boolean v0, p0, Lcom/mob/tools/c/e$a;->a:Z

    if-eqz v0, :cond_0

    .line 1929
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1932
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/c/e$a;->a:Z

    .line 1935
    iget-object v0, p0, Lcom/mob/tools/c/e$a;->c:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x5dc

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1917
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/c/e$a;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :goto_0
    return-void

    .line 1918
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1925
    return-void
.end method
