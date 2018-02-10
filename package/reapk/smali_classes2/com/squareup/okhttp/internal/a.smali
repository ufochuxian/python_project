.class public final Lcom/squareup/okhttp/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/a$b;,
        Lcom/squareup/okhttp/internal/a$a;,
        Lcom/squareup/okhttp/internal/a$c;
    }
.end annotation


# static fields
.field private static final E:Lokio/w;

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

.field private B:J

.field private final C:Ljava/util/concurrent/Executor;

.field private final D:Ljava/lang/Runnable;

.field private final m:Lcom/squareup/okhttp/internal/c/a;

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
            "Lcom/squareup/okhttp/internal/a$b;",
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
    const-class v0, Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/a;->h:Z

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/a;->g:Ljava/util/regex/Pattern;

    .line 810
    new-instance v0, Lcom/squareup/okhttp/internal/a$4;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a$4;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/a;->E:Lokio/w;

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/c/a;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7
    .param p1, "fileSystem"    # Lcom/squareup/okhttp/internal/c/a;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const-wide/16 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lcom/squareup/okhttp/internal/a;->u:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide v4, p0, Lcom/squareup/okhttp/internal/a;->B:J

    .line 168
    new-instance v0, Lcom/squareup/okhttp/internal/a$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a$1;-><init>(Lcom/squareup/okhttp/internal/a;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a;->D:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    .line 190
    iput-object p2, p0, Lcom/squareup/okhttp/internal/a;->n:Ljava/io/File;

    .line 191
    iput p3, p0, Lcom/squareup/okhttp/internal/a;->r:I

    .line 192
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a;->p:Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    .line 195
    iput p4, p0, Lcom/squareup/okhttp/internal/a;->t:I

    .line 196
    iput-wide p5, p0, Lcom/squareup/okhttp/internal/a;->s:J

    .line 197
    iput-object p7, p0, Lcom/squareup/okhttp/internal/a;->C:Ljava/util/concurrent/Executor;

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/squareup/okhttp/internal/a;->x:I

    return p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/a$a;
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/a$a;
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

    .line 451
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 453
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->p()V

    .line 454
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a;->e(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/internal/a$b;

    .line 456
    .local v1, "entry":Lcom/squareup/okhttp/internal/a$b;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 457
    invoke-static {v1}, Lcom/squareup/okhttp/internal/a$b;->g(Lcom/squareup/okhttp/internal/a$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 460
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v2

    if-nez v2, :cond_0

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

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

    .line 466
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-interface {v2}, Lokio/d;->flush()V

    .line 468
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/a;->y:Z

    if-nez v2, :cond_0

    .line 472
    if-nez v1, :cond_3

    .line 473
    new-instance v1, Lcom/squareup/okhttp/internal/a$b;

    .end local v1    # "entry":Lcom/squareup/okhttp/internal/a$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/squareup/okhttp/internal/a$b;-><init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;Lcom/squareup/okhttp/internal/a$1;)V

    .line 474
    .restart local v1    # "entry":Lcom/squareup/okhttp/internal/a$b;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/internal/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/okhttp/internal/a$a;-><init>(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$1;)V

    .line 477
    .local v0, "editor":Lcom/squareup/okhttp/internal/a$a;
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    .end local v0    # "editor":Lcom/squareup/okhttp/internal/a$a;
    .end local v1    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static a(Lcom/squareup/okhttp/internal/c/a;Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/a;
    .locals 12
    .param p0, "fileSystem"    # Lcom/squareup/okhttp/internal/c/a;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    .line 248
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gtz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-gtz p3, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
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

    .line 257
    invoke-static {v0, v8}, Lcom/squareup/okhttp/internal/j;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 259
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Lcom/squareup/okhttp/internal/a;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lcom/squareup/okhttp/internal/a;-><init>(Lcom/squareup/okhttp/internal/c/a;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method private declared-synchronized a(Lcom/squareup/okhttp/internal/a$a;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/a$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$a;->a(Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$b;

    move-result-object v2

    .line 517
    .local v2, "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 518
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v2    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 522
    .restart local v2    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 523
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/squareup/okhttp/internal/a;->t:I

    if-ge v3, v8, :cond_4

    .line 524
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$a;->b(Lcom/squareup/okhttp/internal/a$a;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 525
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a$a;->b()V

    .line 526
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

    .line 528
    :cond_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->d(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 529
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 523
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/squareup/okhttp/internal/a;->t:I

    if-ge v3, v8, :cond_7

    .line 536
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->d(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v8

    aget-object v1, v8, v3

    .line 537
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 538
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-interface {v8, v1}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 539
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->c(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v8

    aget-object v0, v8, v3

    .line 540
    .local v0, "clean":Ljava/io/File;
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-interface {v8, v1, v0}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 541
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->b(Lcom/squareup/okhttp/internal/a$b;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 542
    .local v6, "oldLength":J
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-interface {v8, v0}, Lcom/squareup/okhttp/internal/c/a;->f(Ljava/io/File;)J

    move-result-wide v4

    .line 543
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->b(Lcom/squareup/okhttp/internal/a$b;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 544
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a;->u:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/squareup/okhttp/internal/a;->u:J

    .line 535
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 547
    :cond_6
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-interface {v8, v1}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    goto :goto_3

    .line 551
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/squareup/okhttp/internal/a;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/okhttp/internal/a;->x:I

    .line 552
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;

    .line 553
    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 554
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Z)Z

    .line 555
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    const-string v9, "CLEAN"

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 556
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 557
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-virtual {v2, v8}, Lcom/squareup/okhttp/internal/a$b;->a(Lokio/d;)V

    .line 558
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 559
    if-eqz p2, :cond_8

    .line 560
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a;->B:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/squareup/okhttp/internal/a;->B:J

    invoke-static {v2, v8, v9}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;J)J

    .line 568
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-interface {v8}, Lokio/d;->flush()V

    .line 570
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/a;->u:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/a;->s:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->o()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 571
    :cond_9
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->C:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/a;->D:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 563
    :cond_a
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    const-string v9, "REMOVE"

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;

    .line 565
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 566
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lokio/d;->m(I)Lokio/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$a;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/a$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a$a;Z)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/a$b;)Z
    .locals 7
    .param p1, "entry"    # Lcom/squareup/okhttp/internal/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 603
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/squareup/okhttp/internal/a$a;->a(Lcom/squareup/okhttp/internal/a$a;Z)Z

    .line 607
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/squareup/okhttp/internal/a;->t:I

    if-ge v0, v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->c(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 609
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a;->u:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->b(Lcom/squareup/okhttp/internal/a$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/a;->u:J

    .line 610
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->b(Lcom/squareup/okhttp/internal/a$b;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    iget v1, p0, Lcom/squareup/okhttp/internal/a;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/a;->x:I

    .line 614
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    const-string v2, "REMOVE"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    move-result-object v1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    .line 615
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->C:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->D:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    :cond_2
    return v6
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a;->z:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/a;->y:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a;->A:Z

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->q()V

    return-void
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

    .line 313
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 314
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 315
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

    .line 318
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 319
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 321
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 322
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 324
    iget-object v6, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 328
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 331
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;

    .line 332
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    if-nez v0, :cond_4

    .line 333
    new-instance v0, Lcom/squareup/okhttp/internal/a$b;

    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-direct {v0, p0, v2, v8}, Lcom/squareup/okhttp/internal/a$b;-><init>(Lcom/squareup/okhttp/internal/a;Ljava/lang/String;Lcom/squareup/okhttp/internal/a$1;)V

    .line 334
    .restart local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
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

    .line 338
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Z)Z

    .line 340
    invoke-static {v0, v8}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;

    .line 341
    invoke-static {v0, v4}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 342
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

    .line 343
    new-instance v6, Lcom/squareup/okhttp/internal/a$a;

    invoke-direct {v6, p0, v0, v8}, Lcom/squareup/okhttp/internal/a$a;-><init>(Lcom/squareup/okhttp/internal/a;Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$1;)V

    invoke-static {v0, v6}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;

    goto :goto_0

    .line 344
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

    .line 347
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

.method static synthetic d(Lcom/squareup/okhttp/internal/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->n()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 692
    sget-object v1, Lcom/squareup/okhttp/internal/a;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 693
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
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

    .line 697
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/a;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/a;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/internal/a;->t:I

    return v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/a;)Lcom/squareup/okhttp/internal/c/a;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/a;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/a;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->n:Ljava/io/File;

    return-object v0
.end method

.method static synthetic j()Lokio/w;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/squareup/okhttp/internal/a;->E:Lokio/w;

    return-object v0
.end method

.method private k()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v8, v9}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;)Lokio/x;

    move-result-object v8

    invoke-static {v8}, Lokio/o;->a(Lokio/x;)Lokio/e;

    move-result-object v5

    .line 265
    .local v5, "source":Lokio/e;
    :try_start_0
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "magic":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "version":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    .line 271
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/squareup/okhttp/internal/a;->r:I

    .line 272
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/squareup/okhttp/internal/a;->t:I

    .line 273
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    .line 274
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 275
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

    .line 297
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    throw v8

    .line 279
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 282
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/squareup/okhttp/internal/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 288
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/squareup/okhttp/internal/a;->x:I

    .line 291
    invoke-interface {v5}, Lokio/e;->f()Z

    move-result v8

    if-nez v8, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :goto_1
    invoke-static {v5}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    .line 299
    return-void

    .line 294
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->l()Lokio/d;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private l()Lokio/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/c/a;->c(Ljava/io/File;)Lokio/w;

    move-result-object v1

    .line 303
    .local v1, "fileSink":Lokio/w;
    new-instance v0, Lcom/squareup/okhttp/internal/a$2;

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/a$2;-><init>(Lcom/squareup/okhttp/internal/a;Lokio/w;)V

    .line 309
    .local v0, "faultHidingSink":Lokio/w;
    invoke-static {v0}, Lokio/o;->a(Lokio/w;)Lokio/d;

    move-result-object v2

    return-object v2
.end method

.method private m()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a;->p:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 357
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/a$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;

    .line 359
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 360
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/squareup/okhttp/internal/a;->t:I

    if-ge v2, v3, :cond_0

    .line 361
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a;->u:J

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->b(Lcom/squareup/okhttp/internal/a$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/a;->u:J

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;Lcom/squareup/okhttp/internal/a$a;)Lcom/squareup/okhttp/internal/a$a;

    .line 365
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/squareup/okhttp/internal/a;->t:I

    if-ge v2, v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->c(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 367
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->d(Lcom/squareup/okhttp/internal/a$b;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 369
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private declared-synchronized n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-interface {v2}, Lokio/d;->close()V

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->p:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/c/a;->b(Ljava/io/File;)Lokio/w;

    move-result-object v2

    invoke-static {v2}, Lokio/o;->a(Lokio/w;)Lokio/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 385
    .local v1, "writer":Lokio/d;
    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 386
    const-string v2, "1"

    invoke-interface {v1, v2}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 387
    iget v2, p0, Lcom/squareup/okhttp/internal/a;->r:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/d;->n(J)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 388
    iget v2, p0, Lcom/squareup/okhttp/internal/a;->t:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/d;->n(J)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->m(I)Lokio/d;

    .line 389
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/d;->m(I)Lokio/d;

    .line 391
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;

    .line 392
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/d;->m(I)Lokio/d;

    .line 394
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 395
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lokio/d;->m(I)Lokio/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v1}, Lokio/d;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    .end local v1    # "writer":Lokio/d;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 397
    .restart local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    .restart local v1    # "writer":Lokio/d;
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lokio/d;->m(I)Lokio/d;

    .line 398
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->e(Lcom/squareup/okhttp/internal/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    .line 399
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a$b;->a(Lokio/d;)V

    .line 400
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lokio/d;->m(I)Lokio/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lokio/d;->close()V

    .line 407
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->p:Ljava/io/File;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 411
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 413
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->l()Lokio/d;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    .line 414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/a;->y:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    monitor-exit p0

    return-void
.end method

.method private o()Z
    .locals 3

    .prologue
    .line 580
    const/16 v0, 0x7d0

    .line 581
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/squareup/okhttp/internal/a;->x:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/squareup/okhttp/internal/a;->x:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    .line 582
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized p()V
    .locals 2

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 633
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private q()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    :goto_0
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/a;->u:J

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/a;->s:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;

    .line 665
    .local v0, "toEvict":Lcom/squareup/okhttp/internal/a$b;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a$b;)Z

    goto :goto_0

    .line 667
    .end local v0    # "toEvict":Lcom/squareup/okhttp/internal/a$b;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a$c;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 423
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 425
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->p()V

    .line 426
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a;->e(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;

    .line 428
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->f(Lcom/squareup/okhttp/internal/a$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 439
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 430
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a$b;->a()Lcom/squareup/okhttp/internal/a$c;

    move-result-object v1

    .line 431
    .local v1, "snapshot":Lcom/squareup/okhttp/internal/a$c;
    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    .line 433
    :cond_3
    iget v2, p0, Lcom/squareup/okhttp/internal/a;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/a;->x:I

    .line 434
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

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

    .line 435
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->C:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->D:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    .end local v1    # "snapshot":Lcom/squareup/okhttp/internal/a$c;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 202
    sget-boolean v1, Lcom/squareup/okhttp/internal/a;->h:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->z:Z

    if-eqz v1, :cond_1

    .line 236
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->d(Ljava/io/File;)V

    .line 219
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/c/a;->e(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->k()V

    .line 222
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->m()V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->z:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Lcom/squareup/okhttp/internal/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->n:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/h;->a(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->g()V

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->A:Z

    .line 233
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->n()V

    .line 235
    iput-boolean v4, p0, Lcom/squareup/okhttp/internal/a;->z:Z

    goto :goto_0

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->q:Ljava/io/File;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/a;->o:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/c/a;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method public declared-synchronized a(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/a;->s:J

    .line 500
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a;->z:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->C:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->D:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a$a;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/a;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->n:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a;->s:J
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
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 595
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->p()V

    .line 596
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/a;->e(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 599
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a$b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 593
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->z:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->A:Z

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/okhttp/internal/a$b;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/a$b;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 652
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 653
    invoke-static {v0}, Lcom/squareup/okhttp/internal/a$b;->a(Lcom/squareup/okhttp/internal/a$b;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/a$a;->b()V

    .line 651
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->q()V

    .line 657
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-interface {v1}, Lokio/d;->close()V

    .line 658
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/a;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
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
    .line 511
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 512
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/a;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/a;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 642
    :goto_0
    monitor-exit p0

    return-void

    .line 639
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->p()V

    .line 640
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/a;->q()V

    .line 641
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->v:Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->close()V

    .line 676
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a;->m:Lcom/squareup/okhttp/internal/c/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->n:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/c/a;->g(Ljava/io/File;)V

    .line 677
    return-void
.end method

.method public declared-synchronized h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 686
    iget-object v1, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/okhttp/internal/a$b;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/a$b;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 687
    .local v0, "entry":Lcom/squareup/okhttp/internal/a$b;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    .end local v0    # "entry":Lcom/squareup/okhttp/internal/a$b;
    :cond_0
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/okhttp/internal/a$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/a;->a()V

    .line 716
    new-instance v0, Lcom/squareup/okhttp/internal/a$3;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/a$3;-><init>(Lcom/squareup/okhttp/internal/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
