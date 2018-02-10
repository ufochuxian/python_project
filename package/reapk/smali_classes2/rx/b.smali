.class public Lrx/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/b$c;,
        Lrx/b$b;,
        Lrx/b$a;
    }
.end annotation

.annotation build Lrx/b/a;
.end annotation


# static fields
.field static final a:Lrx/b;

.field static final b:Lrx/b;


# instance fields
.field private final c:Lrx/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lrx/b;

    new-instance v1, Lrx/b$1;

    invoke-direct {v1}, Lrx/b$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/b;-><init>(Lrx/b$a;Z)V

    sput-object v0, Lrx/b;->a:Lrx/b;

    .line 79
    new-instance v0, Lrx/b;

    new-instance v1, Lrx/b$12;

    invoke-direct {v1}, Lrx/b$12;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/b;-><init>(Lrx/b$a;Z)V

    sput-object v0, Lrx/b;->b:Lrx/b;

    return-void
.end method

.method protected constructor <init>(Lrx/b$a;)V
    .locals 1
    .param p1, "onSubscribe"    # Lrx/b$a;

    .prologue
    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    invoke-static {p1}, Lrx/f/c;->a(Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    iput-object v0, p0, Lrx/b;->c:Lrx/b$a;

    .line 1003
    return-void
.end method

.method protected constructor <init>(Lrx/b$a;Z)V
    .locals 0
    .param p1, "onSubscribe"    # Lrx/b$a;
    .param p2, "useHook"    # Z

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    if-eqz p2, :cond_0

    invoke-static {p1}, Lrx/f/c;->a(Lrx/b$a;)Lrx/b$a;

    move-result-object p1

    .end local p1    # "onSubscribe":Lrx/b$a;
    :cond_0
    iput-object p1, p0, Lrx/b;->c:Lrx/b$a;

    .line 1014
    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    return-object p0
.end method

.method public static a()Lrx/b;
    .locals 3

    .prologue
    .line 294
    sget-object v1, Lrx/b;->a:Lrx/b;

    iget-object v1, v1, Lrx/b;->c:Lrx/b$a;

    invoke-static {v1}, Lrx/f/c;->a(Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    .line 295
    .local v0, "cos":Lrx/b$a;
    sget-object v1, Lrx/b;->a:Lrx/b;

    iget-object v1, v1, Lrx/b;->c:Lrx/b$a;

    if-ne v0, v1, :cond_0

    .line 296
    sget-object v1, Lrx/b;->a:Lrx/b;

    .line 298
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrx/b;-><init>(Lrx/b$a;Z)V

    goto :goto_0
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 786
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/b;->a(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/b;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/h;

    .prologue
    .line 798
    invoke-static {p2}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v0, Lrx/b$4;

    invoke-direct {v0, p3, p0, p1, p2}, Lrx/b$4;-><init>(Lrx/h;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Lrx/b$30;

    invoke-direct {v0, p0}, Lrx/b$30;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/b;
    .locals 1
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 444
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Lrx/b$33;

    invoke-direct {v0, p0}, Lrx/b$33;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v0, Lrx/b$35;

    invoke-direct {v0, p0}, Lrx/b$35;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p0}, Lrx/e;->a(Ljava/util/concurrent/Future;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/b$a;)Lrx/b;
    .locals 2
    .param p0, "onSubscribe"    # Lrx/b$a;

    .prologue
    .line 363
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :try_start_0
    new-instance v1, Lrx/b;

    invoke-direct {v1, p0}, Lrx/b;-><init>(Lrx/b$a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 368
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 370
    invoke-static {v0}, Lrx/b;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static a(Lrx/c/b;)Lrx/b;
    .locals 1
    .param p0, "action"    # Lrx/c/b;

    .prologue
    .line 462
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Lrx/b$34;

    invoke-direct {v0, p0}, Lrx/b$34;-><init>(Lrx/c/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/c;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 546
    .local p0, "producer":Lrx/c/c;, "Lrx/c/c<Lrx/c;>;"
    new-instance v0, Lrx/internal/operators/j;

    invoke-direct {v0, p0}, Lrx/internal/operators/j;-><init>(Lrx/c/c;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "completableFunc0":Lrx/c/o;, "Lrx/c/o<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v0, Lrx/b$31;

    invoke-direct {v0, p0}, Lrx/b$31;-><init>(Lrx/c/o;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<TR;>;",
            "Lrx/c/p",
            "<-TR;+",
            "Lrx/b;",
            ">;",
            "Lrx/c/c",
            "<-TR;>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "resourceFunc0":Lrx/c/o;, "Lrx/c/o<TR;>;"
    .local p1, "completableFunc1":Lrx/c/p;, "Lrx/c/p<-TR;+Lrx/b;>;"
    .local p2, "disposer":Lrx/c/c;, "Lrx/c/c<-TR;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lrx/b;->a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)Lrx/b;
    .locals 1
    .param p3, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<TR;>;",
            "Lrx/c/p",
            "<-TR;+",
            "Lrx/b;",
            ">;",
            "Lrx/c/c",
            "<-TR;>;Z)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, "resourceFunc0":Lrx/c/o;, "Lrx/c/o<TR;>;"
    .local p1, "completableFunc1":Lrx/c/p;, "Lrx/c/p<-TR;+Lrx/b;>;"
    .local p2, "disposer":Lrx/c/c;, "Lrx/c/c<-TR;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-static {p2}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v0, Lrx/b$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/b$5;-><init>(Lrx/c/o;Lrx/c/p;Lrx/c/c;Z)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lrx/b;->a(Lrx/e;I)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/e;I)Lrx/b;
    .locals 3
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;I)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    new-instance v0, Lrx/internal/operators/k;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/k;-><init>(Lrx/e;I)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lrx/e;IZ)Lrx/b;
    .locals 3
    .param p1, "maxConcurrency"    # I
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;IZ)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrency > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    new-instance v0, Lrx/internal/operators/n;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/n;-><init>(Lrx/e;IZ)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/i;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<*>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, "single":Lrx/i;, "Lrx/i<*>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v0, Lrx/b$3;

    invoke-direct {v0, p0}, Lrx/b$3;-><init>(Lrx/i;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lrx/b;)Lrx/b;
    .locals 2
    .param p0, "sources"    # [Lrx/b;

    .prologue
    .line 94
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    array-length v0, p0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lrx/b;->a()Lrx/b;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 98
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 99
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lrx/b$23;

    invoke-direct {v0, p0}, Lrx/b$23;-><init>([Lrx/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lrx/l;Z)V
    .locals 2
    .param p2, "callOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2080
    .local p1, "s":Lrx/l;, "Lrx/l<TT;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    if-eqz p2, :cond_0

    .line 2083
    :try_start_0
    invoke-virtual {p1}, Lrx/l;->onStart()V

    .line 2085
    :cond_0
    new-instance v1, Lrx/b$24;

    invoke-direct {v1, p0, p1}, Lrx/b$24;-><init>(Lrx/b;Lrx/l;)V

    invoke-virtual {p0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 2101
    invoke-static {p1}, Lrx/f/c;->a(Lrx/m;)Lrx/m;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2110
    return-void

    .line 2102
    :catch_0
    move-exception v0

    .line 2103
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2104
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2105
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2106
    invoke-static {v0}, Lrx/f/c;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2107
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2108
    invoke-static {v0}, Lrx/b;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method static b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 829
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 831
    return-object v0
.end method

.method public static b()Lrx/b;
    .locals 3

    .prologue
    .line 759
    sget-object v1, Lrx/b;->b:Lrx/b;

    iget-object v1, v1, Lrx/b;->c:Lrx/b$a;

    invoke-static {v1}, Lrx/f/c;->a(Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    .line 760
    .local v0, "cos":Lrx/b$a;
    sget-object v1, Lrx/b;->b:Lrx/b;

    iget-object v1, v1, Lrx/b;->c:Lrx/b$a;

    if-ne v0, v1, :cond_0

    .line 761
    sget-object v1, Lrx/b;->b:Lrx/b;

    .line 763
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lrx/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrx/b;-><init>(Lrx/b$a;Z)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v0, Lrx/internal/operators/m;

    invoke-direct {v0, p0}, Lrx/internal/operators/m;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/c/o;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "errorFunc0":Lrx/c/o;, "Lrx/c/o<+Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v0, Lrx/b$32;

    invoke-direct {v0, p0}, Lrx/b$32;-><init>(Lrx/c/o;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<*>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "flowable":Lrx/e;, "Lrx/e<*>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v0, Lrx/b$2;

    invoke-direct {v0, p0}, Lrx/b$2;-><init>(Lrx/e;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/e;I)Lrx/b;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;I)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/b;->a(Lrx/e;IZ)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lrx/b;)Lrx/b;
    .locals 2
    .param p0, "sources"    # [Lrx/b;

    .prologue
    .line 308
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    array-length v0, p0

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Lrx/b;->a()Lrx/b;

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Lrx/internal/operators/l;

    invoke-direct {v0, p0}, Lrx/internal/operators/l;-><init>([Lrx/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v0, Lrx/internal/operators/r;

    invoke-direct {v0, p0}, Lrx/internal/operators/r;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;)Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lrx/b;->a(Lrx/e;IZ)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lrx/e;I)Lrx/b;
    .locals 1
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;I)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lrx/b;->a(Lrx/e;IZ)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static varargs c([Lrx/b;)Lrx/b;
    .locals 2
    .param p0, "sources"    # [Lrx/b;

    .prologue
    .line 635
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    array-length v0, p0

    if-nez v0, :cond_0

    .line 637
    invoke-static {}, Lrx/b;->a()Lrx/b;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    .line 639
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 640
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_0

    .line 642
    :cond_1
    new-instance v0, Lrx/internal/operators/o;

    invoke-direct {v0, p0}, Lrx/internal/operators/o;-><init>([Lrx/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2023
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2024
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2025
    return-void
.end method

.method public static d(Ljava/lang/Iterable;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/b;>;"
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v0, Lrx/internal/operators/q;

    invoke-direct {v0, p0}, Lrx/internal/operators/q;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lrx/e;)Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "sources":Lrx/e;, "Lrx/e<+Lrx/b;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrx/b;->a(Lrx/e;IZ)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d([Lrx/b;)Lrx/b;
    .locals 1
    .param p0, "sources"    # [Lrx/b;

    .prologue
    .line 710
    invoke-static {p0}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v0, Lrx/internal/operators/p;

    invoke-direct {v0, p0}, Lrx/internal/operators/p;-><init>([Lrx/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)Lrx/b;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1803
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/e;->b(J)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/b;)Lrx/b;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "other"    # Lrx/b;

    .prologue
    .line 2181
    invoke-static {p4}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .param p5, "other"    # Lrx/b;

    .prologue
    .line 2211
    invoke-static {p5}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    invoke-virtual/range {p0 .. p5}, Lrx/b;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/h;Z)Lrx/b;
    .locals 9
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .param p5, "delayError"    # Z

    .prologue
    .line 1233
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    invoke-static {p4}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v1, Lrx/b$8;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/b$8;-><init>(Lrx/b;Lrx/h;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v1}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b$b;)Lrx/b;
    .locals 1
    .param p1, "onLift"    # Lrx/b$b;

    .prologue
    .line 1571
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    new-instance v0, Lrx/b$16;

    invoke-direct {v0, p0, p1}, Lrx/b$16;-><init>(Lrx/b;Lrx/b$b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/b$c;)Lrx/b;
    .locals 1
    .param p1, "transformer"    # Lrx/b$c;

    .prologue
    .line 1136
    invoke-virtual {p0, p1}, Lrx/b;->e(Lrx/c/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/b;

    return-object v0
.end method

.method public final a(Lrx/b;)Lrx/b;
    .locals 2
    .param p1, "other"    # Lrx/b;

    .prologue
    .line 1024
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/b;->a([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;
    .locals 7
    .param p3, "onComplete"    # Lrx/c/b;
    .param p4, "onAfterTerminate"    # Lrx/c/b;
    .param p5, "onUnsubscribe"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            "Lrx/c/b;",
            "Lrx/c/b;",
            ")",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1360
    .local p1, "onSubscribe":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    invoke-static {p2}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-static {p4}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-static {p5}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v0, Lrx/b$11;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/b$11;-><init>(Lrx/b;Lrx/c/b;Lrx/c/b;Lrx/c/c;Lrx/c/c;Lrx/c/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/p;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1677
    .local p1, "predicate":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    new-instance v0, Lrx/b$18;

    invoke-direct {v0, p0, p1}, Lrx/b$18;-><init>(Lrx/b;Lrx/c/p;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/q;)Lrx/b;
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
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1836
    .local p1, "predicate":Lrx/c/q;, "Lrx/c/q<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->c(Lrx/c/q;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/h;)Lrx/b;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 1608
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    new-instance v0, Lrx/b$17;

    invoke-direct {v0, p0, p1}, Lrx/b$17;-><init>(Lrx/b;Lrx/h;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/b;Lrx/c/c;)Lrx/m;
    .locals 2
    .param p1, "onComplete"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 1970
    .local p2, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    invoke-static {p2}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    new-instance v0, Lrx/i/c;

    invoke-direct {v0}, Lrx/i/c;-><init>()V

    .line 1974
    .local v0, "mad":Lrx/i/c;
    new-instance v1, Lrx/b$22;

    invoke-direct {v1, p0, p1, v0, p2}, Lrx/b$22;-><init>(Lrx/b;Lrx/c/b;Lrx/i/c;Lrx/c/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 2019
    return-object v0
.end method

.method public final a(Lrx/d;)V
    .locals 3
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 2033
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    :try_start_0
    iget-object v2, p0, Lrx/b;->c:Lrx/b$a;

    invoke-static {p0, v2}, Lrx/f/c;->a(Lrx/b;Lrx/b$a;)Lrx/b$a;

    move-result-object v1

    .line 2037
    .local v1, "onSubscribeDecorated":Lrx/b$a;
    invoke-interface {v1, p1}, Lrx/b$a;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2046
    return-void

    .line 2038
    .end local v1    # "onSubscribeDecorated":Lrx/b$a;
    :catch_0
    move-exception v0

    .line 2039
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2040
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2041
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2042
    invoke-static {v0}, Lrx/f/c;->e(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2043
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 2044
    invoke-static {v0}, Lrx/b;->b(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method

.method public final a(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2069
    .local p1, "s":Lrx/l;, "Lrx/l<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/b;->a(Lrx/l;Z)V

    .line 2070
    return-void
.end method

.method public final b(J)Lrx/b;
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1847
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/e;->c(J)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/b;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 1219
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->a(JLjava/util/concurrent/TimeUnit;Lrx/h;Z)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;
    .param p5, "other"    # Lrx/b;

    .prologue
    .line 2228
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    invoke-static {p4}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    new-instance v0, Lrx/internal/operators/s;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/s;-><init>(Lrx/b;JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/b;)Lrx/b;
    .locals 1
    .param p1, "next"    # Lrx/b;

    .prologue
    .line 1184
    invoke-virtual {p0, p1}, Lrx/b;->c(Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/b;)Lrx/b;
    .locals 6
    .param p1, "onCompleted"    # Lrx/c/b;

    .prologue
    .line 1296
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/c;)Lrx/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1306
    .local p1, "onNotification":Lrx/c/c;, "Lrx/c/c<Lrx/Notification<Ljava/lang/Object;>;>;"
    if-nez p1, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNotification is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_0
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    new-instance v2, Lrx/b$9;

    invoke-direct {v2, p0, p1}, Lrx/b$9;-><init>(Lrx/b;Lrx/c/c;)V

    new-instance v3, Lrx/b$10;

    invoke-direct {v3, p0, p1}, Lrx/b$10;-><init>(Lrx/b;Lrx/c/c;)V

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/c/p;)Lrx/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/b;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1727
    .local p1, "errorMapper":Lrx/c/p;, "Lrx/c/p<-Ljava/lang/Throwable;+Lrx/b;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    new-instance v0, Lrx/b$19;

    invoke-direct {v0, p0, p1}, Lrx/b$19;-><init>(Lrx/b;Lrx/c/p;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/h;)Lrx/b;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 2136
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    new-instance v0, Lrx/b$25;

    invoke-direct {v0, p0, p1}, Lrx/b$25;-><init>(Lrx/b;Lrx/h;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lrx/i;
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
    .line 2317
    .local p1, "completionValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    new-instance v0, Lrx/b$28;

    invoke-direct {v0, p0, p1}, Lrx/b$28;-><init>(Lrx/b;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/b;->c(Lrx/c/o;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/i;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/i",
            "<TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, "next":Lrx/i;, "Lrx/i<TT;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->b(Lrx/e;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/d;)V
    .locals 2
    .param p1, "s"    # Lrx/d;

    .prologue
    .line 2055
    instance-of v1, p1, Lrx/e/d;

    if-nez v1, :cond_0

    .line 2056
    new-instance v0, Lrx/e/d;

    invoke-direct {v0, p1}, Lrx/e/d;-><init>(Lrx/d;)V

    .end local p1    # "s":Lrx/d;
    .local v0, "s":Lrx/d;
    move-object p1, v0

    .line 2058
    .end local v0    # "s":Lrx/d;
    .restart local p1    # "s":Lrx/d;
    :cond_0
    invoke-virtual {p0, p1}, Lrx/b;->a(Lrx/d;)V

    .line 2059
    return-void
.end method

.method public final b(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2121
    .local p1, "s":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1}, Lrx/l;->onStart()V

    .line 2122
    instance-of v1, p1, Lrx/e/e;

    if-nez v1, :cond_0

    .line 2123
    new-instance v0, Lrx/e/e;

    invoke-direct {v0, p1}, Lrx/e/e;-><init>(Lrx/l;)V

    .end local p1    # "s":Lrx/l;, "Lrx/l<TT;>;"
    .local v0, "s":Lrx/l;, "Lrx/l<TT;>;"
    move-object p1, v0

    .line 2125
    .end local v0    # "s":Lrx/l;, "Lrx/l<TT;>;"
    .restart local p1    # "s":Lrx/l;, "Lrx/l<TT;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lrx/b;->a(Lrx/l;Z)V

    .line 2126
    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1083
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1086
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v0, [Ljava/lang/Throwable;

    .line 1088
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/b$7;

    invoke-direct {v4, p0, v1, v2}, Lrx/b$7;-><init>(Lrx/b;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/b;->a(Lrx/d;)V

    .line 1108
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1109
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1110
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1116
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1120
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 1121
    aget-object v4, v2, v8

    if-eqz v4, :cond_0

    .line 1122
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1117
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1118
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1206
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/b;->a(JLjava/util/concurrent/TimeUnit;Lrx/h;Z)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;Lrx/h;)Lrx/b;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/h;

    .prologue
    .line 2196
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/b;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/b;)Lrx/b;
    .locals 2
    .param p1, "other"    # Lrx/b;

    .prologue
    .line 1194
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/b;->b([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/b;)Lrx/b;
    .locals 6
    .param p1, "onUnsubscribe"    # Lrx/c/b;

    .prologue
    .line 1331
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v3

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/c;)Lrx/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v3

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/p;)Lrx/b;
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
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1816
    .local p1, "handler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Void;>;+Lrx/e<*>;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->v(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/h;)Lrx/b;
    .locals 1
    .param p1, "scheduler"    # Lrx/h;

    .prologue
    .line 2334
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    new-instance v0, Lrx/b$29;

    invoke-direct {v0, p0, p1}, Lrx/b$29;-><init>(Lrx/b;Lrx/h;)V

    invoke-static {v0}, Lrx/b;->a(Lrx/b$a;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lrx/c/o;)Lrx/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TT;>;)",
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2269
    .local p1, "completionValueFunc0":Lrx/c/o;, "Lrx/c/o<+TT;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    new-instance v0, Lrx/b$27;

    invoke-direct {v0, p0, p1}, Lrx/b$27;-><init>(Lrx/b;Lrx/c/o;)V

    invoke-static {v0}, Lrx/i;->a(Lrx/i$a;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1034
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1035
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1037
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/b$6;

    invoke-direct {v3, p0, v0, v1}, Lrx/b$6;-><init>(Lrx/b;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/b;->a(Lrx/d;)V

    .line 1057
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1058
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1059
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    aget-object v3, v1, v8

    if-eqz v3, :cond_0

    .line 1069
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v2

    .line 1066
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1479
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1480
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1482
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/b$14;

    invoke-direct {v3, p0, v0, v1}, Lrx/b$14;-><init>(Lrx/b;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/b;->a(Lrx/d;)V

    .line 1502
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1503
    aget-object v3, v1, v8

    .line 1510
    :goto_0
    return-object v3

    .line 1506
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    aget-object v3, v1, v8

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v2

    .line 1508
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1523
    invoke-static {p3}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1526
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    .line 1528
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/b$15;

    invoke-direct {v4, p0, v1, v2}, Lrx/b$15;-><init>(Lrx/b;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/b;->a(Lrx/d;)V

    .line 1548
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1549
    aget-object v4, v2, v8

    .line 1561
    :goto_0
    return-object v4

    .line 1553
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1557
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 1558
    aget-object v4, v2, v8

    goto :goto_0

    .line 1554
    .end local v0    # "b":Z
    :catch_0
    move-exception v3

    .line 1555
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1560
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "b":Z
    :cond_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v4}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1561
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final d(Lrx/b;)Lrx/b;
    .locals 2
    .param p1, "other"    # Lrx/b;

    .prologue
    .line 1597
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/b;->c([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/b;)Lrx/b;
    .locals 6
    .param p1, "onTerminate"    # Lrx/c/b;

    .prologue
    .line 1453
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    new-instance v2, Lrx/b$13;

    invoke-direct {v2, p0, p1}, Lrx/b$13;-><init>(Lrx/b;Lrx/c/b;)V

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/c;)Lrx/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-",
            "Lrx/m;",
            ">;)",
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1443
    .local p1, "onSubscribe":Lrx/c/c;, "Lrx/c/c<-Lrx/m;>;"
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v3

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v4

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lrx/c/p;)Lrx/b;
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
            "Lrx/b;"
        }
    .end annotation

    .prologue
    .line 1860
    .local p1, "handler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Throwable;>;+Lrx/e<*>;>;"
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->x(Lrx/c/p;)Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-",
            "Lrx/b;",
            "TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 2242
    .local p1, "converter":Lrx/c/p;, "Lrx/c/p<-Lrx/b;TR;>;"
    invoke-interface {p1, p0}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lrx/b;
    .locals 1

    .prologue
    .line 1666
    invoke-static {}, Lrx/internal/util/o;->a()Lrx/c/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/b;->a(Lrx/c/p;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lrx/b;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2168
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/h;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/b;->b(JLjava/util/concurrent/TimeUnit;Lrx/h;Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/b;)Lrx/b;
    .locals 2
    .param p1, "other"    # Lrx/b;

    .prologue
    .line 1871
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lrx/b;->b([Lrx/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/c/b;)Lrx/b;
    .locals 6
    .param p1, "onAfterTerminate"    # Lrx/c/b;

    .prologue
    .line 1469
    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v1

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v2

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v3

    invoke-static {}, Lrx/c/m;->a()Lrx/c/m$b;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lrx/b;->a(Lrx/c/c;Lrx/c/c;Lrx/c/b;Lrx/c/b;Lrx/c/b;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lrx/e;)Lrx/e;
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
    .line 1151
    .local p1, "next":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->k(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lrx/b;
    .locals 1

    .prologue
    .line 1793
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->w()Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/e;)Lrx/e;
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
    .line 1884
    .local p1, "other":Lrx/e;, "Lrx/e<TT;>;"
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/e;->r(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lrx/c/b;)Lrx/m;
    .locals 2
    .param p1, "onComplete"    # Lrx/c/b;

    .prologue
    .line 1925
    invoke-static {p1}, Lrx/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    new-instance v0, Lrx/i/c;

    invoke-direct {v0}, Lrx/i/c;-><init>()V

    .line 1928
    .local v0, "mad":Lrx/i/c;
    new-instance v1, Lrx/b$21;

    invoke-direct {v1, p0, p1, v0}, Lrx/b$21;-><init>(Lrx/b;Lrx/c/b;Lrx/i/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 1958
    return-object v0
.end method

.method public final g()Lrx/b;
    .locals 1

    .prologue
    .line 1825
    invoke-virtual {p0}, Lrx/b;->i()Lrx/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/e;->y()Lrx/e;

    move-result-object v0

    invoke-static {v0}, Lrx/b;->b(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lrx/m;
    .locals 2

    .prologue
    .line 1894
    new-instance v0, Lrx/i/c;

    invoke-direct {v0}, Lrx/i/c;-><init>()V

    .line 1895
    .local v0, "mad":Lrx/i/c;
    new-instance v1, Lrx/b$20;

    invoke-direct {v1, p0, v0}, Lrx/b$20;-><init>(Lrx/b;Lrx/i/c;)V

    invoke-virtual {p0, v1}, Lrx/b;->a(Lrx/d;)V

    .line 1914
    return-object v0
.end method

.method public final i()Lrx/e;
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
    .line 2252
    new-instance v0, Lrx/b$26;

    invoke-direct {v0, p0}, Lrx/b$26;-><init>(Lrx/b;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lrx/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/e/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lrx/b/b;
    .end annotation

    .prologue
    .line 2392
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Lrx/internal/a/a;->a(J)Lrx/internal/a/a;

    move-result-object v0

    .line 2393
    .local v0, "ts":Lrx/internal/a/a;, "Lrx/internal/a/a<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Lrx/b;->b(Lrx/l;)V

    .line 2394
    return-object v0
.end method
