.class public final Lcom/squareup/okhttp/internal/spdy/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/n$c;,
        Lcom/squareup/okhttp/internal/spdy/n$a;,
        Lcom/squareup/okhttp/internal/spdy/n$b;
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lcom/squareup/okhttp/internal/spdy/n$a;

.field private final e:I

.field private final f:Lcom/squareup/okhttp/internal/spdy/m;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/squareup/okhttp/internal/spdy/n$b;

.field private final j:Lcom/squareup/okhttp/internal/spdy/n$c;

.field private final k:Lcom/squareup/okhttp/internal/spdy/n$c;

.field private l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/spdy/m;ZZLjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/spdy/m;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    const/4 v4, 0x0

    const/high16 v2, 0x10000

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->a:J

    .line 65
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n$c;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/n$c;-><init>(Lcom/squareup/okhttp/internal/spdy/n;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    .line 66
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n$c;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/n$c;-><init>(Lcom/squareup/okhttp/internal/spdy/n;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->k:Lcom/squareup/okhttp/internal/spdy/n$c;

    .line 73
    iput-object v4, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 77
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    .line 80
    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    .line 81
    iget-object v0, p2, Lcom/squareup/okhttp/internal/spdy/m;->f:Lcom/squareup/okhttp/internal/spdy/k;

    .line 82
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:J

    .line 83
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n$b;

    iget-object v1, p2, Lcom/squareup/okhttp/internal/spdy/m;->e:Lcom/squareup/okhttp/internal/spdy/k;

    .line 84
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/spdy/k;->l(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/n$b;-><init>(Lcom/squareup/okhttp/internal/spdy/n;JLcom/squareup/okhttp/internal/spdy/n$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    .line 85
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/n$a;-><init>(Lcom/squareup/okhttp/internal/spdy/n;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v0, p4}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lcom/squareup/okhttp/internal/spdy/n$b;Z)Z

    .line 87
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;Z)Z

    .line 88
    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/n;->g:Ljava/util/List;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/n;)Lcom/squareup/okhttp/internal/spdy/m;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/n;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;

    .prologue
    .line 34
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/n;)Lcom/squareup/okhttp/internal/spdy/n$c;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/n;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method private d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    const/4 v0, 0x0

    .line 237
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v1, :cond_1

    .line 240
    monitor-exit p0

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lcom/squareup/okhttp/internal/spdy/n$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/n;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->o()V

    return-void
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/n;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->m()V

    return-void
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/spdy/n;)Lcom/squareup/okhttp/internal/spdy/n$c;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->k:Lcom/squareup/okhttp/internal/spdy/n$c;

    return-object v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/spdy/n;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/n;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->n()V

    return-void
.end method

.method private m()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    sget-boolean v2, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 450
    :cond_0
    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lcom/squareup/okhttp/internal/spdy/n$b;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/n$b;->b(Lcom/squareup/okhttp/internal/spdy/n$b;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/n$a;->b(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 452
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Z

    move-result v1

    .line 453
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz v0, :cond_4

    .line 459
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/n;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 463
    :cond_2
    :goto_1
    return-void

    .line 451
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 460
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 461
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    goto :goto_1
.end method

.method private n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/n$a;->b(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_2

    .line 572
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_2
    return-void
.end method

.method private o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    return v0
.end method

.method a(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 562
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->b:J

    .line 563
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 564
    :cond_0
    return-void
.end method

.method public a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/n;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/m;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method a(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .locals 5
    .param p2, "headersMode"    # Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    sget-boolean v3, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 254
    :cond_0
    const/4 v0, 0x0

    .line 255
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    const/4 v2, 0x1

    .line 256
    .local v2, "open":Z
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    if-nez v3, :cond_3

    .line 258
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 275
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/n;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 281
    :cond_1
    :goto_1
    return-void

    .line 261
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Z

    move-result v2

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 266
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_0

    .line 269
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 278
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    :cond_5
    if-nez v2, :cond_1

    .line 279
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    goto :goto_1
.end method

.method public a(Ljava/util/List;Z)V
    .locals 3
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/c;>;"
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 166
    if-nez p1, :cond_1

    .line 167
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    .line 173
    if-nez p2, :cond_3

    .line 174
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;Z)Z

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(IZLjava/util/List;)V

    .line 180
    if-eqz v0, :cond_4

    .line 181
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/m;->f()V

    .line 183
    :cond_4
    return-void
.end method

.method a(Lokio/e;I)V
    .locals 4
    .param p1, "in"    # Lokio/e;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lokio/e;J)V

    .line 286
    return-void
.end method

.method public b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/n;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/m;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_0
.end method

.method public declared-synchronized b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lcom/squareup/okhttp/internal/spdy/n$b;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$b;->b(Lcom/squareup/okhttp/internal/spdy/n$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    .line 110
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$a;->a(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/n$a;->b(Lcom/squareup/okhttp/internal/spdy/n$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 114
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 303
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 120
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/spdy/m;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method

.method public d()Lcom/squareup/okhttp/internal/spdy/m;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->g:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/n;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/n$c;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n$c;->b()V

    .line 144
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 145
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public declared-synchronized g()Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Lokio/y;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->j:Lcom/squareup/okhttp/internal/spdy/n$c;

    return-object v0
.end method

.method public i()Lokio/y;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->k:Lcom/squareup/okhttp/internal/spdy/n$c;

    return-object v0
.end method

.method public j()Lokio/x;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    return-object v0
.end method

.method public k()Lokio/w;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->h:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/n;->c:Lcom/squareup/okhttp/internal/spdy/n$a;

    return-object v0
.end method

.method l()V
    .locals 3

    .prologue
    .line 289
    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/n;->d:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 291
    :cond_0
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->i:Lcom/squareup/okhttp/internal/spdy/n$b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/n$b;->a(Lcom/squareup/okhttp/internal/spdy/n$b;Z)Z

    .line 293
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/n;->b()Z

    move-result v0

    .line 294
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/n;->f:Lcom/squareup/okhttp/internal/spdy/m;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/n;->e:I

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/spdy/m;->b(I)Lcom/squareup/okhttp/internal/spdy/n;

    .line 299
    :cond_1
    return-void

    .line 295
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method