.class public Lcom/android/volley/toolbox/e;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/b;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/volley/b;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "cache"    # Lcom/android/volley/b;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/k$a;)V

    .line 43
    iput-object p1, p0, Lcom/android/volley/toolbox/e;->a:Lcom/android/volley/b;

    .line 44
    iput-object p2, p0, Lcom/android/volley/toolbox/e;->b:Ljava/lang/Runnable;

    .line 45
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 70
    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/volley/toolbox/e;->a:Lcom/android/volley/b;

    invoke-interface {v1}, Lcom/android/volley/b;->b()V

    .line 51
    iget-object v1, p0, Lcom/android/volley/toolbox/e;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/volley/toolbox/e;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 55
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/k;
    .locals 1
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/k",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
