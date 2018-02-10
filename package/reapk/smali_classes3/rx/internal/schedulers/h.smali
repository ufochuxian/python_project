.class public Lrx/internal/schedulers/h;
.super Lrx/h$a;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# static fields
.field public static final b:I

.field private static final d:Ljava/lang/String; = "rx.scheduler.jdk6.purge-frequency-millis"

.field private static final e:Ljava/lang/String; = "rx.scheduler.jdk6.purge-force"

.field private static final f:Ljava/lang/String; = "RxSchedulerPurge-"

.field private static final g:Z

.field private static final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lrx/internal/schedulers/h;->k:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lrx/internal/schedulers/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v2, Lrx/internal/schedulers/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    const-string v2, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lrx/internal/schedulers/h;->b:I

    .line 66
    const-string v2, "rx.scheduler.jdk6.purge-force"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, "purgeForce":Z
    invoke-static {}, Lrx/internal/util/i;->b()I

    move-result v0

    .line 72
    .local v0, "androidApiVersion":I
    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lrx/internal/schedulers/h;->g:Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 208
    invoke-direct {p0}, Lrx/h$a;-><init>()V

    .line 209
    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 211
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lrx/internal/schedulers/h;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    .line 212
    .local v0, "cancelSupported":Z
    if-nez v0, :cond_0

    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 213
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lrx/internal/schedulers/h;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 215
    :cond_0
    iput-object v1, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 216
    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 109
    sget-object v0, Lrx/internal/schedulers/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 7
    .param p0, "service"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 82
    :goto_0
    sget-object v1, Lrx/internal/schedulers/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_0

    .line 101
    :goto_1
    sget-object v1, Lrx/internal/schedulers/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/util/RxThreadFactory;

    const-string v3, "RxSchedulerPurge-"

    invoke-direct {v2, v3}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 87
    sget-object v1, Lrx/internal/schedulers/h;->i:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lrx/internal/schedulers/h$1;

    invoke-direct {v1}, Lrx/internal/schedulers/h$1;-><init>()V

    sget v2, Lrx/internal/schedulers/h;->b:I

    int-to-long v2, v2

    sget v4, Lrx/internal/schedulers/h;->b:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 10
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 140
    sget-boolean v5, Lrx/internal/schedulers/h;->g:Z

    if-eqz v5, :cond_4

    .line 141
    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 145
    .local v1, "isInstanceOfScheduledThreadPoolExecutor":Z
    if-eqz v1, :cond_3

    .line 146
    sget-object v2, Lrx/internal/schedulers/h;->j:Ljava/lang/Object;

    .line 148
    .local v2, "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    sget-object v5, Lrx/internal/schedulers/h;->k:Ljava/lang/Object;

    if-ne v2, v5, :cond_0

    move v5, v6

    .line 181
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :goto_0
    return v5

    .line 152
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_2

    .line 153
    invoke-static {p0}, Lrx/internal/schedulers/h;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 155
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    move-object v5, v3

    :goto_1
    sput-object v5, Lrx/internal/schedulers/h;->j:Ljava/lang/Object;

    .line 159
    move-object v4, v3

    .line 167
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .local v4, "methodToCall":Ljava/lang/reflect/Method;
    :goto_2
    if-eqz v4, :cond_4

    .line 169
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v7

    .line 170
    goto :goto_0

    .line 155
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v5, Lrx/internal/schedulers/h;->k:Ljava/lang/Object;

    goto :goto_1

    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    move-object v4, v2

    .line 161
    check-cast v4, Ljava/lang/reflect/Method;

    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 164
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {p0}, Lrx/internal/schedulers/h;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v4

    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_4
    :goto_3
    move v5, v6

    .line 181
    goto :goto_0

    .line 173
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method static c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 195
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 198
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 204
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v3

    .line 194
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static c()V
    .locals 4
    .annotation build Lrx/internal/util/n;
    .end annotation

    .prologue
    .line 116
    :try_start_0
    sget-object v3, Lrx/internal/schedulers/h;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 119
    .local v0, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 127
    invoke-static {v2}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 129
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 122
    .restart local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;Lrx/i/b;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/i/b;

    .prologue
    .line 253
    invoke-static {p1}, Lrx/f/c;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object v0

    .line 254
    .local v0, "decoratedAction":Lrx/c/b;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;Lrx/i/b;)V

    .line 255
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/i/b;->a(Lrx/m;)V

    .line 258
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 259
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 263
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 265
    return-object v2

    .line 261
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/m;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/internal/util/m;

    .prologue
    .line 269
    invoke-static {p1}, Lrx/f/c;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object v0

    .line 270
    .local v0, "decoratedAction":Lrx/c/b;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;Lrx/internal/util/m;)V

    .line 271
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/internal/util/m;->a(Lrx/m;)V

    .line 274
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 275
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 279
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 281
    return-object v2

    .line 277
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public a(Lrx/c/b;)Lrx/m;
    .locals 3
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/h;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;
    .locals 2
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 225
    iget-boolean v0, p0, Lrx/internal/schedulers/h;->a:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/h;->b(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .locals 6
    .param p1, "action"    # Lrx/c/b;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 240
    invoke-static {p1}, Lrx/f/c;->a(Lrx/c/b;)Lrx/c/b;

    move-result-object v0

    .line 241
    .local v0, "decoratedAction":Lrx/c/b;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/c/b;)V

    .line 243
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    .line 244
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 248
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 250
    return-object v2

    .line 246
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lrx/internal/schedulers/h;->a:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/h;->a:Z

    .line 287
    iget-object v0, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 288
    iget-object v0, p0, Lrx/internal/schedulers/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/h;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 289
    return-void
.end method
