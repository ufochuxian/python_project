.class public final Lrx/internal/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/e$b;,
        Lrx/internal/util/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/m;"
    }
.end annotation


# static fields
.field static final c:I


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Lrx/internal/util/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/e$a",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final e:Lrx/internal/util/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 229
    const/16 v0, 0x80

    .line 232
    .local v0, "defaultSize":I
    invoke-static {}, Lrx/internal/util/i;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const/16 v0, 0x8

    .line 237
    :cond_0
    const-string v3, "rx.indexed-ring-buffer.size"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "sizeFromProperty":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 240
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 246
    :cond_1
    :goto_0
    sput v0, Lrx/internal/util/e;->c:I

    .line 247
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lrx/internal/util/e$a;

    invoke-direct {v0}, Lrx/internal/util/e$a;-><init>()V

    iput-object v0, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    .line 51
    new-instance v0, Lrx/internal/util/e$b;

    invoke-direct {v0}, Lrx/internal/util/e$b;-><init>()V

    iput-object v0, p0, Lrx/internal/util/e;->e:Lrx/internal/util/e$b;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 285
    return-void
.end method

.method private a(Lrx/c/p;II)I
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    .local p1, "action":Lrx/c/p;, "Lrx/c/p<-TE;Ljava/lang/Boolean;>;"
    iget-object v7, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 444
    .local v4, "maxIndex":I
    move v5, p2

    .line 445
    .local v5, "realIndex":I
    iget-object v6, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    .line 447
    .local v6, "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    sget v7, Lrx/internal/util/e;->c:I

    if-lt p2, v7, :cond_0

    .line 449
    invoke-direct {p0, p2}, Lrx/internal/util/e;->c(I)Lrx/internal/util/e$a;

    move-result-object v6

    .line 450
    sget v7, Lrx/internal/util/e;->c:I

    rem-int/2addr p2, v7

    .line 453
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 454
    move v2, p2

    .local v2, "i":I
    :goto_1
    sget v7, Lrx/internal/util/e;->c:I

    if-ge v2, v7, :cond_5

    .line 455
    if-ge v5, v4, :cond_1

    if-lt v5, p3, :cond_2

    .end local v2    # "i":I
    :cond_1
    move v3, v5

    .line 473
    :goto_2
    return v3

    .line 458
    .restart local v2    # "i":I
    :cond_2
    iget-object v7, v6, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 459
    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_4

    .line 454
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 462
    :cond_4
    move v3, v5

    .line 463
    .local v3, "lastIndex":I
    invoke-interface {p1, v1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 464
    .local v0, "continueLoop":Z
    if-nez v0, :cond_3

    goto :goto_2

    .line 468
    .end local v0    # "continueLoop":Z
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v3    # "lastIndex":I
    :cond_5
    iget-object v7, v6, Lrx/internal/util/e$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    check-cast v6, Lrx/internal/util/e$a;

    .line 469
    .restart local v6    # "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static a()Lrx/internal/util/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lrx/internal/util/e;

    invoke-direct {v0}, Lrx/internal/util/e;-><init>()V

    return-object v0
.end method

.method private b(I)Lrx/internal/util/e$b;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 321
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    sget v3, Lrx/internal/util/e;->c:I

    if-ge p1, v3, :cond_1

    .line 322
    iget-object v0, p0, Lrx/internal/util/e;->e:Lrx/internal/util/e$b;

    .line 331
    :cond_0
    return-object v0

    .line 326
    :cond_1
    sget v3, Lrx/internal/util/e;->c:I

    div-int v2, p1, v3

    .line 327
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/e;->e:Lrx/internal/util/e$b;

    .line 328
    .local v0, "a":Lrx/internal/util/e$b;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 329
    invoke-virtual {v0}, Lrx/internal/util/e$b;->a()Lrx/internal/util/e$b;

    move-result-object v0

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized c()I
    .locals 5

    .prologue
    .line 354
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lrx/internal/util/e;->d()I

    move-result v1

    .line 355
    .local v1, "ri":I
    if-ltz v1, :cond_2

    .line 356
    sget v3, Lrx/internal/util/e;->c:I

    if-ge v1, v3, :cond_1

    .line 358
    iget-object v3, p0, Lrx/internal/util/e;->e:Lrx/internal/util/e$b;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lrx/internal/util/e$b;->a(II)I

    move-result v0

    .line 363
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 365
    iget-object v3, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 360
    .end local v0    # "i":I
    :cond_1
    :try_start_1
    sget v3, Lrx/internal/util/e;->c:I

    rem-int v2, v1, v3

    .line 361
    .local v2, "sectionIndex":I
    invoke-direct {p0, v1}, Lrx/internal/util/e;->b(I)Lrx/internal/util/e$b;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lrx/internal/util/e$b;->a(II)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_0

    .line 368
    .end local v0    # "i":I
    .end local v2    # "sectionIndex":I
    :cond_2
    iget-object v3, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1

    .line 354
    .end local v0    # "i":I
    .end local v1    # "ri":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private c(I)Lrx/internal/util/e$a;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/internal/util/e$a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    sget v3, Lrx/internal/util/e;->c:I

    if-ge p1, v3, :cond_1

    .line 337
    iget-object v0, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    .line 346
    :cond_0
    return-object v0

    .line 341
    :cond_1
    sget v3, Lrx/internal/util/e;->c:I

    div-int v2, p1, v3

    .line 342
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    .line 343
    .local v0, "a":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 344
    invoke-virtual {v0}, Lrx/internal/util/e$a;->a()Lrx/internal/util/e$a;

    move-result-object v0

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized d()I
    .locals 3

    .prologue
    .line 385
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 386
    .local v0, "currentRi":I
    if-lez v0, :cond_1

    .line 388
    iget-object v1, p0, Lrx/internal/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    add-int/lit8 v1, v0, -0x1

    .line 393
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 385
    .end local v0    # "currentRi":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized d(I)V
    .locals 3
    .param p1, "elementIndex"    # I

    .prologue
    .line 403
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lrx/internal/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 404
    .local v0, "i":I
    sget v2, Lrx/internal/util/e;->c:I

    if-ge v0, v2, :cond_0

    .line 406
    iget-object v2, p0, Lrx/internal/util/e;->e:Lrx/internal/util/e$b;

    invoke-virtual {v2, v0, p1}, Lrx/internal/util/e$b;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 408
    :cond_0
    :try_start_1
    sget v2, Lrx/internal/util/e;->c:I

    rem-int v1, v0, v2

    .line 409
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/e;->b(I)Lrx/internal/util/e$b;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lrx/internal/util/e$b;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    .end local v1    # "sectionIndex":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lrx/internal/util/e;->c()I

    move-result v0

    .line 295
    .local v0, "i":I
    sget v2, Lrx/internal/util/e;->c:I

    if-ge v0, v2, :cond_0

    .line 297
    iget-object v2, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    iget-object v2, v2, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 302
    :goto_0
    return v0

    .line 300
    :cond_0
    sget v2, Lrx/internal/util/e;->c:I

    rem-int v1, v0, v2

    .line 301
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/e;->c(I)Lrx/internal/util/e$a;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lrx/c/p;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    .local p1, "action":Lrx/c/p;, "Lrx/c/p<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/e;->a(Lrx/c/p;I)I

    move-result v0

    return v0
.end method

.method public a(Lrx/c/p;I)I
    .locals 2
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    .local p1, "action":Lrx/c/p;, "Lrx/c/p<-TE;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lrx/internal/util/e;->a(Lrx/c/p;II)I

    move-result v0

    .line 431
    .local v0, "endedAt":I
    if-lez p2, :cond_1

    iget-object v1, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 433
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lrx/internal/util/e;->a(Lrx/c/p;II)I

    move-result v0

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    iget-object v1, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 436
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    const/4 v3, 0x0

    .line 308
    sget v2, Lrx/internal/util/e;->c:I

    if-ge p1, v2, :cond_0

    .line 310
    iget-object v2, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    iget-object v2, v2, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-direct {p0, p1}, Lrx/internal/util/e;->d(I)V

    .line 316
    return-object v0

    .line 312
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    sget v2, Lrx/internal/util/e;->c:I

    rem-int v1, p1, v2

    .line 313
    .local v1, "sectionIndex":I
    invoke-direct {p0, p1}, Lrx/internal/util/e;->c(I)Lrx/internal/util/e$a;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    const/4 v6, 0x0

    .line 259
    iget-object v4, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 260
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 261
    .local v2, "realIndex":I
    iget-object v3, p0, Lrx/internal/util/e;->d:Lrx/internal/util/e$a;

    .line 262
    .local v3, "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lrx/internal/util/e;->c:I

    if-ge v0, v4, :cond_2

    .line 264
    if-lt v2, v1, :cond_1

    .line 274
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lrx/internal/util/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 275
    iget-object v4, p0, Lrx/internal/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 276
    return-void

    .line 269
    .restart local v0    # "i":I
    :cond_1
    iget-object v4, v3, Lrx/internal/util/e$a;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    :cond_2
    iget-object v4, v3, Lrx/internal/util/e$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    check-cast v3, Lrx/internal/util/e$a;

    .restart local v3    # "section":Lrx/internal/util/e$a;, "Lrx/internal/util/e$a<TE;>;"
    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 280
    .local p0, "this":Lrx/internal/util/e;, "Lrx/internal/util/e<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/e;->b()V

    .line 281
    return-void
.end method
