.class public Lrx/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e$c;,
        Lrx/e$b;,
        Lrx/e$a;
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


# instance fields
.field final a:Lrx/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "f":Lrx/e$a;, "Lrx/e$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/e;->a:Lrx/e$a;

    .line 62
    return-void
.end method

.method public static a(II)Lrx/e;
    .locals 2
    .param p0, "start"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3464
    if-gez p1, :cond_0

    .line 3465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3467
    :cond_0
    if-nez p1, :cond_1

    .line 3468
    invoke-static {}, Lrx/e;->c()Lrx/e;

    move-result-object v0

    .line 3476
    :goto_0
    return-object v0

    .line 3470
    :cond_1
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_2

    .line 3471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3473
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3474
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    goto :goto_0

    .line 3476
    :cond_3
    new-instance v0, Lrx/internal/operators/at;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/at;-><init>(II)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(IILrx/h;)Lrx/e;
    .locals 1
    .param p0, "start"    # I
    .param p1, "count"    # I
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3501
    invoke-static {p0, p1}, Lrx/e;->a(II)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2112
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 8
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2143
    new-instance v1, Lrx/internal/operators/bd;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/bd;-><init>(JJLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2056
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2083
    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/internal/operators/w;->a(Ljava/lang/Iterable;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;I)Lrx/e;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2536
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/e;->a(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lrx/c/y;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    .local p1, "combineFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    new-instance v0, Lrx/internal/operators/y;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/y;-><init>(Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2173
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/k;->h(Ljava/lang/Object;)Lrx/internal/util/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2199
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2227
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2257
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2289
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2323
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2359
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2397
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2437
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2479
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    .local p9, "t10":Ljava/lang/Object;, "TT;"
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    const/16 v1, 0x9

    aput-object p9, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/e;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1811
    new-instance v0, Lrx/internal/operators/bb;

    invoke-direct {v0, p0}, Lrx/internal/operators/bb;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Lrx/c/y;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/e<+TT;>;>;"
    .local p1, "combineFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    new-instance v0, Lrx/internal/operators/y;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/y;-><init>(Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2036
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/internal/operators/aj;

    invoke-direct {v0, p0}, Lrx/internal/operators/aj;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1841
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/bg;->a(Ljava/util/concurrent/Future;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1875
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/bg;->a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;Lrx/h;)Lrx/e;
    .locals 2
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1907
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/bg;->a(Ljava/util/concurrent/Future;)Lrx/e$a;

    move-result-object v1

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    .line 1908
    .local v0, "o":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {v0, p1}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lrx/c/c;Lrx/Emitter$BackpressureMode;)Lrx/e;
    .locals 1
    .param p1, "backpressure"    # Lrx/Emitter$BackpressureMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<",
            "Lrx/Emitter",
            "<TT;>;>;",
            "Lrx/Emitter$BackpressureMode;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 2008
    .local p0, "emitter":Lrx/c/c;, "Lrx/c/c<Lrx/Emitter<TT;>;>;"
    new-instance v0, Lrx/internal/operators/ak;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ak;-><init>(Lrx/c/c;Lrx/Emitter$BackpressureMode;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<",
            "Lrx/e",
            "<TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1765
    .local p0, "observableFactory":Lrx/c/o;, "Lrx/c/o<Lrx/e<TT;>;>;"
    new-instance v0, Lrx/internal/operators/aa;

    invoke-direct {v0, p0}, Lrx/internal/operators/aa;-><init>(Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<TResource;>;",
            "Lrx/c/p",
            "<-TResource;+",
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3766
    .local p0, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p1, "observableFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/e<+TT;>;>;"
    .local p2, "disposeAction":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/e;->a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/e;
    .locals 1
    .param p3, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<TResource;>;",
            "Lrx/c/p",
            "<-TResource;+",
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;Z)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 3806
    .local p0, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p1, "observableFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/e<+TT;>;>;"
    .local p2, "disposeAction":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    new-instance v0, Lrx/internal/operators/bh;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/bh;-><init>(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d/a;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d/a",
            "<TS;TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 186
    .local p0, "asyncOnSubscribe":Lrx/d/a;, "Lrx/d/a<TS;TT;>;"
    invoke-static {p0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/d/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d/e",
            "<TS;TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "syncOnSubscribe":Lrx/d/e;, "Lrx/d/e<TS;TT;>;"
    invoke-static {p0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e$a;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$a",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "f":Lrx/e$a;, "Lrx/e$a<TT;>;"
    new-instance v0, Lrx/e;

    invoke-static {p0}, Lrx/f/c;->a(Lrx/e$a;)Lrx/e$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/e;-><init>(Lrx/e$a;)V

    return-object v0
.end method

.method public static a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "observables":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->c(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;I)Lrx/e;
    .locals 2
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2602
    .local p0, "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/k;

    if-ne v0, v1, :cond_0

    .line 2603
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v0

    .line 2605
    :goto_0
    return-object v0

    .restart local p0    # "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lrx/internal/operators/ci;->a(ZI)Lrx/internal/operators/ci;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lrx/e;Lrx/c/y;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3953
    .local p0, "ws":Lrx/e;, "Lrx/e<+Lrx/e<*>;>;"
    .local p1, "zipFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    invoke-virtual {p0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lrx/internal/util/InternalObservableUtils$q;

    invoke-virtual {v0, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p1}, Lrx/internal/operators/ed;-><init>(Lrx/c/y;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "combineFunction":Lrx/c/q;, "Lrx/c/q<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lrx/c/aa;->a(Lrx/c/q;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/c/r;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/c/r",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "combineFunction":Lrx/c/r;, "Lrx/c/r<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Lrx/c/aa;->a(Lrx/c/r;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/s;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/c/s",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "combineFunction":Lrx/c/s;, "Lrx/c/s<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lrx/c/aa;->a(Lrx/c/s;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/t;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/c/t",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "combineFunction":Lrx/c/t;, "Lrx/c/t<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Lrx/c/aa;->a(Lrx/c/t;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/u;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/c/u",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "combineFunction":Lrx/c/u;, "Lrx/c/u<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p6}, Lrx/c/aa;->a(Lrx/c/u;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/v;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/c/v",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "combineFunction":Lrx/c/v;, "Lrx/c/v<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p7}, Lrx/c/aa;->a(Lrx/c/v;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/w;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/e",
            "<+TT8;>;",
            "Lrx/c/w",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT8;>;"
    .local p8, "combineFunction":Lrx/c/w;, "Lrx/c/w<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p8}, Lrx/c/aa;->a(Lrx/c/w;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "o9":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/internal/operators/w;->a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e$a;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/x;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/e",
            "<+TT8;>;",
            "Lrx/e",
            "<+TT9;>;",
            "Lrx/c/x",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT8;>;"
    .local p8, "o9":Lrx/e;, "Lrx/e<+TT9;>;"
    .local p9, "combineFunction":Lrx/c/x;, "Lrx/c/x<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p9}, Lrx/c/aa;->a(Lrx/c/x;)Lrx/c/y;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->a(Ljava/util/List;Lrx/c/y;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1955
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 1956
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 1957
    invoke-static {}, Lrx/e;->c()Lrx/e;

    move-result-object v1

    .line 1962
    :goto_0
    return-object v1

    .line 1959
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1960
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    goto :goto_0

    .line 1962
    :cond_1
    new-instance v1, Lrx/internal/operators/ai;

    invoke-direct {v1, p0}, Lrx/internal/operators/ai;-><init>([Ljava/lang/Object;)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    goto :goto_0
.end method

.method public static a([Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2910
    .local p0, "sequences":[Lrx/e;, "[Lrx/e<+TT;>;"
    invoke-static {p0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lrx/e;I)Lrx/e;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/e",
            "<+TT;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2939
    .local p0, "sequences":[Lrx/e;, "[Lrx/e<+TT;>;"
    invoke-static {p0}, Lrx/e;->a([Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/e;->a(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lrx/e;Lrx/c/y;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/e",
            "<*>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 3906
    .local p0, "ws":[Lrx/e;, "[Lrx/e<*>;"
    .local p1, "zipFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    invoke-static {p0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p1}, Lrx/internal/operators/ed;-><init>(Lrx/c/y;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method static a(Lrx/l;Lrx/e;)Lrx/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<-TT;>;",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10212
    .local p0, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    .local p1, "observable":Lrx/e;, "Lrx/e<TT;>;"
    if-nez p0, :cond_0

    .line 10213
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "subscriber can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10215
    :cond_0
    iget-object v4, p1, Lrx/e;->a:Lrx/e$a;

    if-nez v4, :cond_1

    .line 10216
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 10224
    :cond_1
    invoke-virtual {p0}, Lrx/l;->onStart()V

    .line 10231
    instance-of v4, p0, Lrx/e/e;

    if-nez v4, :cond_2

    .line 10233
    new-instance v3, Lrx/e/e;

    invoke-direct {v3, p0}, Lrx/e/e;-><init>(Lrx/l;)V

    .end local p0    # "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    .local v3, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    move-object p0, v3

    .line 10240
    .end local v3    # "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    .restart local p0    # "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :cond_2
    :try_start_0
    iget-object v4, p1, Lrx/e;->a:Lrx/e$a;

    invoke-static {p1, v4}, Lrx/f/c;->a(Lrx/e;Lrx/e$a;)Lrx/e$a;

    move-result-object v4

    invoke-interface {v4, p0}, Lrx/e$a;->call(Ljava/lang/Object;)V

    .line 10241
    invoke-static {p0}, Lrx/f/c;->a(Lrx/m;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 10263
    :goto_0
    return-object v4

    .line 10242
    :catch_0
    move-exception v0

    .line 10244
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10246
    invoke-virtual {p0}, Lrx/l;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10247
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 10263
    :goto_1
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v4

    goto :goto_0

    .line 10251
    :cond_3
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10252
    :catch_1
    move-exception v1

    .line 10253
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10256
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10258
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10260
    throw v2
.end method

.method public static b(JJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3655
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 2
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3686
    invoke-static/range {p0 .. p5}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3709
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/e;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3736
    new-instance v0, Lrx/internal/operators/bc;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/bc;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;I)Lrx/e;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3069
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/e;->b(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;Lrx/c/y;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1083
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    .local p1, "combineFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    new-instance v0, Lrx/internal/operators/y;

    const/4 v1, 0x0

    sget v4, Lrx/internal/util/j;->b:I

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/y;-><init>([Lrx/e;Ljava/lang/Iterable;Lrx/c/y;IZ)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

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
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1438
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->d(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;I)Lrx/e;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 3009
    .local p0, "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lrx/internal/operators/ci;->a(ZI)Lrx/internal/operators/ci;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3554
    .local p0, "first":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "second":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "equality":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/cv;->a(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/c/r;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/c/r",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4061
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "zipFunction":Lrx/c/r;, "Lrx/c/r<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p3}, Lrx/internal/operators/ed;-><init>(Lrx/c/r;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/s;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/c/s",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4120
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "zipFunction":Lrx/c/s;, "Lrx/c/s<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p4}, Lrx/internal/operators/ed;-><init>(Lrx/c/s;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1260
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/t;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/c/t",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4182
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "zipFunction":Lrx/c/t;, "Lrx/c/t<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p5}, Lrx/internal/operators/ed;-><init>(Lrx/c/t;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/u;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/c/u",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4247
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "zipFunction":Lrx/c/u;, "Lrx/c/u<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p6}, Lrx/internal/operators/ed;-><init>(Lrx/c/u;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1334
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/v;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/c/v",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4315
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "zipFunction":Lrx/c/v;, "Lrx/c/v<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p7}, Lrx/internal/operators/ed;-><init>(Lrx/c/v;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1374
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/w;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/e",
            "<+TT8;>;",
            "Lrx/c/w",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4386
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT8;>;"
    .local p8, "zipFunction":Lrx/c/w;, "Lrx/c/w<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p8}, Lrx/internal/operators/ed;-><init>(Lrx/c/w;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1416
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "t9":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/x;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/e",
            "<+TT3;>;",
            "Lrx/e",
            "<+TT4;>;",
            "Lrx/e",
            "<+TT5;>;",
            "Lrx/e",
            "<+TT6;>;",
            "Lrx/e",
            "<+TT7;>;",
            "Lrx/e",
            "<+TT8;>;",
            "Lrx/e",
            "<+TT9;>;",
            "Lrx/c/x",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4460
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT3;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT4;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT5;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT6;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT7;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT8;>;"
    .local p8, "o9":Lrx/e;, "Lrx/e<+TT9;>;"
    .local p9, "zipFunction":Lrx/c/x;, "Lrx/c/x<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p9}, Lrx/internal/operators/ed;-><init>(Lrx/c/x;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1787
    invoke-static {}, Lrx/internal/operators/EmptyObservableHolder;->instance()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1462
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;I)Lrx/e;
    .locals 2
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6322
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lrx/e;->a(Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;Lrx/c/y;)Lrx/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3853
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<*>;>;"
    .local p1, "zipFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3854
    .local v2, "os":Ljava/util/List;, "Ljava/util/List<Lrx/e<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/e;

    .line 3855
    .local v1, "o":Lrx/e;, "Lrx/e<*>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3857
    .end local v1    # "o":Lrx/e;, "Lrx/e<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lrx/e;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v3

    new-instance v4, Lrx/internal/operators/ed;

    invoke-direct {v4, p1}, Lrx/internal/operators/ed;-><init>(Lrx/c/y;)V

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v3

    return-object v3
.end method

.method public static c(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2565
    .local p0, "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/k;

    if-ne v0, v1, :cond_0

    .line 2566
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v0

    .line 2568
    .restart local p0    # "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/ci;->a(Z)Lrx/internal/operators/ci;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1489
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT1;>;",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4005
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT1;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/ed;

    invoke-direct {v1, p2}, Lrx/internal/operators/ed;-><init>(Lrx/c/q;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1518
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1549
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1582
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1617
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1654
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1693
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1734
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "t9":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1932
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    new-instance v0, Lrx/internal/operators/al;

    invoke-direct {v0, p0}, Lrx/internal/operators/al;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method private d(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TR;>;",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/c/o",
            "<+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7538
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    .local p2, "onError":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lrx/c/o;, "Lrx/c/o<+TR;>;"
    new-instance v0, Lrx/internal/operators/cf;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/cf;-><init>(Lrx/c/p;Lrx/c/p;Lrx/c/o;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2972
    .local p0, "source":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/ci;->a(Z)Lrx/internal/operators/ci;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;I)Lrx/e;
    .locals 1
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6371
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lrx/e;->a(Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2633
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2663
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2695
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2729
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2765
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2803
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2843
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2885
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "t9":Lrx/e;, "Lrx/e<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/e;->a([Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3439
    invoke-static {}, Lrx/internal/operators/NeverObservableHolder;->instance()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2505
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3588
    .local p0, "sequenceOfSequences":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/de;->a(Z)Lrx/internal/operators/de;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3103
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3139
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3177
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3217
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3259
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3304
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3350
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3398
    .local p0, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "t2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "t3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "t4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "t5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "t6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "t7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "t8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "t9":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3038
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->d(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 3626
    .local p0, "sequenceOfSequences":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/de;->a(Z)Lrx/internal/operators/de;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3524
    .local p0, "first":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "second":Lrx/e;, "Lrx/e<+TT;>;"
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lrx/internal/util/InternalObservableUtils$f;

    invoke-static {p0, p1, v0}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6069
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6099
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6131
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6164
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6199
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6235
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6273
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "o3":Lrx/e;, "Lrx/e<+TT;>;"
    .local p3, "o4":Lrx/e;, "Lrx/e<+TT;>;"
    .local p4, "o5":Lrx/e;, "Lrx/e<+TT;>;"
    .local p5, "o6":Lrx/e;, "Lrx/e<+TT;>;"
    .local p6, "o7":Lrx/e;, "Lrx/e<+TT;>;"
    .local p7, "o8":Lrx/e;, "Lrx/e<+TT;>;"
    .local p8, "o9":Lrx/e;, "Lrx/e<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/Iterable;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6297
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/e<+TT;>;>;"
    invoke-static {p0}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->j(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lrx/e;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6040
    .local p0, "o1":Lrx/e;, "Lrx/e<+TT;>;"
    .local p1, "o2":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/e;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->g(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static l(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6346
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/e<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->j(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9305
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0}, Lrx/e;->v()Lrx/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d/c;->L()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final A(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 10321
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->e(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9330
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/cx;->a()Lrx/internal/operators/cx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final B(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 10355
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->f(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10458
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/e;->j(I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lrx/m;
    .locals 4

    .prologue
    .line 9979
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    .line 9980
    .local v2, "onNext":Lrx/c/c;, "Lrx/c/c<TT;>;"
    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lrx/c/c;

    .line 9981
    .local v1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    .line 9982
    .local v0, "onCompleted":Lrx/c/b;
    new-instance v3, Lrx/internal/util/c;

    invoke-direct {v3, v2, v1, v0}, Lrx/internal/util/c;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-virtual {p0, v3}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    return-object v3
.end method

.method public final D()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Lrx/schedulers/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11041
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->e(Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final D(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10793
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/dm;

    invoke-direct {v0, p1}, Lrx/internal/operators/dm;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final E()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Lrx/schedulers/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11347
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->f(Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final E(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10822
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "stopPredicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/dl;

    invoke-direct {v0, p1}, Lrx/internal/operators/dl;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final F()Lrx/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11388
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/d/b;->a(Lrx/e;)Lrx/d/b;

    move-result-object v0

    return-object v0
.end method

.method public final F(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "timeoutSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    const/4 v0, 0x0

    .line 11175
    invoke-virtual {p0, v0, p1, v0}, Lrx/e;->a(Lrx/c/o;Lrx/c/p;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final G()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11418
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/dt;->a()Lrx/internal/operators/dt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final G(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11444
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/be;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lrx/internal/operators/be;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final H()Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11641
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/du;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lrx/internal/operators/du;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final H(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11526
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/bf;

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final I()Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11748
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0}, Lrx/e;->H()Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->o(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final J()Lrx/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12665
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Lrx/internal/a/a;->a(J)Lrx/internal/a/a;

    move-result-object v0

    .line 12666
    .local v0, "ts":Lrx/e/a;, "Lrx/e/a<TT;>;"
    invoke-virtual {p0, v0}, Lrx/e;->b(Lrx/f;)Lrx/m;

    .line 12667
    return-object v0
.end method

.method public final a(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;TR;>;)TR;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "converter":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;TR;>;"
    invoke-interface {p1, p0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/util/concurrent/TimeUnit;)Lrx/d/c;
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8777
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/e;->a(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8812
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    if-gez p1, :cond_0

    .line 8813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    .line 8815
    invoke-static/range {v1 .. v6}, Lrx/internal/operators/cq;->a(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;I)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILrx/h;)Lrx/d/c;
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8843
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->g(I)Lrx/d/c;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/internal/operators/cq;->a(Lrx/d/c;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4577
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/e;->b(II)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)Lrx/e;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6512
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/cc;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cc;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lrx/e;
    .locals 1
    .param p1, "capacity"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7791
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cl;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cl;-><init>(J)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12374
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/operators/ea;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/ea;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V

    invoke-virtual {p0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;I)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4729
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/operators/bo;

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v8

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/bo;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V

    invoke-virtual {p0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4764
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/operators/bo;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/bo;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V

    invoke-virtual {p0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/e;)Lrx/e;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11265
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p4, "other":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/e;->a(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)Lrx/e;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11297
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p4, "other":Lrx/e;, "Lrx/e<+TT;>;"
    new-instance v1, Lrx/internal/operators/dp;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/dp;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)V

    invoke-virtual {p0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLrx/c/b;)Lrx/e;
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7816
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cl;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/cl;-><init>(JLrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLrx/c/b;Lrx/a$d;)Lrx/e;
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/c/b;
    .param p4, "overflowStrategy"    # Lrx/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/c/b;",
            "Lrx/a$d;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 7854
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cl;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/cl;-><init>(JLrx/c/b;Lrx/a$d;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLrx/h;)Lrx/e;
    .locals 1
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8369
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/au;->a(Lrx/e;JLrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5038
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lrx/internal/operators/bp;

    invoke-direct {v0, p1}, Lrx/internal/operators/bp;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12600
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT2;+TR;>;"
    new-instance v0, Lrx/internal/operators/ee;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/ee;-><init>(Ljava/lang/Iterable;Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6705
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/e;->C(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8276
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/aw;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/aw;-><init>(Lrx/e;Ljava/lang/Object;Lrx/c/q;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/b;)Lrx/e;
    .locals 4
    .param p1, "onCompleted"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5799
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    .line 5800
    .local v2, "onNext":Lrx/c/c;, "Lrx/c/c<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    .line 5801
    .local v1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/internal/util/b;

    invoke-direct {v0, v2, v1, p1}, Lrx/internal/util/b;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 5803
    .local v0, "observer":Lrx/f;, "Lrx/f<TT;>;"
    new-instance v3, Lrx/internal/operators/af;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v3}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v3

    return-object v3
.end method

.method public final a(Lrx/c/c;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5824
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNotification":Lrx/c/c;, "Lrx/c/c<Lrx/Notification<-TT;>;>;"
    new-instance v0, Lrx/internal/util/a;

    invoke-direct {v0, p1}, Lrx/internal/util/a;-><init>(Lrx/c/c;)V

    .line 5825
    .local v0, "observer":Lrx/f;, "Lrx/f<TT;>;"
    new-instance v1, Lrx/internal/operators/af;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lrx/c/o;Lrx/c/d;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<TR;>;",
            "Lrx/c/d",
            "<TR;-TT;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5073
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "stateFactory":Lrx/c/o;, "Lrx/c/o<TR;>;"
    .local p2, "collector":Lrx/c/d;, "Lrx/c/d<TR;-TT;>;"
    new-instance v0, Lrx/internal/operators/x;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/x;-><init>(Lrx/e;Lrx/c/o;Lrx/c/d;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/o;Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5456
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "subscriptionDelay":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    .local p2, "itemDelay":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    invoke-virtual {p0, p1}, Lrx/e;->c(Lrx/c/o;)Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/bt;

    invoke-direct {v1, p0, p2}, Lrx/internal/operators/bt;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/o;Lrx/c/p;Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11139
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    .local p3, "other":Lrx/e;, "Lrx/e<+TT;>;"
    if-nez p2, :cond_0

    .line 11140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timeoutSelector is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11142
    :cond_0
    new-instance v0, Lrx/internal/operators/dr;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/dr;-><init>(Lrx/c/o;Lrx/c/p;Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;I)Lrx/e;
    .locals 3
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6422
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 6423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6425
    :cond_0
    new-instance v0, Lrx/internal/operators/cb;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/cb;-><init>(Lrx/c/p;II)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;II)Lrx/e;
    .locals 3
    .param p2, "capacityHint"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;II)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    const/4 v0, 0x1

    .line 6452
    if-ge p2, v0, :cond_0

    .line 6453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacityHint > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6455
    :cond_0
    if-ge p3, v0, :cond_1

    .line 6456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrent > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6458
    :cond_1
    new-instance v0, Lrx/internal/operators/cb;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/cb;-><init>(Lrx/c/p;II)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;IJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 9
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8541
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/e;->a(Lrx/c/p;IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 7
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8581
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    if-gez p2, :cond_0

    .line 8582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 8584
    invoke-static/range {v0 .. v5}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/c/o;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;ILrx/h;)Lrx/e;
    .locals 2
    .param p2, "bufferSize"    # I
    .param p3, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;I",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8618
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;I)Lrx/c/o;

    move-result-object v0

    invoke-static {p1, p3}, Lrx/internal/util/InternalObservableUtils;->createReplaySelectorAndObserveOn(Lrx/c/p;Lrx/h;)Lrx/c/p;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 6
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8652
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/e;->a(Lrx/c/p;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 2
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8687
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0, p2, p3, p4, p5}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/c/o;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;)",
            "Lrx/e",
            "<",
            "Lrx/d/d",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 7162
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/cd;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/e",
            "<+TR;>;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6805
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    .local p2, "onError":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+Lrx/e<+TR;>;>;"
    .local p3, "onCompleted":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/e;->d(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/p;Lrx/c/o;I)Lrx/e;
    .locals 1
    .param p4, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/e",
            "<+TR;>;>;",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6842
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    .local p2, "onError":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+Lrx/e<+TR;>;>;"
    .local p3, "onCompleted":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/e;->d(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p4}, Lrx/e;->a(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/p;Lrx/c/o;Lrx/c/p;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/c/p",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11616
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lrx/c/p;, "Lrx/c/p<-TK;+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lrx/internal/operators/bf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/p;Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TR;>;",
            "Lrx/c/p",
            "<",
            "Lrx/c/c",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lrx/e",
            "<",
            "Lrx/d/d",
            "<TK;TR;>;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 7224
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    .local p3, "evictingMapFactory":Lrx/c/p;, "Lrx/c/p<Lrx/c/c<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    if-nez p3, :cond_0

    .line 7225
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "evictingMapFactory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7227
    :cond_0
    new-instance v0, Lrx/internal/operators/cd;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;Lrx/c/p;Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6873
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TU;>;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/cg;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cg;-><init>(Lrx/c/p;Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/c/q;I)Lrx/e;
    .locals 1
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6907
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TU;>;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/cg;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cg;-><init>(Lrx/c/p;Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p3}, Lrx/e;->a(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11210
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "timeoutSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    .local p2, "other":Lrx/e;, "Lrx/e<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/e;->a(Lrx/c/o;Lrx/c/p;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 1
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8397
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Void;>;+Lrx/e<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRepeatDematerializer(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lrx/internal/operators/au;->b(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 5778
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "comparator":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/bw;

    invoke-direct {v0, p1}, Lrx/internal/operators/bw;-><init>(Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/q;I)Lrx/e;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 11722
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "sortFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/du;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/du;-><init>(Lrx/c/q;I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e$b;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$b",
            "<+TR;-TT;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "operator":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    new-instance v0, Lrx/internal/operators/ao;

    iget-object v1, p0, Lrx/e;->a:Lrx/e$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ao;-><init>(Lrx/e$a;Lrx/e$b;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/e$c;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$c",
            "<-TT;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "transformer":Lrx/e$c;, "Lrx/e$c<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/e$c;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TTOpening;>;",
            "Lrx/c/p",
            "<-TTOpening;+",
            "Lrx/e",
            "<+TTClosing;>;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4824
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "bufferOpenings":Lrx/e;, "Lrx/e<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lrx/c/p;, "Lrx/c/p<-TTOpening;+Lrx/e<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/bn;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/bn;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "D1:",
            "Ljava/lang/Object;",
            "D2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TD1;>;>;",
            "Lrx/c/p",
            "<-TT2;+",
            "Lrx/e",
            "<TD2;>;>;",
            "Lrx/c/q",
            "<-TT;-",
            "Lrx/e",
            "<TT2;>;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7304
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "right":Lrx/e;, "Lrx/e<TT2;>;"
    .local p2, "leftDuration":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TD1;>;>;"
    .local p3, "rightDuration":Lrx/c/p;, "Lrx/c/p<-TT2;+Lrx/e<TD2;>;>;"
    .local p4, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-Lrx/e<TT2;>;+TR;>;"
    new-instance v0, Lrx/internal/operators/am;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/am;-><init>(Lrx/e;Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TU;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11828
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TU;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/eb;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/eb;-><init>(Lrx/e;Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/c/r;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/c/r",
            "<-TT;-TT1;-TT2;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11860
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "combiner":Lrx/c/r;, "Lrx/c/r<-TT;-TT1;-TT2;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-static {p3}, Lrx/c/aa;->a(Lrx/c/r;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/c/s;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/c/s",
            "<-TT;-TT1;-TT2;-TT3;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11897
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "combiner":Lrx/c/s;, "Lrx/c/s<-TT;-TT1;-TT2;-TT3;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x3

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x0

    invoke-static {p4}, Lrx/c/aa;->a(Lrx/c/s;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/t;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/e",
            "<TT4;>;",
            "Lrx/c/t",
            "<-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11937
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "o4":Lrx/e;, "Lrx/e<TT4;>;"
    .local p5, "combiner":Lrx/c/t;, "Lrx/c/t<-TT;-TT1;-TT2;-TT3;-TT4;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x4

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-static {p5}, Lrx/c/aa;->a(Lrx/c/t;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/u;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/e",
            "<TT4;>;",
            "Lrx/e",
            "<TT5;>;",
            "Lrx/c/u",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11979
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "o4":Lrx/e;, "Lrx/e<TT4;>;"
    .local p5, "o5":Lrx/e;, "Lrx/e<TT5;>;"
    .local p6, "combiner":Lrx/c/u;, "Lrx/c/u<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x5

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x0

    invoke-static {p6}, Lrx/c/aa;->a(Lrx/c/u;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/v;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/e",
            "<TT4;>;",
            "Lrx/e",
            "<TT5;>;",
            "Lrx/e",
            "<TT6;>;",
            "Lrx/c/v",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12024
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "o4":Lrx/e;, "Lrx/e<TT4;>;"
    .local p5, "o5":Lrx/e;, "Lrx/e<TT5;>;"
    .local p6, "o6":Lrx/e;, "Lrx/e<TT6;>;"
    .local p7, "combiner":Lrx/c/v;, "Lrx/c/v<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x6

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x0

    invoke-static {p7}, Lrx/c/aa;->a(Lrx/c/v;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/w;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/e",
            "<TT4;>;",
            "Lrx/e",
            "<TT5;>;",
            "Lrx/e",
            "<TT6;>;",
            "Lrx/e",
            "<TT7;>;",
            "Lrx/c/w",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12072
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "o4":Lrx/e;, "Lrx/e<TT4;>;"
    .local p5, "o5":Lrx/e;, "Lrx/e<TT5;>;"
    .local p6, "o6":Lrx/e;, "Lrx/e<TT6;>;"
    .local p7, "o7":Lrx/e;, "Lrx/e<TT7;>;"
    .local p8, "combiner":Lrx/c/w;, "Lrx/c/w<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x7

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x0

    invoke-static {p8}, Lrx/c/aa;->a(Lrx/c/w;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/c/x;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TT1;>;",
            "Lrx/e",
            "<TT2;>;",
            "Lrx/e",
            "<TT3;>;",
            "Lrx/e",
            "<TT4;>;",
            "Lrx/e",
            "<TT5;>;",
            "Lrx/e",
            "<TT6;>;",
            "Lrx/e",
            "<TT7;>;",
            "Lrx/e",
            "<TT8;>;",
            "Lrx/c/x",
            "<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12122
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "o1":Lrx/e;, "Lrx/e<TT1;>;"
    .local p2, "o2":Lrx/e;, "Lrx/e<TT2;>;"
    .local p3, "o3":Lrx/e;, "Lrx/e<TT3;>;"
    .local p4, "o4":Lrx/e;, "Lrx/e<TT4;>;"
    .local p5, "o5":Lrx/e;, "Lrx/e<TT5;>;"
    .local p6, "o6":Lrx/e;, "Lrx/e<TT6;>;"
    .local p7, "o7":Lrx/e;, "Lrx/e<TT7;>;"
    .local p8, "o8":Lrx/e;, "Lrx/e<TT8;>;"
    .local p9, "combiner":Lrx/c/x;, "Lrx/c/x<-TT;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/16 v1, 0x8

    new-array v1, v1, [Lrx/e;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const/4 v2, 0x7

    aput-object p8, v1, v2

    const/4 v2, 0x0

    invoke-static {p9}, Lrx/c/aa;->a(Lrx/c/x;)Lrx/c/y;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/f;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5852
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    new-instance v0, Lrx/internal/operators/af;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7617
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/e;->a(Lrx/h;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;I)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            "I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7651
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lrx/e;->a(Lrx/h;ZI)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;Z)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            "Z)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7686
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-virtual {p0, p1, p2, v0}, Lrx/e;->a(Lrx/h;ZI)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;ZI)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            "ZI)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7722
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    instance-of v0, p0, Lrx/internal/util/k;

    if-eqz v0, :cond_0

    .line 7723
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/k;->h(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 7725
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    :cond_0
    new-instance v0, Lrx/internal/operators/ck;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/ck;-><init>(Lrx/h;ZI)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/i;

    invoke-static {p0}, Lrx/internal/operators/ay;->a(Lrx/e;)Lrx/internal/operators/ay;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/i;-><init>(Lrx/i$a;)V

    return-object v0
.end method

.method public final a(Lrx/l;)Lrx/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10142
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/l;->onStart()V

    .line 10144
    iget-object v3, p0, Lrx/e;->a:Lrx/e$a;

    invoke-static {p0, v3}, Lrx/f/c;->a(Lrx/e;Lrx/e$a;)Lrx/e$a;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/e$a;->call(Ljava/lang/Object;)V

    .line 10145
    invoke-static {p1}, Lrx/f/c;->a(Lrx/m;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 10162
    :goto_0
    return-object v3

    .line 10146
    :catch_0
    move-exception v0

    .line 10148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10151
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10162
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v3

    goto :goto_0

    .line 10152
    :catch_1
    move-exception v1

    .line 10153
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10156
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10158
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10160
    throw v2
.end method

.method public final a(Lrx/c/c;Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7091
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;)Lrx/m;

    .line 7092
    return-void
.end method

.method public final a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V
    .locals 0
    .param p3, "onComplete"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7121
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/e;->b(Lrx/c/c;Lrx/c/c;Lrx/c/b;)Lrx/m;

    .line 7122
    return-void
.end method

.method public b()Lrx/b;
    .locals 1
    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lrx/e;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4954
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->c(I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4607
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/bm;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/bm;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10516
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/e;->b(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10549
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/di;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/di;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lrx/e;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8343
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/au;->b(Lrx/e;J)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;I)Lrx/e;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12438
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/e;->b(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12474
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7747
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->isInstanceOf(Ljava/lang/Class;)Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->a(Ljava/lang/Class;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5211
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->equalsWith(Ljava/lang/Object;)Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->k(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9720
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9748
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9778
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9810
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4, p5}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9844
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p6}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9880
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p7}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9918
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p8}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9958
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    .local p9, "t9":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p9}, Lrx/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7481
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/e;->k(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 9253
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/cu;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/cu;-><init>(Ljava/lang/Object;Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/b;)Lrx/e;
    .locals 1
    .param p1, "subscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5955
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/bz;

    invoke-direct {v0, p1}, Lrx/internal/operators/bz;-><init>(Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/c;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5876
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    .line 5877
    .local v2, "onNext":Lrx/c/c;, "Lrx/c/c<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    .line 5878
    .local v1, "onCompleted":Lrx/c/b;
    new-instance v0, Lrx/internal/util/b;

    invoke-direct {v0, v2, p1, v1}, Lrx/internal/util/b;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 5880
    .local v0, "observer":Lrx/f;, "Lrx/f<TT;>;"
    new-instance v3, Lrx/internal/operators/af;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v3}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v3

    return-object v3
.end method

.method public final b(Lrx/c/o;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TTClosing;>;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4551
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "bufferClosingSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/bl;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/bl;-><init>(Lrx/c/o;I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/o;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TV;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11099
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TV;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrx/e;->a(Lrx/c/o;Lrx/c/p;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4483
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/bi;

    invoke-direct {v0, p1}, Lrx/internal/operators/bi;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;I)Lrx/e;
    .locals 2
    .param p2, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6767
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/k;

    if-ne v0, v1, :cond_0

    .line 6768
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v0

    .line 6770
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/e;->a(Lrx/e;I)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lrx/c/p;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 11474
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/be;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/be;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 11503
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;TV;>;>;"
    new-instance v0, Lrx/internal/operators/be;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/be;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7000
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lrx/internal/operators/cg;->a(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lrx/e;->a(Lrx/c/p;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;Lrx/c/q;I)Lrx/e;
    .locals 1
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/c/q",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7040
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/c/q;, "Lrx/c/q<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lrx/internal/operators/cg;->a(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lrx/e;->a(Lrx/c/p;Lrx/c/q;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 2
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8718
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;)Lrx/c/o;

    move-result-object v0

    invoke-static {p1, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySelectorAndObserveOn(Lrx/c/p;Lrx/h;)Lrx/c/p;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<TT;TT;TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8228
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "accumulator":Lrx/c/q;, "Lrx/c/q<TT;TT;TT;>;"
    new-instance v0, Lrx/internal/operators/av;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/av;-><init>(Lrx/e;Lrx/c/q;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/e;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TTOpening;>;",
            "Lrx/c/p",
            "<-TTOpening;+",
            "Lrx/e",
            "<+TTClosing;>;>;)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12539
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "windowOpenings":Lrx/e;, "Lrx/e<+TTOpening;>;"
    .local p2, "closingSelector":Lrx/c/p;, "Lrx/c/p<-TTOpening;+Lrx/e<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/dz;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/dz;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftDuration:Ljava/lang/Object;",
            "TRightDuration:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TTRight;>;",
            "Lrx/c/p",
            "<TT;",
            "Lrx/e",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/c/p",
            "<TTRight;",
            "Lrx/e",
            "<TTRightDuration;>;>;",
            "Lrx/c/q",
            "<TT;TTRight;TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7386
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "right":Lrx/e;, "Lrx/e<TTRight;>;"
    .local p2, "leftDurationSelector":Lrx/c/p;, "Lrx/c/p<TT;Lrx/e<TTLeftDuration;>;>;"
    .local p3, "rightDurationSelector":Lrx/c/p;, "Lrx/c/p<TTRight;Lrx/e<TTRightDuration;>;>;"
    .local p4, "resultSelector":Lrx/c/q;, "Lrx/c/q<TT;TTRight;TR;>;"
    new-instance v0, Lrx/internal/operators/an;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/an;-><init>(Lrx/e;Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/q;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/e;Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12645
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/e;->c(Lrx/e;Lrx/e;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8317
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b([Lrx/e;Lrx/c/y;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/e",
            "<*>;",
            "Lrx/c/y",
            "<TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12152
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "others":[Lrx/e;, "[Lrx/e<*>;"
    .local p2, "combiner":Lrx/c/y;, "Lrx/c/y<TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/c;Lrx/c/c;)Lrx/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10039
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 10040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "onNext can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10042
    :cond_0
    if-nez p2, :cond_1

    .line 10043
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "onError can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10046
    :cond_1
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    .line 10047
    .local v0, "onCompleted":Lrx/c/b;
    new-instance v1, Lrx/internal/util/c;

    invoke-direct {v1, p1, p2, v0}, Lrx/internal/util/c;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-virtual {p0, v1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    return-object v1
.end method

.method public final b(Lrx/c/c;Lrx/c/c;Lrx/c/b;)Lrx/m;
    .locals 2
    .param p3, "onCompleted"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            ")",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10078
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 10079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10081
    :cond_0
    if-nez p2, :cond_1

    .line 10082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10084
    :cond_1
    if-nez p3, :cond_2

    .line 10085
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10088
    :cond_2
    new-instance v0, Lrx/internal/util/c;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/util/c;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/f;)Lrx/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10109
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    instance-of v0, p1, Lrx/l;

    if-eqz v0, :cond_0

    .line 10110
    check-cast p1, Lrx/l;

    .end local p1    # "observer":Lrx/f;, "Lrx/f<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    .line 10115
    :goto_0
    return-object v0

    .line 10112
    .restart local p1    # "observer":Lrx/f;, "Lrx/f<-TT;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 10113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10115
    :cond_1
    new-instance v0, Lrx/internal/util/g;

    invoke-direct {v0, p1}, Lrx/internal/util/g;-><init>(Lrx/f;)V

    invoke-virtual {p0, v0}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lrx/l;)Lrx/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10207
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    invoke-static {p1, p0}, Lrx/e;->a(Lrx/l;Lrx/e;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/h;)Lrx/d/c;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8928
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0}, Lrx/e;->x()Lrx/d/c;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/cq;->a(Lrx/d/c;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lrx/e;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5013
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/h;->e(Lrx/e;I)Lrx/internal/operators/h;

    move-result-object v0

    return-object v0
.end method

.method public final c(II)Lrx/e;
    .locals 3
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12266
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    if-gtz p1, :cond_0

    .line 12267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12269
    :cond_0
    if-gtz p2, :cond_1

    .line 12270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12272
    :cond_1
    new-instance v0, Lrx/internal/operators/dy;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/dy;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(IJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10659
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/e;->b(IJLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10690
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lrx/e;->b(IJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)Lrx/e;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8987
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/au;->a(Lrx/e;J)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4637
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/e;->c(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4669
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v1, Lrx/internal/operators/bo;

    const v7, 0x7fffffff

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/bo;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/h;)V

    invoke-virtual {p0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4697
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const v5, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/e;->a(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4795
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lrx/e;->c(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5386
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->j(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9414
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/b;)Lrx/e;
    .locals 4
    .param p1, "onTerminate"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5981
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    .line 5982
    .local v2, "onNext":Lrx/c/c;, "Lrx/c/c<TT;>;"
    invoke-static {p1}, Lrx/c/m;->b(Lrx/c/b;)Lrx/c/c;

    move-result-object v1

    .line 5984
    .local v1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/internal/util/b;

    invoke-direct {v0, v2, v1, p1}, Lrx/internal/util/b;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 5986
    .local v0, "observer":Lrx/f;, "Lrx/f<TT;>;"
    new-instance v3, Lrx/internal/operators/af;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v3}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v3

    return-object v3
.end method

.method public final c(Lrx/c/c;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5901
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    .line 5902
    .local v2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    .line 5903
    .local v1, "onCompleted":Lrx/c/b;
    new-instance v0, Lrx/internal/util/b;

    invoke-direct {v0, p1, v2, v1}, Lrx/internal/util/b;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    .line 5905
    .local v0, "observer":Lrx/f;, "Lrx/f<TT;>;"
    new-instance v3, Lrx/internal/operators/af;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/af;-><init>(Lrx/e;Lrx/f;)V

    invoke-static {v3}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v3

    return-object v3
.end method

.method public final c(Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<TU;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5609
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "subscriptionDelay":Lrx/c/o;, "Lrx/c/o<+Lrx/e<TU;>;>;"
    new-instance v0, Lrx/internal/operators/ad;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ad;-><init>(Lrx/e;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/p;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5102
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    instance-of v1, p0, Lrx/internal/util/k;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 5103
    check-cast v0, Lrx/internal/util/k;

    .line 5104
    .local v0, "scalar":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    invoke-virtual {v0, p1}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v1

    .line 5106
    .end local v0    # "scalar":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/internal/operators/z;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lrx/internal/operators/z;-><init>(Lrx/e;Lrx/c/p;II)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    goto :goto_0
.end method

.method public final c(Lrx/c/p;I)Lrx/e;
    .locals 1
    .param p2, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6967
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/ah;->a(Lrx/e;Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/p;Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11554
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/bf;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/p;Lrx/c/p;Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;",
            "Lrx/c/p",
            "<-TT;+TV;>;",
            "Lrx/c/o",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 11584
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/c/p;, "Lrx/c/p<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/c/o;, "Lrx/c/o<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/bf;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/bf;-><init>(Lrx/e;Lrx/c/p;Lrx/c/p;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/p;Lrx/h;)Lrx/e;
    .locals 1
    .param p2, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/e",
            "<*>;>;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9096
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Throwable;>;+Lrx/e<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRetryDematerializer(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/c/p;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/q;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9011
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/e;->d()Lrx/e;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/cr;

    invoke-direct {v1, p1}, Lrx/internal/operators/cr;-><init>(Lrx/c/q;)V

    invoke-virtual {v0, v1}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/e;I)Lrx/e;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TB;>;I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4886
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "boundary":Lrx/e;, "Lrx/e<TB;>;"
    new-instance v0, Lrx/internal/operators/bl;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/bl;-><init>(Lrx/e;I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lrx/e/a;
    .locals 1
    .param p1, "initialRequestAmount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/e/a",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12685
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p1, p2}, Lrx/internal/a/a;->a(J)Lrx/internal/a/a;

    move-result-object v0

    .line 12686
    .local v0, "ts":Lrx/e/a;, "Lrx/e/a<TT;>;"
    invoke-virtual {p0, v0}, Lrx/e;->b(Lrx/f;)Lrx/m;

    .line 12687
    return-object v0
.end method

.method public final d()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3417
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lrx/e;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6485
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cc;

    invoke-direct {v0, p1}, Lrx/internal/operators/cc;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(JJLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12304
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const v7, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12338
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lrx/e;->a(JJLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5318
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->d(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5360
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/br;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/br;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Iterable;Lrx/c/y;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lrx/e",
            "<*>;>;",
            "Lrx/c/y",
            "<TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 12181
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "others":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lrx/e<*>;>;"
    .local p2, "combiner":Lrx/c/y;, "Lrx/c/y<TR;>;"
    new-instance v0, Lrx/internal/operators/ec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lrx/internal/operators/ec;-><init>(Lrx/e;[Lrx/e;Ljava/lang/Iterable;Lrx/c/y;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6679
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/e;->j(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/b;)Lrx/e;
    .locals 1
    .param p1, "unsubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6015
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ca;

    invoke-direct {v0, p1}, Lrx/internal/operators/ca;-><init>(Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/c;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5931
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onRequest":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Long;>;"
    new-instance v0, Lrx/internal/operators/by;

    invoke-direct {v0, p1}, Lrx/internal/operators/by;-><init>(Lrx/c/c;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/o;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+",
            "Lrx/e",
            "<+TTClosing;>;>;)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12211
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "closingSelector":Lrx/c/o;, "Lrx/c/o<+Lrx/e<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/dx;

    invoke-direct {v0, p1}, Lrx/internal/operators/dx;-><init>(Lrx/c/o;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/p;)Lrx/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    const/4 v2, 0x2

    .line 5133
    instance-of v1, p0, Lrx/internal/util/k;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 5134
    check-cast v0, Lrx/internal/util/k;

    .line 5135
    .local v0, "scalar":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    invoke-virtual {v0, p1}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v1

    .line 5137
    .end local v0    # "scalar":Lrx/internal/util/k;, "Lrx/internal/util/k<TT;>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/internal/operators/z;

    invoke-direct {v1, p0, p1, v2, v2}, Lrx/internal/operators/z;-><init>(Lrx/e;Lrx/c/p;II)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    goto :goto_0
.end method

.method public final d(Lrx/c/p;I)Lrx/e;
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;I)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8505
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0, p2}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;I)Lrx/c/o;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/q;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<TT;TT;TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9204
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "accumulator":Lrx/c/q;, "Lrx/c/q<TT;TT;TT;>;"
    new-instance v0, Lrx/internal/operators/cu;

    invoke-direct {v0, p1}, Lrx/internal/operators/cu;-><init>(Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10288
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    instance-of v0, p0, Lrx/internal/util/k;

    if-eqz v0, :cond_0

    .line 10289
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/k;->h(Lrx/h;)Lrx/e;

    move-result-object v0

    .line 10291
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    :cond_0
    new-instance v0, Lrx/internal/operators/dd;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/dd;-><init>(Lrx/e;Lrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7510
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->j(I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5510
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->e(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5535
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/bs;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/bs;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7455
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/e;->k(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->f(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/b;)Lrx/e;
    .locals 1
    .param p1, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6588
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/bx;

    invoke-direct {v0, p1}, Lrx/internal/operators/bx;-><init>(Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5164
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-static {p0, p1, v0}, Lrx/internal/operators/ah;->a(Lrx/e;Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/q;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11665
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "sortFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/du;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/du;-><init>(Lrx/c/q;I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/schedulers/b",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11064
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/do;

    invoke-direct {v0, p1}, Lrx/internal/operators/do;-><init>(Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 7064
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->g(Lrx/c/c;)Lrx/m;

    .line 7065
    return-void
.end method

.method public final f()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4524
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/bk;->a()Lrx/internal/operators/bk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lrx/e;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 8186
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    if-gtz p1, :cond_0

    .line 8187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8189
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/ck;->a(I)Lrx/e$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5557
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->f(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5583
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ab;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/ab;-><init>(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9385
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/cx;

    invoke-direct {v0, p1}, Lrx/internal/operators/cx;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/b;)Lrx/e;
    .locals 1
    .param p1, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6612
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/bx;

    invoke-direct {v0, p1}, Lrx/internal/operators/bx;-><init>(Lrx/c/b;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/c;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7880
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onDrop":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    new-instance v0, Lrx/internal/operators/cm;

    invoke-direct {v0, p1}, Lrx/internal/operators/cm;-><init>(Lrx/c/c;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TU;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5279
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "debounceSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TU;>;>;"
    new-instance v0, Lrx/internal/operators/bq;

    invoke-direct {v0, p1}, Lrx/internal/operators/bq;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/q;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 11773
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "sortFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1}, Lrx/e;->e(Lrx/c/q;)Lrx/e;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/e;->o(Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/schedulers/c",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11371
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ds;

    invoke-direct {v0, p1}, Lrx/internal/operators/ds;-><init>(Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lrx/d/c;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8746
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/cq;->e(Lrx/e;I)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)Lrx/d/c;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8871
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->g(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8901
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/cq;->a(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4941
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/h;->u(Lrx/e;)Lrx/internal/operators/h;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9694
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<TU;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5487
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "itemDelay":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<TU;>;>;"
    new-instance v0, Lrx/internal/operators/bt;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/bt;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4506
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->a(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11794
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/dv;

    invoke-direct {v0, p1}, Lrx/internal/operators/dv;-><init>(Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lrx/c/c;)Lrx/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 10006
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    if-nez p1, :cond_0

    .line 10007
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "onNext can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10010
    :cond_0
    sget-object v1, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lrx/c/c;

    .line 10011
    .local v1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    .line 10012
    .local v0, "onCompleted":Lrx/c/b;
    new-instance v2, Lrx/internal/util/c;

    invoke-direct {v2, p1, v1, v0}, Lrx/internal/util/c;-><init>(Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-virtual {p0, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v2

    return-object v2
.end method

.method public final h()Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5231
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lrx/internal/util/InternalObservableUtils$g;

    invoke-virtual {p0, v0, v1}, Lrx/e;->a(Ljava/lang/Object;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9437
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cy;

    invoke-direct {v0, p1}, Lrx/internal/operators/cy;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9122
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->h(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9150
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ct;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/ct;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/Iterable;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9670
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lrx/e;->d(Ljava/lang/Iterable;)Lrx/e;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TU;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5706
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/bv;

    invoke-direct {v0, p1}, Lrx/internal/operators/bv;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TB;>;)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 4854
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "boundary":Lrx/e;, "Lrx/e<TB;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lrx/e;->c(Lrx/e;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5253
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lrx/internal/util/InternalObservableUtils$h;

    invoke-virtual {p0, v0, v1}, Lrx/e;->a(Ljava/lang/Object;Lrx/c/q;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9518
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/cz;

    invoke-direct {v0, p1}, Lrx/internal/operators/cz;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9462
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->i(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9489
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/az;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/az;-><init>(Lrx/e;JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TU;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5752
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/bw;

    invoke-direct {v0, p1}, Lrx/internal/operators/bw;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5188
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/e",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 5662
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/bu;->a()Lrx/internal/operators/bu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10383
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/dg;

    invoke-direct {v0, p1}, Lrx/internal/operators/dg;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9545
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->j(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9574
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/da;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/da;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 6396
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/e;->a(Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5415
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "alternate":Lrx/e;, "Lrx/e<+TT;>;"
    if-nez p1, :cond_0

    .line 5416
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alternate is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5418
    :cond_0
    new-instance v0, Lrx/internal/operators/df;

    invoke-direct {v0, p1}, Lrx/internal/operators/df;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5682
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/bv;->a()Lrx/internal/operators/bv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10483
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    if-nez p1, :cond_0

    .line 10484
    invoke-virtual {p0}, Lrx/e;->n()Lrx/e;

    move-result-object v0

    .line 10488
    :goto_0
    return-object v0

    .line 10485
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10486
    new-instance v0, Lrx/internal/operators/ba;

    invoke-direct {v0, p0}, Lrx/internal/operators/ba;-><init>(Lrx/e;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    goto :goto_0

    .line 10488
    :cond_1
    new-instance v0, Lrx/internal/operators/dh;

    invoke-direct {v0, p1}, Lrx/internal/operators/dh;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final k(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10407
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->k(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final k(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10434
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/dj;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/dj;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6539
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/bj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/bj;-><init>(Lrx/c/p;Z)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TU;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 5633
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<TU;>;"
    if-nez p1, :cond_0

    .line 5634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5636
    :cond_0
    new-instance v0, Lrx/internal/operators/ac;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ac;-><init>(Lrx/e;Lrx/e;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5727
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/bw;->a()Lrx/internal/operators/bw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final l(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10631
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/e;->k(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final l(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10577
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->l(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final l(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10608
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/di;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/di;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6562
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/ag;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ag;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6633
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/e;->j(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m(I)Lrx/e;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 11694
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/du;

    invoke-direct {v0, p1}, Lrx/internal/operators/du;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10715
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/e;->l(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 10744
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/e;->l(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->G()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6656
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/e;->C(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7583
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "t1":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p0, p1}, Lrx/e;->d(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7324
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/ce;->a()Lrx/internal/operators/ce;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final n(I)Lrx/e;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12237
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/e;->c(II)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final n(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "windowDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10849
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/e;->n(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final n(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "skipDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10879
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/dn;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/dn;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6733
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/k;

    if-ne v0, v1, :cond_0

    .line 6734
    check-cast p0, Lrx/internal/util/k;

    .end local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/k;->I(Lrx/c/p;)Lrx/e;

    move-result-object v0

    .line 6736
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/e;, "Lrx/e<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final n(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8012
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "resumeSequence":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/co;->a(Lrx/e;)Lrx/internal/operators/co;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7346
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lrx/e$b;

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final o(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10908
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/e;->h(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final o(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10940
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/e;->h(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6934
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "collectionSelector":Lrx/c/p;, "Lrx/c/p<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    sget v0, Lrx/internal/util/j;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/e;->c(Lrx/c/p;I)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8091
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "resumeSequence":Lrx/e;, "Lrx/e<+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/co;->b(Lrx/e;)Lrx/internal/operators/co;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7407
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/e;->k(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final p(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10978
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/e;->d(JLjava/util/concurrent/TimeUnit;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final p(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11020
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/e;->d(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TK;>;)",
            "Lrx/e",
            "<",
            "Lrx/d/d",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 7264
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "keySelector":Lrx/c/p;, "Lrx/c/p<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/cd;

    invoke-direct {v0, p1}, Lrx/internal/operators/cd;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TU;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9176
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "sampler":Lrx/e;, "Lrx/e<TU;>;"
    new-instance v0, Lrx/internal/operators/cs;

    invoke-direct {v0, p1}, Lrx/internal/operators/cs;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 7559
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/ch;->a()Lrx/internal/operators/ch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11236
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/e;->a(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 11326
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/e;->a(JLjava/util/concurrent/TimeUnit;Lrx/e;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7432
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/e;->k(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TU;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9599
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<TU;>;"
    new-instance v0, Lrx/internal/operators/db;

    invoke-direct {v0, p1}, Lrx/internal/operators/db;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7767
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/cl;->a()Lrx/internal/operators/cl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final r(JLjava/util/concurrent/TimeUnit;)Lrx/e;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12404
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lrx/e;->d(JJLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final r(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/e;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/h;",
            ")",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12507
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    const v5, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/e;->b(JLjava/util/concurrent/TimeUnit;ILrx/h;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TR;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7534
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/ap;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ap;-><init>(Lrx/e;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9646
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "values":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p1, p0}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7903
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/cm;->a()Lrx/internal/operators/cm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/e",
            "<+TT;>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7972
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "resumeFunction":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+Lrx/e<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/co;

    invoke-direct {v0, p1}, Lrx/internal/operators/co;-><init>(Lrx/c/p;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final s(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TE;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 10769
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TE;>;"
    new-instance v0, Lrx/internal/operators/dk;

    invoke-direct {v0, p1}, Lrx/internal/operators/dk;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7933
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/cn;->a()Lrx/internal/operators/cn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final t(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8048
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "resumeFunction":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+TT;>;"
    invoke-static {p1}, Lrx/internal/operators/co;->a(Lrx/c/p;)Lrx/internal/operators/co;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final t(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<TU;>;)",
            "Lrx/e",
            "<",
            "Lrx/e",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 12566
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "boundary":Lrx/e;, "Lrx/e<TU;>;"
    new-instance v0, Lrx/internal/operators/dw;

    invoke-direct {v0, p1}, Lrx/internal/operators/dw;-><init>(Lrx/e;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 8111
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/internal/operators/ae;

    invoke-direct {v0, p0}, Lrx/internal/operators/ae;-><init>(Lrx/e;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8163
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/cp;->c(Lrx/e;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lrx/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8134
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/cp;->u(Lrx/e;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final v(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8423
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Void;>;+Lrx/e<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRepeatDematerializer(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/au;->b(Lrx/e;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8295
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/au;->b(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final w(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<TT;>;+",
            "Lrx/e",
            "<TR;>;>;)",
            "Lrx/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8474
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "selector":Lrx/c/p;, "Lrx/c/p<-Lrx/e<TT;>;+Lrx/e<TR;>;>;"
    invoke-static {p0}, Lrx/internal/util/InternalObservableUtils;->createReplaySupplier(Lrx/e;)Lrx/c/o;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/internal/operators/cq;->c(Lrx/c/o;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lrx/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8447
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/cq;->u(Lrx/e;)Lrx/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final x(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9066
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Throwable;>;+Lrx/e<*>;>;"
    invoke-static {p1}, Lrx/internal/util/InternalObservableUtils;->createRetryDematerializer(Lrx/c/p;)Lrx/c/p;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/au;->a(Lrx/e;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8956
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/au;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final y(Lrx/c/p;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9359
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/e;->l(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->B()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final z()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9280
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {}, Lrx/internal/operators/cw;->a()Lrx/internal/operators/cw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final z(Lrx/c/p;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9622
    .local p0, "this":Lrx/e;, "Lrx/e<TT;>;"
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/dc;

    invoke-static {p1}, Lrx/internal/operators/dc;->a(Lrx/c/p;)Lrx/c/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/dc;-><init>(Lrx/c/q;)V

    invoke-virtual {p0, v0}, Lrx/e;->a(Lrx/e$b;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
