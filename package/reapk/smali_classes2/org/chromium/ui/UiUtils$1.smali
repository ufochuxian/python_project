.class final Lorg/chromium/ui/UiUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 94
    iget-object v3, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 100
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 110
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    iget-object v3, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_0

    .line 103
    iget-object v3, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 105
    :cond_0
    :try_start_2
    const-string v3, "UiUtils"

    const-string v4, "Unable to open keyboard.  Giving up."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method
