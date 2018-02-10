.class public Lorg/chromium/base/Promise;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/Promise$UnhandledRejectionException;,
        Lorg/chromium/base/Promise$AsyncFunction;,
        Lorg/chromium/base/Promise$Function;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FULFILLED:I = 0x1

.field private static final REJECTED:I = 0x2

.field private static final UNFULFILLED:I


# instance fields
.field private final mFulfillCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/Callback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mRejectCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRejectReason:Ljava/lang/Exception;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mThread:Ljava/lang/Thread;

.field private mThrowingRejectionHandler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/base/Promise;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/Promise;->mState:I

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/Promise;->mThread:Ljava/lang/Thread;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/Promise;

    .prologue
    .line 17
    invoke-static {p0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v0

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/Promise;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Promise must only be used on a single Thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method private exceptInner(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "onReject":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Do not add an exception handler to a Promise you have called the single argument Promise.then(Callback) on."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 153
    :cond_0
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fulfilled(Ljava/lang/Object;)Lorg/chromium/base/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/chromium/base/Promise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 299
    .local v0, "promise":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    invoke-virtual {v0, p0}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 300
    return-object v0
.end method

.method private postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Callback",
            "<TS;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "callback":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TS;>;"
    .local p2, "result":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/base/Promise$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/base/Promise$5;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method private static rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise",
            "<TT;>;)",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "promise":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    new-instance v0, Lorg/chromium/base/Promise$6;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$6;-><init>(Lorg/chromium/base/Promise;)V

    return-object v0
.end method

.method private thenInner(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lorg/chromium/base/Promise;->mResult:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public except(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "onReject":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 126
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 127
    return-void
.end method

.method public fulfill(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 237
    sget-boolean v2, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/base/Promise;->mState:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 239
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lorg/chromium/base/Promise;->mState:I

    .line 240
    iput-object p1, p0, Lorg/chromium/base/Promise;->mResult:Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 243
    .local v0, "callback":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-direct {p0, v0, p1}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    .end local v0    # "callback":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    :cond_1
    iget-object v2, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method public fulfillmentCallback()Lorg/chromium/base/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    new-instance v0, Lorg/chromium/base/Promise$2;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$2;-><init>(Lorg/chromium/base/Promise;)V

    return-object v0
.end method

.method public isFulfilled()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    const/4 v0, 0x1

    .line 280
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 282
    iget v1, p0, Lorg/chromium/base/Promise;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRejected()Z
    .locals 2

    .prologue
    .line 289
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 291
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reject()V
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    .line 274
    return-void
.end method

.method public reject(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/Exception;

    .prologue
    .line 257
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 258
    sget-boolean v2, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/base/Promise;->mState:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 260
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lorg/chromium/base/Promise;->mState:I

    .line 261
    iput-object p1, p0, Lorg/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    .line 263
    iget-object v2, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 264
    .local v0, "callback":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0, v0, p1}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    .end local v0    # "callback":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    :cond_1
    iget-object v2, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 267
    return-void
.end method

.method public then(Lorg/chromium/base/Promise$AsyncFunction;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise$AsyncFunction",
            "<TT;TR;>;)",
            "Lorg/chromium/base/Promise",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "function":Lorg/chromium/base/Promise$AsyncFunction;, "Lorg/chromium/base/Promise$AsyncFunction<TT;TR;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 200
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 205
    .local v0, "promise":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TR;>;"
    new-instance v1, Lorg/chromium/base/Promise$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/chromium/base/Promise$4;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 226
    invoke-static {v0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 228
    return-object v0
.end method

.method public then(Lorg/chromium/base/Promise$Function;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise$Function",
            "<TT;TR;>;)",
            "Lorg/chromium/base/Promise",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "function":Lorg/chromium/base/Promise$Function;, "Lorg/chromium/base/Promise$Function<TT;TR;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 168
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 173
    .local v0, "promise":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TR;>;"
    new-instance v1, Lorg/chromium/base/Promise$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/base/Promise$3;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$Function;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 186
    invoke-static {v0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 188
    return-object v0
.end method

.method public then(Lorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 81
    iget-boolean v1, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-boolean v1, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Do not call the single argument Promise.then(Callback) on a Promise that already has a rejection handler."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 89
    :cond_1
    new-instance v0, Lorg/chromium/base/Promise$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$1;-><init>(Lorg/chromium/base/Promise;)V

    .line 97
    .local v0, "onReject":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    goto :goto_0
.end method

.method public then(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/chromium/base/Promise;, "Lorg/chromium/base/Promise<TT;>;"
    .local p1, "onFulfill":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<TT;>;"
    .local p2, "onReject":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Exception;>;"
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 113
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 114
    invoke-direct {p0, p2}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 115
    return-void
.end method
