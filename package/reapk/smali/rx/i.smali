.class public Lrx/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/i$b;,
        Lrx/i$a;
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
.field final a:Lrx/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "f":Lrx/e$a;, "Lrx/e$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lrx/internal/operators/en;

    invoke-direct {v0, p1}, Lrx/internal/operators/en;-><init>(Lrx/e$a;)V

    invoke-static {v0}, Lrx/f/c;->a(Lrx/i$a;)Lrx/i$a;

    move-result-object v0

    iput-object v0, p0, Lrx/i;->a:Lrx/i$a;

    .line 86
    return-void
.end method

.method protected constructor <init>(Lrx/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "f":Lrx/i$a;, "Lrx/i$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lrx/f/c;->a(Lrx/i$a;)Lrx/i$a;

    move-result-object v0

    iput-object v0, p0, Lrx/i;->a:Lrx/i$a;

    .line 69
    return-void
.end method

.method public static a(Lrx/i;Lrx/i;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->b(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    .local p7, "t8":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static {p7}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    .local p7, "t8":Lrx/i;, "Lrx/i<+TT;>;"
    .local p8, "t9":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/e;->b(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Lrx/c/y;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/i",
            "<*>;>;",
            "Lrx/c/y",
            "<+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1310
    .local p0, "singles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/i<*>;>;"
    .local p1, "zipFunction":Lrx/c/y;, "Lrx/c/y<+TR;>;"
    invoke-static {p0}, Lrx/i;->a(Ljava/lang/Iterable;)[Lrx/i;

    move-result-object v0

    .line 1311
    .local v0, "iterableToArray":[Lrx/i;
    invoke-static {v0, p1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/l;->b(Ljava/lang/Object;)Lrx/internal/util/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/i;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lrx/i$1;

    invoke-direct {v0, p0}, Lrx/i$1;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/internal/operators/ek;

    invoke-direct {v0, p0}, Lrx/internal/operators/ek;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/internal/operators/em;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lrx/internal/operators/em;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/i;
    .locals 3
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
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    if-nez p3, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    new-instance v0, Lrx/internal/operators/em;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/em;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;Lrx/h;)Lrx/i;
    .locals 1
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
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/i;->a(Ljava/util/concurrent/Future;)Lrx/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/i;->b(Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<",
            "Lrx/j",
            "<TT;>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 612
    .local p0, "producer":Lrx/c/c;, "Lrx/c/c<Lrx/j<TT;>;>;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "producer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    new-instance v0, Lrx/internal/operators/el;

    invoke-direct {v0, p0}, Lrx/internal/operators/el;-><init>(Lrx/c/c;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;)Lrx/i;
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
            "Lrx/i",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2645
    .local p0, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p1, "singleFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/i<+TT;>;>;"
    .local p2, "disposeAction":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/i;->a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/i;
    .locals 2
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
            "Lrx/i",
            "<+TT;>;>;",
            "Lrx/c/c",
            "<-TResource;>;Z)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2682
    .local p0, "resourceFactory":Lrx/c/o;, "Lrx/c/o<TResource;>;"
    .local p1, "singleFactory":Lrx/c/p;, "Lrx/c/p<-TResource;+Lrx/i<+TT;>;>;"
    .local p2, "disposeAction":Lrx/c/c;, "Lrx/c/c<-TResource;>;"
    if-nez p0, :cond_0

    .line 2683
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2685
    :cond_0
    if-nez p1, :cond_1

    .line 2686
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "singleFactory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2688
    :cond_1
    if-nez p2, :cond_2

    .line 2689
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposeAction is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2691
    :cond_2
    new-instance v0, Lrx/internal/operators/et;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/et;-><init>(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i$a;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i$a",
            "<TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "f":Lrx/i$a;, "Lrx/i$a<TT;>;"
    new-instance v0, Lrx/i;

    invoke-direct {v0, p0}, Lrx/i;-><init>(Lrx/i$a;)V

    return-object v0
.end method

.method public static a(Lrx/i;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+",
            "Lrx/i",
            "<+TT;>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "source":Lrx/i;, "Lrx/i<+Lrx/i<+TT;>;>;"
    instance-of v0, p0, Lrx/internal/util/l;

    if-eqz v0, :cond_0

    .line 660
    check-cast p0, Lrx/internal/util/l;

    .end local p0    # "source":Lrx/i;, "Lrx/i<+Lrx/i<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/o;->c()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/l;->i(Lrx/c/p;)Lrx/i;

    move-result-object v0

    .line 662
    .restart local p0    # "source":Lrx/i;, "Lrx/i<+Lrx/i<+TT;>;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/i$10;

    invoke-direct {v0, p0}, Lrx/i$10;-><init>(Lrx/i;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/c/q;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lrx/i$11;

    invoke-direct {v1, p2}, Lrx/i$11;-><init>(Lrx/c/q;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/c/r;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/c/r",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 994
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "zipFunction":Lrx/c/r;, "Lrx/c/r<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance v1, Lrx/i$12;

    invoke-direct {v1, p3}, Lrx/i$12;-><init>(Lrx/c/r;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/s;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/c/s",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "zipFunction":Lrx/c/s;, "Lrx/c/s<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance v1, Lrx/i$13;

    invoke-direct {v1, p4}, Lrx/i$13;-><init>(Lrx/c/s;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/t;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/i",
            "<+TT5;>;",
            "Lrx/c/t",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "s5":Lrx/i;, "Lrx/i<+TT5;>;"
    .local p5, "zipFunction":Lrx/c/t;, "Lrx/c/t<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/i;

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

    new-instance v1, Lrx/i$14;

    invoke-direct {v1, p5}, Lrx/i$14;-><init>(Lrx/c/t;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/u;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/i",
            "<+TT5;>;",
            "Lrx/i",
            "<+TT6;>;",
            "Lrx/c/u",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "s5":Lrx/i;, "Lrx/i<+TT5;>;"
    .local p5, "s6":Lrx/i;, "Lrx/i<+TT6;>;"
    .local p6, "zipFunction":Lrx/c/u;, "Lrx/c/u<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/i;

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

    new-instance v1, Lrx/i$15;

    invoke-direct {v1, p6}, Lrx/i$15;-><init>(Lrx/c/u;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/v;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/i",
            "<+TT5;>;",
            "Lrx/i",
            "<+TT6;>;",
            "Lrx/i",
            "<+TT7;>;",
            "Lrx/c/v",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1170
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "s5":Lrx/i;, "Lrx/i<+TT5;>;"
    .local p5, "s6":Lrx/i;, "Lrx/i<+TT6;>;"
    .local p6, "s7":Lrx/i;, "Lrx/i<+TT7;>;"
    .local p7, "zipFunction":Lrx/c/v;, "Lrx/c/v<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/i;

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

    new-instance v1, Lrx/i$16;

    invoke-direct {v1, p7}, Lrx/i$16;-><init>(Lrx/c/v;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/w;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/i",
            "<+TT5;>;",
            "Lrx/i",
            "<+TT6;>;",
            "Lrx/i",
            "<+TT7;>;",
            "Lrx/i",
            "<+TT8;>;",
            "Lrx/c/w",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1222
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "s5":Lrx/i;, "Lrx/i<+TT5;>;"
    .local p5, "s6":Lrx/i;, "Lrx/i<+TT6;>;"
    .local p6, "s7":Lrx/i;, "Lrx/i<+TT7;>;"
    .local p7, "s8":Lrx/i;, "Lrx/i<+TT8;>;"
    .local p8, "zipFunction":Lrx/c/w;, "Lrx/c/w<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/i;

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

    new-instance v1, Lrx/i$17;

    invoke-direct {v1, p8}, Lrx/i$17;-><init>(Lrx/c/w;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/c/x;)Lrx/i;
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
            "Lrx/i",
            "<+TT1;>;",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/i",
            "<+TT3;>;",
            "Lrx/i",
            "<+TT4;>;",
            "Lrx/i",
            "<+TT5;>;",
            "Lrx/i",
            "<+TT6;>;",
            "Lrx/i",
            "<+TT7;>;",
            "Lrx/i",
            "<+TT8;>;",
            "Lrx/i",
            "<+TT9;>;",
            "Lrx/c/x",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1277
    .local p0, "s1":Lrx/i;, "Lrx/i<+TT1;>;"
    .local p1, "s2":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "s3":Lrx/i;, "Lrx/i<+TT3;>;"
    .local p3, "s4":Lrx/i;, "Lrx/i<+TT4;>;"
    .local p4, "s5":Lrx/i;, "Lrx/i<+TT5;>;"
    .local p5, "s6":Lrx/i;, "Lrx/i<+TT6;>;"
    .local p6, "s7":Lrx/i;, "Lrx/i<+TT7;>;"
    .local p7, "s8":Lrx/i;, "Lrx/i<+TT8;>;"
    .local p8, "s9":Lrx/i;, "Lrx/i<+TT9;>;"
    .local p9, "zipFunction":Lrx/c/x;, "Lrx/c/x<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/i;

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

    new-instance v1, Lrx/i$2;

    invoke-direct {v1, p9}, Lrx/i$2;-><init>(Lrx/c/x;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ev;->a([Lrx/i;Lrx/c/y;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method private a(Lrx/l;Z)Lrx/m;
    .locals 5
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;Z)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 1730
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    if-eqz p2, :cond_0

    .line 1732
    :try_start_0
    invoke-virtual {p1}, Lrx/l;->onStart()V

    .line 1734
    :cond_0
    iget-object v3, p0, Lrx/i;->a:Lrx/i$a;

    invoke-static {p0, v3}, Lrx/f/c;->a(Lrx/i;Lrx/i$a;)Lrx/i$a;

    move-result-object v3

    invoke-static {p1}, Lrx/internal/operators/eo;->a(Lrx/l;)Lrx/k;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 1735
    invoke-static {p1}, Lrx/f/c;->b(Lrx/m;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1752
    :goto_0
    return-object v3

    .line 1736
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1741
    :try_start_1
    invoke-static {v0}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/l;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1752
    invoke-static {}, Lrx/i/f;->b()Lrx/m;

    move-result-object v3

    goto :goto_0

    .line 1742
    :catch_1
    move-exception v1

    .line 1743
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1746
    new-instance v2, Ljava/lang/RuntimeException;

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

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1748
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1750
    throw v2
.end method

.method static a(Ljava/lang/Iterable;)[Lrx/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/i",
            "<+TT;>;>;)[",
            "Lrx/i",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "singlesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/i<+TT;>;>;"
    const/4 v8, 0x0

    .line 2478
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_0

    move-object v2, p0

    .line 2479
    check-cast v2, Ljava/util/Collection;

    .line 2480
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/i<+TT;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2481
    .local v0, "count":I
    new-array v7, v0, [Lrx/i;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lrx/i;

    .line 2503
    .end local v2    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lrx/i<+TT;>;>;"
    .local v5, "singlesArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    :goto_0
    return-object v5

    .line 2483
    .end local v0    # "count":I
    .end local v5    # "singlesArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    :cond_0
    const/16 v7, 0x8

    new-array v6, v7, [Lrx/i;

    .line 2484
    .local v6, "tempArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    const/4 v0, 0x0

    .line 2485
    .restart local v0    # "count":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/i;

    .line 2486
    .local v3, "s":Lrx/i;, "Lrx/i<+TT;>;"
    array-length v7, v6

    if-ne v0, v7, :cond_1

    .line 2487
    shr-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v0

    new-array v4, v7, [Lrx/i;

    .line 2488
    .local v4, "sb":[Lrx/i;, "[Lrx/i<+TT;>;"
    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2489
    move-object v6, v4

    .line 2491
    .end local v4    # "sb":[Lrx/i;, "[Lrx/i<+TT;>;"
    :cond_1
    aput-object v3, v6, v0

    .line 2492
    add-int/lit8 v0, v0, 0x1

    .line 2493
    goto :goto_1

    .line 2495
    .end local v3    # "s":Lrx/i;, "Lrx/i<+TT;>;"
    :cond_2
    array-length v7, v6

    if-ne v7, v0, :cond_3

    .line 2496
    move-object v5, v6

    .restart local v5    # "singlesArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    goto :goto_0

    .line 2498
    .end local v5    # "singlesArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    :cond_3
    new-array v5, v0, [Lrx/i;

    .line 2499
    .restart local v5    # "singlesArray":[Lrx/i;, "[Lrx/i<+TT;>;"
    invoke-static {v6, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static b(Lrx/i;Lrx/i;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/e;->d(Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 856
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    .local p7, "t8":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static {p7}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;Lrx/i;)Lrx/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    .local p1, "t2":Lrx/i;, "Lrx/i<+TT;>;"
    .local p2, "t3":Lrx/i;, "Lrx/i<+TT;>;"
    .local p3, "t4":Lrx/i;, "Lrx/i<+TT;>;"
    .local p4, "t5":Lrx/i;, "Lrx/i<+TT;>;"
    .local p5, "t6":Lrx/i;, "Lrx/i<+TT;>;"
    .local p6, "t7":Lrx/i;, "Lrx/i<+TT;>;"
    .local p7, "t8":Lrx/i;, "Lrx/i<+TT;>;"
    .local p8, "t9":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {p1}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v1

    invoke-static {p2}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v2

    invoke-static {p3}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v3

    invoke-static {p4}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v4

    invoke-static {p5}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v5

    invoke-static {p6}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/e;->d(Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Callable;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lrx/i",
            "<TT;>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2403
    .local p0, "singleFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lrx/i<TT;>;>;"
    new-instance v0, Lrx/i$9;

    invoke-direct {v0, p0}, Lrx/i$9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method private static f(Lrx/i;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "t":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/fa;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1}, Lrx/internal/operators/fa;-><init>(Lrx/i$a;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 1367
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/e;->c(I)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lrx/i;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2549
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/e;->c(J)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lrx/i;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2090
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/i;->a(JLjava/util/concurrent/TimeUnit;Lrx/i;Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/i;
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
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2115
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/i;->a(JLjava/util/concurrent/TimeUnit;Lrx/i;Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/i;)Lrx/i;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2139
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p4, "other":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/i;->a(JLjava/util/concurrent/TimeUnit;Lrx/i;Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/i;Lrx/h;)Lrx/i;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/i",
            "<+TT;>;",
            "Lrx/h;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2165
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p4, "other":Lrx/i;, "Lrx/i<+TT;>;"
    if-nez p4, :cond_0

    .line 2166
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v0}, Lrx/i;->a(Ljava/lang/Throwable;)Lrx/i;

    move-result-object p4

    .line 2168
    :cond_0
    new-instance v0, Lrx/internal/operators/ez;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    iget-object v6, p4, Lrx/i;->a:Lrx/i$a;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/ez;-><init>(Lrx/i$a;JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/i$a;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b;)Lrx/i;
    .locals 2
    .param p1, "other"    # Lrx/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/ew;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ew;-><init>(Lrx/i$a;Lrx/b;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/b;)Lrx/i;
    .locals 2
    .param p1, "subscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2325
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/ei;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ei;-><init>(Lrx/i$a;Lrx/c/b;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/i",
            "<+TR;>;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/i<+TR;>;>;"
    instance-of v0, p0, Lrx/internal/util/l;

    if-eqz v0, :cond_0

    .line 1408
    check-cast p0, Lrx/internal/util/l;

    .end local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/l;->i(Lrx/c/p;)Lrx/i;

    move-result-object v0

    .line 1410
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lrx/i;->d(Lrx/c/p;)Lrx/i;

    move-result-object v0

    invoke-static {v0}, Lrx/i;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/c/q;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2573
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "predicate":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->c(Lrx/c/q;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e$b;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e$b",
            "<+TR;-TT;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "lift":Lrx/e$b;, "Lrx/e$b<+TR;-TT;>;"
    new-instance v0, Lrx/internal/operators/eo;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/eo;-><init>(Lrx/i$a;Lrx/e$b;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/e;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<+TE;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1997
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<+TE;>;"
    new-instance v0, Lrx/internal/operators/ex;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ex;-><init>(Lrx/i$a;Lrx/e;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;)Lrx/i;
    .locals 2
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1516
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    instance-of v0, p0, Lrx/internal/util/l;

    if-eqz v0, :cond_0

    .line 1517
    check-cast p0, Lrx/internal/util/l;

    .end local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/l;->c(Lrx/h;)Lrx/i;

    move-result-object v0

    .line 1522
    :goto_0
    return-object v0

    .line 1519
    .restart local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    :cond_0
    if-nez p1, :cond_1

    .line 1520
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheduler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_1
    new-instance v0, Lrx/internal/operators/ep;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ep;-><init>(Lrx/i$a;Lrx/h;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lrx/i$b;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i$b",
            "<-TT;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "transformer":Lrx/i$b;, "Lrx/i$b<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/i$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i;

    return-object v0
.end method

.method public final a(Lrx/i;Lrx/c/q;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TT2;>;",
            "Lrx/c/q",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2211
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "other":Lrx/i;, "Lrx/i<+TT2;>;"
    .local p2, "zipFunction":Lrx/c/q;, "Lrx/c/q<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/i;->a(Lrx/i;Lrx/i;Lrx/c/q;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/c;Lrx/c/c;)Lrx/m;
    .locals 2
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
    .line 1679
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "onSuccess":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1682
    :cond_0
    if-nez p2, :cond_1

    .line 1683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1686
    :cond_1
    new-instance v0, Lrx/i$3;

    invoke-direct {v0, p0, p2, p1}, Lrx/i$3;-><init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V

    invoke-virtual {p0, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/f;)Lrx/m;
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
    .line 1764
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    if-nez p1, :cond_0

    .line 1765
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_0
    new-instance v0, Lrx/i$4;

    invoke-direct {v0, p0, p1}, Lrx/i$4;-><init>(Lrx/i;Lrx/f;)V

    invoke-virtual {p0, v0}, Lrx/i;->a(Lrx/k;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/k;)Lrx/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/k",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 1872
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "te":Lrx/k;, "Lrx/k<-TT;>;"
    if-nez p1, :cond_0

    .line 1873
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "te is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1876
    :cond_0
    :try_start_0
    iget-object v3, p0, Lrx/i;->a:Lrx/i$a;

    invoke-static {p0, v3}, Lrx/f/c;->a(Lrx/i;Lrx/i$a;)Lrx/i$a;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/i$a;->call(Ljava/lang/Object;)V

    .line 1877
    invoke-static {p1}, Lrx/f/c;->b(Lrx/m;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1893
    :goto_0
    return-object v3

    .line 1878
    :catch_0
    move-exception v1

    .line 1879
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1882
    :try_start_1
    invoke-static {v1}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/k;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1893
    invoke-static {}, Lrx/i/f;->a()Lrx/m;

    move-result-object v3

    goto :goto_0

    .line 1883
    :catch_1
    move-exception v0

    .line 1884
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 1887
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-static {v2}, Lrx/f/c;->d(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1891
    throw v2
.end method

.method public final a(Lrx/l;)Lrx/m;
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
    .line 1725
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/i;->a(Lrx/l;Z)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;)Lrx/e;
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
    .line 1431
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/i;->d(Lrx/c/p;)Lrx/i;

    move-result-object v0

    invoke-static {v0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/e;->c(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/i;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1387
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0, p1}, Lrx/i;->a(Lrx/i;Lrx/i;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lrx/i;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2373
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/i;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/i;
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
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2350
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/ef;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/ef;-><init>(Lrx/i$a;JLjava/util/concurrent/TimeUnit;Lrx/h;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/b;)Lrx/i;
    .locals 2
    .param p1, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2439
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/ej;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ej;-><init>(Lrx/i$a;Lrx/c/b;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/e;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<*>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2714
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "other":Lrx/e;, "Lrx/e<*>;"
    if-nez p1, :cond_0

    .line 2715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2717
    :cond_0
    new-instance v0, Lrx/internal/operators/er;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/er;-><init>(Lrx/i;Lrx/e;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/h;)Lrx/i;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1914
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    instance-of v0, p0, Lrx/internal/util/l;

    if-eqz v0, :cond_0

    .line 1915
    check-cast p0, Lrx/internal/util/l;

    .end local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/l;->c(Lrx/h;)Lrx/i;

    move-result-object v0

    .line 1917
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/i;, "Lrx/i<TT;>;"
    :cond_0
    new-instance v0, Lrx/i$5;

    invoke-direct {v0, p0, p1}, Lrx/i$5;-><init>(Lrx/i;Lrx/h;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lrx/m;
    .locals 2

    .prologue
    .line 1636
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    invoke-static {}, Lrx/c/m;->b()Lrx/c/c;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lrx/i;->a(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/c;)Lrx/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "onSuccess":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    invoke-static {}, Lrx/c/m;->b()Lrx/c/c;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lrx/i;->a(Lrx/c/c;Lrx/c/c;)Lrx/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/l;)Lrx/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 1817
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    if-nez p1, :cond_0

    .line 1818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_0
    invoke-virtual {p1}, Lrx/l;->onStart()V

    .line 1829
    instance-of v0, p1, Lrx/e/e;

    if-nez v0, :cond_1

    .line 1831
    new-instance v0, Lrx/e/e;

    invoke-direct {v0, p1}, Lrx/e/e;-><init>(Lrx/l;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/i;->a(Lrx/l;Z)Lrx/m;

    move-result-object v0

    .line 1833
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/i;->a(Lrx/l;Z)Lrx/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lrx/c/p;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1453
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/b;>;"
    new-instance v0, Lrx/internal/operators/i;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/i;-><init>(Lrx/i;Lrx/c/p;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {p0}, Lrx/i;->f(Lrx/i;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/i;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1494
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "t1":Lrx/i;, "Lrx/i<+TT;>;"
    invoke-static {p0, p1}, Lrx/i;->b(Lrx/i;Lrx/i;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/b;)Lrx/i;
    .locals 1
    .param p1, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2461
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    new-instance v0, Lrx/internal/operators/eg;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/eg;-><init>(Lrx/i;Lrx/c/b;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/c;)Lrx/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2234
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 2235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2238
    :cond_0
    new-instance v0, Lrx/internal/operators/eh;

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    new-instance v2, Lrx/i$6;

    invoke-direct {v2, p0, p1}, Lrx/i$6;-><init>(Lrx/i;Lrx/c/c;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/eh;-><init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lrx/b;
    .locals 1
    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2067
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {p0}, Lrx/b;->a(Lrx/i;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/c;)Lrx/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 2263
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "onNotification":Lrx/c/c;, "Lrx/c/c<Lrx/Notification<+TT;>;>;"
    if-nez p1, :cond_0

    .line 2264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNotification is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2267
    :cond_0
    new-instance v0, Lrx/internal/operators/eh;

    new-instance v1, Lrx/i$7;

    invoke-direct {v1, p0, p1}, Lrx/i$7;-><init>(Lrx/i;Lrx/c/c;)V

    new-instance v2, Lrx/i$8;

    invoke-direct {v2, p0, p1}, Lrx/i$8;-><init>(Lrx/i;Lrx/c/c;)V

    invoke-direct {v0, p0, v1, v2}, Lrx/internal/operators/eh;-><init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/p;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT;+TR;>;)",
            "Lrx/i",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1473
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "func":Lrx/c/p;, "Lrx/c/p<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/es;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/es;-><init>(Lrx/i;Lrx/c/p;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/i;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1586
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "resumeSingleInCaseOfError":Lrx/i;, "Lrx/i<+TT;>;"
    new-instance v0, Lrx/i;

    invoke-static {p0, p1}, Lrx/internal/operators/eu;->a(Lrx/i;Lrx/i;)Lrx/internal/operators/eu;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/i;-><init>(Lrx/i$a;)V

    return-object v0
.end method

.method public final e()Lrx/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/g/a",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 2183
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {p0}, Lrx/g/a;->a(Lrx/i;)Lrx/g/a;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/c;)Lrx/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 2297
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "onSuccess":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    if-nez p1, :cond_0

    .line 2298
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "onSuccess is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2301
    :cond_0
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v0

    .line 2302
    .local v0, "empty":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    new-instance v1, Lrx/internal/operators/eh;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/eh;-><init>(Lrx/i;Lrx/c/c;Lrx/c/c;)V

    invoke-static {v1}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v1

    return-object v1
.end method

.method public final e(Lrx/c/p;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1552
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "resumeFunction":Lrx/c/p;, "Lrx/c/p<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lrx/internal/operators/eq;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/eq;-><init>(Lrx/i$a;Lrx/c/p;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/i;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<+TE;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "other":Lrx/i;, "Lrx/i<+TE;>;"
    new-instance v0, Lrx/internal/operators/ey;

    iget-object v1, p0, Lrx/i;->a:Lrx/i$a;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/ey;-><init>(Lrx/i$a;Lrx/i;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2524
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    invoke-virtual {p0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->y()Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/p;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/i",
            "<+TT;>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/b/a;
    .end annotation

    .prologue
    .line 1620
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "resumeFunctionInCaseOfError":Lrx/c/p;, "Lrx/c/p<Ljava/lang/Throwable;+Lrx/i<+TT;>;>;"
    new-instance v0, Lrx/i;

    invoke-static {p0, p1}, Lrx/internal/operators/eu;->a(Lrx/i;Lrx/c/p;)Lrx/internal/operators/eu;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/i;-><init>(Lrx/i$a;)V

    return-object v0
.end method

.method public final g(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/i",
            "<TT;>;TR;>;)TR;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 2032
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "converter":Lrx/c/p;, "Lrx/c/p<-Lrx/i<TT;>;TR;>;"
    invoke-interface {p1, p0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lrx/e/a;
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
    .line 2737
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Lrx/internal/a/a;->a(J)Lrx/internal/a/a;

    move-result-object v0

    .line 2738
    .local v0, "ts":Lrx/internal/a/a;, "Lrx/internal/a/a<TT;>;"
    invoke-virtual {p0, v0}, Lrx/i;->b(Lrx/l;)Lrx/m;

    .line 2739
    return-object v0
.end method

.method public final h(Lrx/c/p;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<",
            "Lrx/e",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/e",
            "<*>;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2617
    .local p0, "this":Lrx/i;, "Lrx/i<TT;>;"
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<Lrx/e<+Ljava/lang/Throwable;>;+Lrx/e<*>;>;"
    invoke-virtual {p0}, Lrx/i;->c()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->x(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v0

    return-object v0
.end method
