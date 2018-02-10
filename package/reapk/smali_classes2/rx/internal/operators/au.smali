.class public final Lrx/internal/operators/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/au$b;,
        Lrx/internal/operators/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final d:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Z

.field final c:Z

.field private final e:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lrx/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lrx/internal/operators/au$1;

    invoke-direct {v0}, Lrx/internal/operators/au$1;-><init>()V

    sput-object v0, Lrx/internal/operators/au;->d:Lrx/c/p;

    return-void
.end method

.method private constructor <init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V
    .locals 0
    .param p3, "stopOnComplete"    # Z
    .param p4, "stopOnError"    # Z
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;ZZ",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/au;, "Lrx/internal/operators/au<TT;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "f":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lrx/internal/operators/au;->a:Lrx/e;

    .line 180
    iput-object p2, p0, Lrx/internal/operators/au;->e:Lrx/c/p;

    .line 181
    iput-boolean p3, p0, Lrx/internal/operators/au;->b:Z

    .line 182
    iput-boolean p4, p0, Lrx/internal/operators/au;->c:Z

    .line 183
    iput-object p5, p0, Lrx/internal/operators/au;->f:Lrx/h;

    .line 184
    return-void
.end method

.method public static a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    sget-object v0, Lrx/internal/operators/au;->d:Lrx/c/p;

    invoke-static {p0, v0}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;J)Lrx/e;
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;J)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    const-wide/16 v2, 0x0

    .line 126
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 132
    .end local p0    # "source":Lrx/e;, "Lrx/e<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "source":Lrx/e;, "Lrx/e<TT;>;"
    :cond_1
    new-instance v0, Lrx/internal/operators/au$a;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/au$a;-><init>(J)V

    invoke-static {p0, v0}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/c/p;)Lrx/e;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Lrx/e;JLrx/h;)Lrx/e;
    .locals 5
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;J",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    const-wide/16 v2, 0x0

    .line 156
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lrx/e;->c()Lrx/e;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Lrx/internal/operators/au$a;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/au$a;-><init>(J)V

    invoke-static {p0, v0, p3}, Lrx/internal/operators/au;->b(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lrx/e;Lrx/c/p;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/operators/au;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/h;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/au;-><init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 6
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/operators/au;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/au;-><init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    sget-object v0, Lrx/internal/operators/au;->d:Lrx/c/p;

    invoke-static {p0, v0, p1}, Lrx/internal/operators/au;->b(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/h;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;J)Lrx/e;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;J)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/au;->a(Lrx/e;JLrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/c/p;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/operators/au;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/h;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/au;-><init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 6
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    new-instance v0, Lrx/internal/operators/au;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/au;-><init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 6
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT;>;",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Lrx/Notification<*>;>;+Lrx/e<*>;>;"
    const/4 v3, 0x0

    .line 174
    new-instance v0, Lrx/internal/operators/au;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/au;-><init>(Lrx/e;Lrx/c/p;ZZLrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/au;, "Lrx/internal/operators/au<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .local v16, "resumeBoundary":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 195
    .local v7, "consumerCapacity":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/au;->f:Lrx/h;

    invoke-virtual {v3}, Lrx/h;->createWorker()Lrx/h$a;

    move-result-object v14

    .line 196
    .local v14, "worker":Lrx/h$a;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lrx/l;->add(Lrx/m;)V

    .line 198
    new-instance v8, Lrx/i/e;

    invoke-direct {v8}, Lrx/i/e;-><init>()V

    .line 199
    .local v8, "sourceSubscriptions":Lrx/i/e;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lrx/l;->add(Lrx/m;)V

    .line 205
    invoke-static {}, Lrx/h/b;->K()Lrx/h/b;

    move-result-object v3

    invoke-virtual {v3}, Lrx/h/b;->X()Lrx/h/e;

    move-result-object v5

    .line 206
    .local v5, "terminals":Lrx/h/f;, "Lrx/h/f<Lrx/Notification<*>;Lrx/Notification<*>;>;"
    invoke-static {}, Lrx/e/h;->a()Lrx/l;

    move-result-object v24

    .line 209
    .local v24, "dummySubscriber":Lrx/l;, "Lrx/l<Lrx/Notification<*>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lrx/h/f;->b(Lrx/l;)Lrx/m;

    .line 211
    new-instance v6, Lrx/internal/producers/a;

    invoke-direct {v6}, Lrx/internal/producers/a;-><init>()V

    .line 213
    .local v6, "arbiter":Lrx/internal/producers/a;
    new-instance v2, Lrx/internal/operators/au$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lrx/internal/operators/au$2;-><init>(Lrx/internal/operators/au;Lrx/l;Lrx/h/f;Lrx/internal/producers/a;Ljava/util/concurrent/atomic/AtomicLong;Lrx/i/e;)V

    .line 280
    .local v2, "subscribeToSource":Lrx/c/b;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/au;->e:Lrx/c/p;

    new-instance v4, Lrx/internal/operators/au$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lrx/internal/operators/au$3;-><init>(Lrx/internal/operators/au;)V

    invoke-virtual {v5, v4}, Lrx/h/f;->a(Lrx/e$b;)Lrx/e;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/e;

    .line 315
    .local v11, "restarts":Lrx/e;, "Lrx/e<*>;"
    new-instance v9, Lrx/internal/operators/au$4;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lrx/internal/operators/au$4;-><init>(Lrx/internal/operators/au;Lrx/e;Lrx/l;Ljava/util/concurrent/atomic/AtomicLong;Lrx/h$a;Lrx/c/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v14, v9}, Lrx/h$a;->a(Lrx/c/b;)Lrx/m;

    .line 353
    new-instance v17, Lrx/internal/operators/au$5;

    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lrx/internal/operators/au$5;-><init>(Lrx/internal/operators/au;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/a;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/h$a;Lrx/c/b;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 367
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/au;, "Lrx/internal/operators/au<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/au;->a(Lrx/l;)V

    return-void
.end method
