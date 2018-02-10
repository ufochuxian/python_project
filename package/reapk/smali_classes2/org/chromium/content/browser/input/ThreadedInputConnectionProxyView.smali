.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"


# instance fields
.field private final mContainerView:Landroid/view/View;

.field private final mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImeThreadHandler:Landroid/os/Handler;

.field private final mRootView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imeThreadHandler"    # Landroid/os/Handler;
    .param p3, "containerView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mImeThreadHandler:Landroid/os/Handler;

    .line 39
    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    .line 40
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setFocusable(Z)V

    .line 41
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setFocusableInTouchMode(Z)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mImeThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 91
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onOriginalViewAttachedToWindow()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onOriginalViewDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onOriginalViewFocusChanged(Z)V
    .locals 1
    .param p1, "gainFocus"    # Z

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    return-void
.end method

.method public onOriginalViewWindowFocusChanged(Z)V
    .locals 1
    .param p1, "gainFocus"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 134
    return-void
.end method
