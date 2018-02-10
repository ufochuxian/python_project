.class final Lrx/h/d$e;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/h/d$b",
        "<TT;>;>;",
        "Lrx/e$a",
        "<TT;>;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final b:[Lrx/h/d$b;

.field static final c:[Lrx/h/d$b;

.field private static final serialVersionUID:J = 0x529b0a217109d450L


# instance fields
.field final a:Lrx/h/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/h/d$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    new-array v0, v1, [Lrx/h/d$b;

    sput-object v0, Lrx/h/d$e;->b:[Lrx/h/d$b;

    .line 372
    new-array v0, v1, [Lrx/h/d$b;

    sput-object v0, Lrx/h/d$e;->c:[Lrx/h/d$b;

    return-void
.end method

.method public constructor <init>(Lrx/h/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    .local p1, "buffer":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 376
    iput-object p1, p0, Lrx/h/d$e;->a:Lrx/h/d$a;

    .line 377
    sget-object v0, Lrx/h/d$e;->b:[Lrx/h/d$b;

    invoke-virtual {p0, v0}, Lrx/h/d$e;->lazySet(Ljava/lang/Object;)V

    .line 378
    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 495
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    invoke-virtual {p0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/h/d$e;->c:[Lrx/h/d$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lrx/h/d$b;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$b",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    .local p1, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    const/4 v3, 0x0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    .line 398
    .local v0, "a":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    sget-object v4, Lrx/h/d$e;->c:[Lrx/h/d$b;

    if-ne v0, v4, :cond_1

    .line 410
    :goto_0
    return v3

    .line 402
    :cond_1
    array-length v2, v0

    .line 405
    .local v2, "n":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lrx/h/d$b;

    .line 406
    .local v1, "b":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    aput-object p1, v1, v2

    .line 409
    invoke-virtual {p0, v0, v1}, Lrx/h/d$e;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    const/4 v3, 0x1

    goto :goto_0
.end method

.method b(Lrx/h/d$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/d$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    .local p1, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    const/4 v7, 0x0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    .line 419
    .local v0, "a":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    sget-object v5, Lrx/h/d$e;->c:[Lrx/h/d$b;

    if-eq v0, v5, :cond_1

    sget-object v5, Lrx/h/d$e;->b:[Lrx/h/d$b;

    if-ne v0, v5, :cond_2

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    array-length v4, v0

    .line 425
    .local v4, "n":I
    const/4 v3, -0x1

    .line 426
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 427
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    .line 428
    move v3, v2

    .line 433
    :cond_3
    if-ltz v3, :cond_1

    .line 438
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 439
    sget-object v1, Lrx/h/d$e;->b:[Lrx/h/d$b;

    .line 445
    .local v1, "b":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    :goto_2
    invoke-virtual {p0, v0, v1}, Lrx/h/d$e;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 426
    .end local v1    # "b":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/h/d$b;

    .line 442
    .restart local v1    # "b":[Lrx/h/d$b;, "[Lrx/h/d$b<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 360
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/d$e;->call(Lrx/l;)V

    return-void
.end method

.method public call(Lrx/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    .local p1, "t":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/h/d$b;

    invoke-direct {v0, p1, p0}, Lrx/h/d$b;-><init>(Lrx/l;Lrx/h/d$e;)V

    .line 383
    .local v0, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 384
    invoke-virtual {p1, v0}, Lrx/l;->setProducer(Lrx/g;)V

    .line 386
    invoke-virtual {p0, v0}, Lrx/h/d$e;->a(Lrx/h/d$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lrx/h/d$b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lrx/h/d$e;->b(Lrx/h/d$b;)V

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lrx/h/d$e;->a:Lrx/h/d$a;

    invoke-interface {v1, v0}, Lrx/h/d$a;->a(Lrx/h/d$b;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 485
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    iget-object v1, p0, Lrx/h/d$e;->a:Lrx/h/d$a;

    .line 487
    .local v1, "b":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    invoke-interface {v1}, Lrx/h/d$a;->a()V

    .line 488
    sget-object v5, Lrx/h/d$e;->c:[Lrx/h/d$b;

    invoke-virtual {p0, v5}, Lrx/h/d$e;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    .local v0, "arr$":[Lrx/h/d$b;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 489
    .local v4, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-interface {v1, v4}, Lrx/h/d$a;->a(Lrx/h/d$b;)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v4    # "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    iget-object v1, p0, Lrx/h/d$e;->a:Lrx/h/d$a;

    .line 466
    .local v1, "b":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    invoke-interface {v1, p1}, Lrx/h/d$a;->a(Ljava/lang/Throwable;)V

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v7, Lrx/h/d$e;->c:[Lrx/h/d$b;

    invoke-virtual {p0, v7}, Lrx/h/d$e;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    .local v0, "arr$":[Lrx/h/d$b;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 470
    .local v6, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    :try_start_0
    invoke-interface {v1, v6}, Lrx/h/d$a;->a(Lrx/h/d$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v3

    .line 472
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_0

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v6    # "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    :cond_1
    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lrx/h/d$e;, "Lrx/h/d$e<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/h/d$e;->a:Lrx/h/d$a;

    .line 455
    .local v1, "b":Lrx/h/d$a;, "Lrx/h/d$a<TT;>;"
    invoke-interface {v1, p1}, Lrx/h/d$a;->a(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lrx/h/d$e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/h/d$b;

    .local v0, "arr$":[Lrx/h/d$b;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 457
    .local v4, "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    invoke-interface {v1, v4}, Lrx/h/d$a;->a(Lrx/h/d$b;)V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v4    # "rp":Lrx/h/d$b;, "Lrx/h/d$b<TT;>;"
    :cond_0
    return-void
.end method
