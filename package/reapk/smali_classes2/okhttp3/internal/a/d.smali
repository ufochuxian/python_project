.class public final Lokhttp3/internal/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/a/d$b;,
        Lokhttp3/internal/a/d$a;,
        Lokhttp3/internal/a/d$c;
    }
.end annotation


# static fields
.field private static final G:Lokio/w;

.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field static final g:Ljava/util/regex/Pattern;

.field static final synthetic h:Z

.field private static final i:Ljava/lang/String; = "CLEAN"

.field private static final j:Ljava/lang/String; = "DIRTY"

.field private static final k:Ljava/lang/String; = "REMOVE"

.field private static final l:Ljava/lang/String; = "READ"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:J

.field private final E:Ljava/util/concurrent/Executor;

.field private final F:Ljava/lang/Runnable;

.field private final m:Lokhttp3/internal/c/a;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:Ljava/io/File;

.field private final r:I

.field private s:J

.field private final t:I

.field private u:J

.field private v:Lokio/d;

.field private final w:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/a/d;->h:Z

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/a/d;->g:Ljava/util/regex/Pattern;

    .line 825
    new-instance v0, Lokhttp3/internal/a/d$4;

    invoke-direct {v0}, Lokhttp3/internal/a/d$4;-><init>()V

    sput-object v0, Lokhttp3/internal/a/d;->G:Lokio/w;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/c/a;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "fileSystem"    # Lokhttp3/internal/c/a;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const-wide/16 v4, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lokhttp3/internal/a/d;->u:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    .line 166
    iput-wide v4, p0, Lokhttp3/internal/a/d;->D:J

    .line 170
    new-instance v0, Lokhttp3/internal/a/d$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/a/d$1;-><init>(Lokhttp3/internal/a/d;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    .line 198
    iput-object p1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    .line 199
    iput-object p2, p0, Lokhttp3/internal/a/d;->n:Ljava/io/File;

    .line 200
    iput p3, p0, Lokhttp3/internal/a/d;->r:I

    .line 201
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    .line 202
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->p:Ljava/io/File;

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    .line 204
    iput p4, p0, Lokhttp3/internal/a/d;->t:I

    .line 205
    iput-wide p5, p0, Lokhttp3/internal/a/d;->s:J

    .line 206
    iput-object p7, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    .line 207
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/a/d;I)I
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lokhttp3/internal/a/d;->x:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 458
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 460
    invoke-direct {p0}, Lokhttp3/internal/a/d;->o()V

    .line 461
    invoke-direct {p0, p1}, Lokhttp3/internal/a/d;->e(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/a/d$b;

    .line 463
    .local v1, "entry":Lokhttp3/internal/a/d$b;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 464
    invoke-static {v1}, Lokhttp3/internal/a/d$b;->g(Lokhttp3/internal/a/d$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 467
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 470
    :cond_2
    iget-boolean v2, p0, Lokhttp3/internal/a/d;->B:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lokhttp3/internal/a/d;->C:Z

    if-eqz v2, :cond_4

    .line 476
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    .end local v1    # "entry":Lokhttp3/internal/a/d$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 481
    .restart local v1    # "entry":Lokhttp3/internal/a/d$b;
    :cond_4
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const-string v3, "DIRTY"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 482
    iget-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-interface {v2}, Lokio/d;->flush()V

    .line 484
    iget-boolean v2, p0, Lokhttp3/internal/a/d;->y:Z

    if-nez v2, :cond_0

    .line 488
    if-nez v1, :cond_5

    .line 489
    new-instance v1, Lokhttp3/internal/a/d$b;

    .end local v1    # "entry":Lokhttp3/internal/a/d$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lokhttp3/internal/a/d$b;-><init>(Lokhttp3/internal/a/d;Ljava/lang/String;Lokhttp3/internal/a/d$1;)V

    .line 490
    .restart local v1    # "entry":Lokhttp3/internal/a/d$b;
    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_5
    new-instance v0, Lokhttp3/internal/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lokhttp3/internal/a/d$a;-><init>(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$1;)V

    .line 493
    .local v0, "editor":Lokhttp3/internal/a/d$a;
    invoke-static {v1, v0}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/internal/a/d;Ljava/lang/String;J)Lokhttp3/internal/a/d$a;
    .locals 2
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/a/d;->a(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lokhttp3/internal/c/a;Ljava/io/File;IIJ)Lokhttp3/internal/a/d;
    .locals 12
    .param p0, "fileSystem"    # Lokhttp3/internal/c/a;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    .line 256
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gtz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-gtz p3, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    const/4 v8, 0x1

    .line 265
    invoke-static {v0, v8}, Lokhttp3/internal/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 267
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Lokhttp3/internal/a/d;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/a/d;-><init>(Lokhttp3/internal/c/a;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method static synthetic a(Lokhttp3/internal/a/d;Lokio/d;)Lokio/d;
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Lokio/d;

    .prologue
    .line 88
    iput-object p1, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    return-object p1
.end method

.method private declared-synchronized a(Lokhttp3/internal/a/d$a;Z)V
    .locals 12
    .param p1, "editor"    # Lokhttp3/internal/a/d$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lokhttp3/internal/a/d$a;->a(Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$b;

    move-result-object v2

    .line 531
    .local v2, "entry":Lokhttp3/internal/a/d$b;
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 532
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v2    # "entry":Lokhttp3/internal/a/d$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 536
    .restart local v2    # "entry":Lokhttp3/internal/a/d$b;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->f(Lokhttp3/internal/a/d$b;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 537
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lokhttp3/internal/a/d;->t:I

    if-ge v3, v8, :cond_4

    .line 538
    invoke-static {p1}, Lokhttp3/internal/a/d$a;->b(Lokhttp3/internal/a/d$a;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 539
    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->c()V

    .line 540
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 542
    :cond_1
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-static {v2}, Lokhttp3/internal/a/d$b;->d(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 543
    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 537
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lokhttp3/internal/a/d;->t:I

    if-ge v3, v8, :cond_7

    .line 550
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->d(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v8

    aget-object v1, v8, v3

    .line 551
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 552
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-interface {v8, v1}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 553
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->c(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v8

    aget-object v0, v8, v3

    .line 554
    .local v0, "clean":Ljava/io/File;
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-interface {v8, v1, v0}, Lokhttp3/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 555
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->b(Lokhttp3/internal/a/d$b;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 556
    .local v6, "oldLength":J
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-interface {v8, v0}, Lokhttp3/internal/c/a;->f(Ljava/io/File;)J

    move-result-wide v4

    .line 557
    .local v4, "newLength":J
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->b(Lokhttp3/internal/a/d$b;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 558
    iget-wide v8, p0, Lokhttp3/internal/a/d;->u:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lokhttp3/internal/a/d;->u:J

    .line 549
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 561
    :cond_6
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-interface {v8, v1}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    goto :goto_3

    .line 565
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lokhttp3/internal/a/d;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lokhttp3/internal/a/d;->x:I

    .line 566
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$a;

    .line 567
    invoke-static {v2}, Lokhttp3/internal/a/d$b;->f(Lokhttp3/internal/a/d$b;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 568
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Z)Z

    .line 569
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const-string v9, "CLEAN"

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 570
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-static {v2}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 571
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-virtual {v2, v8}, Lokhttp3/internal/a/d$b;->a(Lokio/d;)V

    .line 572
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 573
    if-eqz p2, :cond_8

    .line 574
    iget-wide v8, p0, Lokhttp3/internal/a/d;->D:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lokhttp3/internal/a/d;->D:J

    invoke-static {v2, v8, v9}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;J)J

    .line 582
    :cond_8
    :goto_4
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-interface {v8}, Lokio/d;->flush()V

    .line 584
    iget-wide v8, p0, Lokhttp3/internal/a/d;->u:J

    iget-wide v10, p0, Lokhttp3/internal/a/d;->s:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lokhttp3/internal/a/d;->n()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 585
    :cond_9
    iget-object v8, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 577
    :cond_a
    iget-object v8, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const-string v9, "REMOVE"

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 579
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-static {v2}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 580
    iget-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$a;Z)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Lokhttp3/internal/a/d$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$a;Z)V

    return-void
.end method

.method private a(Lokhttp3/internal/a/d$b;)Z
    .locals 6
    .param p1, "entry"    # Lokhttp3/internal/a/d$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-static {p1}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 619
    invoke-static {p1}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/a/d$a;->a()V

    .line 622
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lokhttp3/internal/a/d;->t:I

    if-ge v0, v1, :cond_1

    .line 623
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-static {p1}, Lokhttp3/internal/a/d$b;->c(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 624
    iget-wide v2, p0, Lokhttp3/internal/a/d;->u:J

    invoke-static {p1}, Lokhttp3/internal/a/d$b;->b(Lokhttp3/internal/a/d$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/a/d;->u:J

    .line 625
    invoke-static {p1}, Lokhttp3/internal/a/d$b;->b(Lokhttp3/internal/a/d$b;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    iget v1, p0, Lokhttp3/internal/a/d;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/a/d;->x:I

    .line 629
    iget-object v1, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const-string v2, "REMOVE"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    move-result-object v1

    invoke-static {p1}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    .line 630
    iget-object v1, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lokhttp3/internal/a/d;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    iget-object v1, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 636
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic a(Lokhttp3/internal/a/d;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->z:Z

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Lokhttp3/internal/a/d$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lokhttp3/internal/a/d;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/a/d;->B:Z

    return p1
.end method

.method static synthetic b(Lokhttp3/internal/a/d;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->A:Z

    return v0
.end method

.method static synthetic b(Lokhttp3/internal/a/d;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/a/d;->C:Z

    return p1
.end method

.method static synthetic c(Lokhttp3/internal/a/d;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/a/d;->p()V

    return-void
.end method

.method static synthetic c(Lokhttp3/internal/a/d;Z)Z
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/a/d;->y:Z

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 321
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 322
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 323
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 326
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 327
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 329
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 330
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    iget-object v6, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 336
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 340
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    if-nez v0, :cond_4

    .line 341
    new-instance v0, Lokhttp3/internal/a/d$b;

    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    invoke-direct {v0, p0, v2, v8}, Lokhttp3/internal/a/d$b;-><init>(Lokhttp3/internal/a/d;Ljava/lang/String;Lokhttp3/internal/a/d$1;)V

    .line 342
    .restart local v0    # "entry":Lokhttp3/internal/a/d$b;
    iget-object v6, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 346
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Z)Z

    .line 348
    invoke-static {v0, v8}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$a;

    .line 349
    invoke-static {v0, v4}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 351
    new-instance v6, Lokhttp3/internal/a/d$a;

    invoke-direct {v6, p0, v0, v8}, Lokhttp3/internal/a/d$a;-><init>(Lokhttp3/internal/a/d;Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$1;)V

    invoke-static {v0, v6}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$a;

    goto :goto_0

    .line 352
    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 355
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static synthetic d(Lokhttp3/internal/a/d;)Z
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/a/d;->n()Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 708
    sget-object v1, Lokhttp3/internal/a/d;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 709
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_0
    return-void
.end method

.method static synthetic e(Lokhttp3/internal/a/d;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/internal/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lokhttp3/internal/a/d;->m()V

    return-void
.end method

.method static synthetic f(Lokhttp3/internal/a/d;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/a/d;)I
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget v0, p0, Lokhttp3/internal/a/d;->t:I

    return v0
.end method

.method static synthetic h(Lokhttp3/internal/a/d;)Lokhttp3/internal/c/a;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/internal/a/d;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/a/d;

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/internal/a/d;->n:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i()Lokio/w;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lokhttp3/internal/a/d;->G:Lokio/w;

    return-object v0
.end method

.method private j()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v8, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v9, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v8, v9}, Lokhttp3/internal/c/a;->a(Ljava/io/File;)Lokio/x;

    move-result-object v8

    invoke-static {v8}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v5

    .line 273
    .local v5, "source":Lokio/e;
    :try_start_0
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "magic":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "version":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    .line 279
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lokhttp3/internal/a/d;->r:I

    .line 280
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lokhttp3/internal/a/d;->t:I

    .line 281
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    .line 282
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 283
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    throw v8

    .line 287
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 290
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lokhttp3/internal/a/d;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v2

    .line 296
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lokhttp3/internal/a/d;->x:I

    .line 299
    invoke-interface {v5}, Lokio/e;->f()Z

    move-result v8

    if-nez v8, :cond_2

    .line 300
    invoke-direct {p0}, Lokhttp3/internal/a/d;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :goto_1
    invoke-static {v5}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 307
    return-void

    .line 302
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lokhttp3/internal/a/d;->k()Lokio/d;

    move-result-object v8

    iput-object v8, p0, Lokhttp3/internal/a/d;->v:Lokio/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private k()Lokio/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/c/a;->c(Ljava/io/File;)Lokio/w;

    move-result-object v1

    .line 311
    .local v1, "fileSink":Lokio/w;
    new-instance v0, Lokhttp3/internal/a/d$2;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/a/d$2;-><init>(Lokhttp3/internal/a/d;Lokio/w;)V

    .line 317
    .local v0, "faultHidingSink":Lokio/w;
    invoke-static {v0}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v2

    return-object v2
.end method

.method private l()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v3, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v4, p0, Lokhttp3/internal/a/d;->p:Ljava/io/File;

    invoke-interface {v3, v4}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 365
    iget-object v3, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/a/d$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 367
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 368
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lokhttp3/internal/a/d;->t:I

    if-ge v2, v3, :cond_0

    .line 369
    iget-wide v4, p0, Lokhttp3/internal/a/d;->u:J

    invoke-static {v0}, Lokhttp3/internal/a/d$b;->b(Lokhttp3/internal/a/d$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/a/d;->u:J

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;Lokhttp3/internal/a/d$a;)Lokhttp3/internal/a/d$a;

    .line 373
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lokhttp3/internal/a/d;->t:I

    if-ge v2, v3, :cond_2

    .line 374
    iget-object v3, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-static {v0}, Lokhttp3/internal/a/d$b;->c(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 375
    iget-object v3, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    invoke-static {v0}, Lokhttp3/internal/a/d$b;->d(Lokhttp3/internal/a/d$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 377
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 380
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private declared-synchronized m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-interface {v2}, Lokio/d;->close()V

    .line 391
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->p:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/c/a;->b(Ljava/io/File;)Lokio/w;

    move-result-object v2

    invoke-static {v2}, Lokio/o;->a(Lokio/w;)Lokio/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 393
    .local v1, "writer":Lokio/d;
    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 394
    const-string v2, "1"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 395
    iget v2, p0, Lokhttp3/internal/a/d;->r:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/d;->n(J)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 396
    iget v2, p0, Lokhttp3/internal/a/d;->t:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/d;->n(J)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 397
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    .line 399
    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 400
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 401
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/d;->m(I)Lokio/d;

    .line 402
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 403
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lokio/d;->m(I)Lokio/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v1}, Lokio/d;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    .end local v1    # "writer":Lokio/d;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 405
    .restart local v0    # "entry":Lokhttp3/internal/a/d$b;
    .restart local v1    # "writer":Lokio/d;
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/d;->m(I)Lokio/d;

    .line 406
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->e(Lokhttp3/internal/a/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 407
    invoke-virtual {v0, v1}, Lokhttp3/internal/a/d$b;->a(Lokio/d;)V

    .line 408
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lokio/d;->m(I)Lokio/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lokio/d;->close()V

    .line 415
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    iget-object v4, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lokhttp3/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 418
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->p:Ljava/io/File;

    iget-object v4, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lokhttp3/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 419
    iget-object v2, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v3, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    invoke-interface {v2, v3}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 421
    invoke-direct {p0}, Lokhttp3/internal/a/d;->k()Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    .line 422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/a/d;->y:Z

    .line 423
    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/a/d;->C:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    monitor-exit p0

    return-void
.end method

.method private n()Z
    .locals 3

    .prologue
    .line 594
    const/16 v0, 0x7d0

    .line 595
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lokhttp3/internal/a/d;->x:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lokhttp3/internal/a/d;->x:I

    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    .line 596
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 595
    :goto_0
    return v1

    .line 596
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized o()V
    .locals 2

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 648
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private p()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :goto_0
    iget-wide v2, p0, Lokhttp3/internal/a/d;->u:J

    iget-wide v4, p0, Lokhttp3/internal/a/d;->s:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 679
    iget-object v1, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 680
    .local v0, "toEvict":Lokhttp3/internal/a/d$b;
    invoke-direct {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    goto :goto_0

    .line 682
    .end local v0    # "toEvict":Lokhttp3/internal/a/d$b;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->B:Z

    .line 683
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lokhttp3/internal/a/d$c;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 433
    invoke-direct {p0}, Lokhttp3/internal/a/d;->o()V

    .line 434
    invoke-direct {p0, p1}, Lokhttp3/internal/a/d;->e(Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 436
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/internal/a/d$b;->f(Lokhttp3/internal/a/d$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 447
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 438
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/a/d$b;->a()Lokhttp3/internal/a/d$c;

    move-result-object v1

    .line 439
    .local v1, "snapshot":Lokhttp3/internal/a/d$c;
    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 441
    :cond_3
    iget v2, p0, Lokhttp3/internal/a/d;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokhttp3/internal/a/d;->x:I

    .line 442
    iget-object v2, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    const-string v3, "READ"

    invoke-interface {v2, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    move-result-object v2

    invoke-interface {v2, p1}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 443
    invoke-direct {p0}, Lokhttp3/internal/a/d;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    iget-object v2, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    .end local v1    # "snapshot":Lokhttp3/internal/a/d$c;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lokhttp3/internal/a/d;->h:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 212
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lokhttp3/internal/a/d;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 244
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/c/a;->d(Ljava/io/File;)V

    .line 227
    :cond_2
    :goto_1
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/c/a;->e(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    :try_start_3
    invoke-direct {p0}, Lokhttp3/internal/a/d;->j()V

    .line 230
    invoke-direct {p0}, Lokhttp3/internal/a/d;->l()V

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->z:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lokhttp3/internal/d/e;->b()Lokhttp3/internal/d/e;

    move-result-object v1

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/a/d;->n:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/d/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->f()V

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->A:Z

    .line 241
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/a/d;->m()V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->z:Z

    goto :goto_0

    .line 222
    :cond_4
    iget-object v1, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/a/d;->q:Ljava/io/File;

    iget-object v3, p0, Lokhttp3/internal/a/d;->o:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lokhttp3/internal/a/d;->s:J

    .line 515
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->z:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lokhttp3/internal/a/d;->E:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/d;->F:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lokhttp3/internal/a/d;->n:Ljava/io/File;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokhttp3/internal/a/d$a;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/a/d;->a(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/a/d;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 606
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 608
    invoke-direct {p0}, Lokhttp3/internal/a/d;->o()V

    .line 609
    invoke-direct {p0, p1}, Lokhttp3/internal/a/d;->e(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 612
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    move-result v1

    .line 613
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/a/d;->u:J

    iget-wide v4, p0, Lokhttp3/internal/a/d;->s:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/a/d;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    .end local v1    # "removed":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/a/d;->z:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lokhttp3/internal/a/d;->A:Z

    if-eqz v1, :cond_1

    .line 662
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/a/d$b;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/a/d$b;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 667
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 668
    invoke-static {v0}, Lokhttp3/internal/a/d$b;->a(Lokhttp3/internal/a/d$b;)Lokhttp3/internal/a/d$a;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/internal/a/d$a;->c()V

    .line 666
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 671
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    :cond_3
    invoke-direct {p0}, Lokhttp3/internal/a/d;->p()V

    .line 672
    iget-object v1, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-interface {v1}, Lokio/d;->close()V

    .line 673
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    .line 674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 526
    iget-wide v0, p0, Lokhttp3/internal/a/d;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->close()V

    .line 691
    iget-object v0, p0, Lokhttp3/internal/a/d;->m:Lokhttp3/internal/c/a;

    iget-object v1, p0, Lokhttp3/internal/a/d;->n:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/c/a;->g(Ljava/io/File;)V

    .line 692
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/a/d;->o()V

    .line 655
    invoke-direct {p0}, Lokhttp3/internal/a/d;->p()V

    .line 656
    iget-object v0, p0, Lokhttp3/internal/a/d;->v:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 699
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 701
    iget-object v1, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/a/d;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v3, v3, [Lokhttp3/internal/a/d$b;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/internal/a/d$b;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 702
    .local v0, "entry":Lokhttp3/internal/a/d$b;
    invoke-direct {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v0    # "entry":Lokhttp3/internal/a/d$b;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/a/d;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lokhttp3/internal/a/d$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()V

    .line 732
    new-instance v0, Lokhttp3/internal/a/d$3;

    invoke-direct {v0, p0}, Lokhttp3/internal/a/d$3;-><init>(Lokhttp3/internal/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
