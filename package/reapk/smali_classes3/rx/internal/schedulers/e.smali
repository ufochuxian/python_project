.class final enum Lrx/internal/schedulers/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/schedulers/e;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "RxScheduledExecutorPool-"

.field static final b:Lrx/internal/util/RxThreadFactory;

.field private static final synthetic c:[Lrx/internal/schedulers/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/schedulers/e;

    sput-object v0, Lrx/internal/schedulers/e;->c:[Lrx/internal/schedulers/e;

    .line 33
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/internal/schedulers/e;->b:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lrx/internal/schedulers/e;->b:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {}, Lrx/internal/schedulers/e;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static create()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lrx/f/c;->C()Lrx/c/o;

    move-result-object v0

    .line 45
    .local v0, "f":Lrx/c/o;, "Lrx/c/o<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lrx/internal/schedulers/e;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/schedulers/e;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lrx/internal/schedulers/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/e;

    return-object v0
.end method

.method public static values()[Lrx/internal/schedulers/e;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lrx/internal/schedulers/e;->c:[Lrx/internal/schedulers/e;

    invoke-virtual {v0}, [Lrx/internal/schedulers/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/schedulers/e;

    return-object v0
.end method
