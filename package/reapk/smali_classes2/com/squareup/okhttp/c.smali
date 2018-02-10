.class public final Lcom/squareup/okhttp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/c$b;,
        Lcom/squareup/okhttp/c$c;,
        Lcom/squareup/okhttp/c$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x31191

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2


# instance fields
.field final a:Lcom/squareup/okhttp/internal/d;

.field private final f:Lcom/squareup/okhttp/internal/a;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/squareup/okhttp/c$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/c$1;-><init>(Lcom/squareup/okhttp/c;)V

    iput-object v0, p0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/internal/d;

    .line 168
    sget-object v0, Lcom/squareup/okhttp/internal/c/a;->a:Lcom/squareup/okhttp/internal/c/a;

    const v2, 0x31191

    const/4 v3, 0x2

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/c/a;Ljava/io/File;IIJ)Lcom/squareup/okhttp/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    .line 169
    return-void
.end method

.method static synthetic a(Lokio/e;)I
    .locals 1
    .param p0, "x0"    # Lokio/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Lcom/squareup/okhttp/c;->b(Lokio/e;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/c;
    .param p1, "x1"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/squareup/okhttp/x;)Lcom/squareup/okhttp/internal/a/b;
    .locals 7
    .param p1, "response"    # Lcom/squareup/okhttp/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/v;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/a/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/squareup/okhttp/c;->c(Lcom/squareup/okhttp/v;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :cond_0
    :goto_0
    return-object v4

    .line 217
    :cond_1
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->b(Lcom/squareup/okhttp/x;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    new-instance v2, Lcom/squareup/okhttp/c$c;

    invoke-direct {v2, p1}, Lcom/squareup/okhttp/c$c;-><init>(Lcom/squareup/okhttp/x;)V

    .line 229
    .local v2, "entry":Lcom/squareup/okhttp/c$c;
    const/4 v1, 0x0

    .line 231
    .local v1, "editor":Lcom/squareup/okhttp/internal/a$a;
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()Lcom/squareup/okhttp/v;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/c;->b(Lcom/squareup/okhttp/v;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/a;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a$a;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/c$c;->a(Lcom/squareup/okhttp/internal/a$a;)V

    .line 236
    new-instance v5, Lcom/squareup/okhttp/c$a;

    invoke-direct {v5, p0, v1}, Lcom/squareup/okhttp/c$a;-><init>(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/internal/a$a;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lcom/squareup/okhttp/internal/a$a;
    .end local v2    # "entry":Lcom/squareup/okhttp/c$c;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/squareup/okhttp/c;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/squareup/okhttp/c;->o()V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/internal/a/c;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/c;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/a/c;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/internal/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/v;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/c;
    .param p1, "x1"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/c;->c(Lcom/squareup/okhttp/v;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/c;Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/c;
    .param p1, "x1"    # Lcom/squareup/okhttp/x;
    .param p2, "x2"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V

    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/a$a;)V
    .locals 1
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/a$a;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/a$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/squareup/okhttp/internal/a/c;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/squareup/okhttp/internal/a/c;

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/c;->k:I

    .line 376
    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/c;->a:Lcom/squareup/okhttp/v;

    if-eqz v0, :cond_1

    .line 378
    iget v0, p0, Lcom/squareup/okhttp/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 380
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/c;->b:Lcom/squareup/okhttp/x;

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lcom/squareup/okhttp/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/c;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/squareup/okhttp/x;Lcom/squareup/okhttp/x;)V
    .locals 5
    .param p1, "cached"    # Lcom/squareup/okhttp/x;
    .param p2, "network"    # Lcom/squareup/okhttp/x;

    .prologue
    .line 248
    new-instance v2, Lcom/squareup/okhttp/c$c;

    invoke-direct {v2, p2}, Lcom/squareup/okhttp/c$c;-><init>(Lcom/squareup/okhttp/x;)V

    .line 249
    .local v2, "entry":Lcom/squareup/okhttp/c$c;
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/c$b;

    invoke-static {v4}, Lcom/squareup/okhttp/c$b;->a(Lcom/squareup/okhttp/c$b;)Lcom/squareup/okhttp/internal/a$c;

    move-result-object v3

    .line 250
    .local v3, "snapshot":Lcom/squareup/okhttp/internal/a$c;
    const/4 v1, 0x0

    .line 252
    .local v1, "editor":Lcom/squareup/okhttp/internal/a$a;
    :try_start_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a$c;->b()Lcom/squareup/okhttp/internal/a$a;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/c$c;->a(Lcom/squareup/okhttp/internal/a$a;)V

    .line 255
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/internal/a$a;)V

    goto :goto_0
.end method

.method private static b(Lokio/e;)I
    .locals 7
    .param p0, "source"    # Lokio/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    :try_start_0
    invoke-interface {p0}, Lokio/e;->p()J

    move-result-wide v2

    .line 661
    .local v2, "result":J
    invoke-interface {p0}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 665
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method static synthetic b(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/internal/a;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    return-object v0
.end method

.method private static b(Lcom/squareup/okhttp/v;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/squareup/okhttp/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/c;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 131
    iget v0, p0, Lcom/squareup/okhttp/c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/c;->g:I

    return v0
.end method

.method private c(Lcom/squareup/okhttp/v;)V
    .locals 2
    .param p1, "request"    # Lcom/squareup/okhttp/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-static {p1}, Lcom/squareup/okhttp/c;->b(Lcom/squareup/okhttp/v;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a;->c(Ljava/lang/String;)Z

    .line 245
    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/c;)I
    .locals 2
    .param p0, "x0"    # Lcom/squareup/okhttp/c;

    .prologue
    .line 131
    iget v0, p0, Lcom/squareup/okhttp/c;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/c;->h:I

    return v0
.end method

.method private declared-synchronized o()V
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/c;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lcom/squareup/okhttp/v;)Lcom/squareup/okhttp/x;
    .locals 7
    .param p1, "request"    # Lcom/squareup/okhttp/v;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-static {p1}, Lcom/squareup/okhttp/c;->b(Lcom/squareup/okhttp/v;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v6, v2}, Lcom/squareup/okhttp/internal/a;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 181
    .local v4, "snapshot":Lcom/squareup/okhttp/internal/a$c;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 203
    .end local v4    # "snapshot":Lcom/squareup/okhttp/internal/a$c;
    :cond_0
    :goto_0
    return-object v3

    .line 184
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 186
    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/squareup/okhttp/internal/a$c;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/squareup/okhttp/c$c;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/squareup/okhttp/internal/a$c;->a(I)Lokio/x;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/squareup/okhttp/c$c;-><init>(Lokio/x;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .local v1, "entry":Lcom/squareup/okhttp/c$c;
    invoke-virtual {v1, p1, v4}, Lcom/squareup/okhttp/c$c;->a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/internal/a$c;)Lcom/squareup/okhttp/x;

    move-result-object v3

    .line 198
    .local v3, "response":Lcom/squareup/okhttp/x;
    invoke-virtual {v1, p1, v3}, Lcom/squareup/okhttp/c$c;->a(Lcom/squareup/okhttp/v;Lcom/squareup/okhttp/x;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    invoke-virtual {v3}, Lcom/squareup/okhttp/x;->h()Lcom/squareup/okhttp/y;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 200
    goto :goto_0

    .line 191
    .end local v1    # "entry":Lcom/squareup/okhttp/c$c;
    .end local v3    # "response":Lcom/squareup/okhttp/x;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/j;->a(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 193
    goto :goto_0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->g()V

    .line 279
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->h()V

    .line 287
    return-void
.end method

.method public c()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/squareup/okhttp/c$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/c$2;-><init>(Lcom/squareup/okhttp/c;)V

    return-object v0
.end method

.method public declared-synchronized d()I
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->f()V

    .line 359
    return-void
.end method

.method public i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->close()V

    .line 363
    return-void
.end method

.method public j()Ljava/io/File;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/c;->f:Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a;->e()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized l()I
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()I
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()I
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/squareup/okhttp/c;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
