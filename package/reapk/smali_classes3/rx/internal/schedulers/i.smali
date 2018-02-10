.class public final Lrx/internal/schedulers/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/i$a;
    }
.end annotation


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/schedulers/i;->a:J

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lrx/h$a;Lrx/c/b;JJLjava/util/concurrent/TimeUnit;Lrx/internal/schedulers/i$a;)Lrx/m;
    .locals 16
    .param p0, "worker"    # Lrx/h$a;
    .param p1, "action"    # Lrx/c/b;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "nowNanoSupplier"    # Lrx/internal/schedulers/i$a;

    .prologue
    .line 59
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    .line 60
    .local v14, "periodInNanos":J
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Lrx/internal/schedulers/i$a;->b()J

    move-result-wide v6

    .line 61
    .local v6, "firstNowNanos":J
    :goto_0
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    add-long v8, v6, v12

    .line 63
    .local v8, "firstStartInNanos":J
    new-instance v4, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v4}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    .line 64
    .local v4, "first":Lrx/internal/subscriptions/SequentialSubscription;
    new-instance v11, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v11, v4}, Lrx/internal/subscriptions/SequentialSubscription;-><init>(Lrx/m;)V

    .line 66
    .local v11, "mas":Lrx/internal/subscriptions/SequentialSubscription;
    new-instance v5, Lrx/internal/schedulers/i$1;

    move-object/from16 v10, p1

    move-object/from16 v12, p7

    move-object/from16 v13, p0

    invoke-direct/range {v5 .. v15}, Lrx/internal/schedulers/i$1;-><init>(JJLrx/c/b;Lrx/internal/subscriptions/SequentialSubscription;Lrx/internal/schedulers/i$a;Lrx/h$a;J)V

    .line 98
    .local v5, "recursiveAction":Lrx/c/b;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v5, v1, v2, v3}, Lrx/h$a;->a(Lrx/c/b;JLjava/util/concurrent/TimeUnit;)Lrx/m;

    move-result-object v10

    invoke-virtual {v4, v10}, Lrx/internal/subscriptions/SequentialSubscription;->replace(Lrx/m;)Z

    .line 99
    return-object v11

    .line 60
    .end local v4    # "first":Lrx/internal/subscriptions/SequentialSubscription;
    .end local v5    # "recursiveAction":Lrx/c/b;
    .end local v6    # "firstNowNanos":J
    .end local v8    # "firstStartInNanos":J
    .end local v11    # "mas":Lrx/internal/subscriptions/SequentialSubscription;
    :cond_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p0 .. p0}, Lrx/h$a;->a()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    goto :goto_0
.end method
