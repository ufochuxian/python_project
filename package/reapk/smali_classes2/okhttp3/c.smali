.class public final Lokhttp3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/c$b;,
        Lokhttp3/c$c;,
        Lokhttp3/c$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x31191

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2


# instance fields
.field final a:Lokhttp3/internal/a/f;

.field private final f:Lokhttp3/internal/a/d;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 178
    sget-object v0, Lokhttp3/internal/c/a;->a:Lokhttp3/internal/c/a;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/c;-><init>(Ljava/io/File;JLokhttp3/internal/c/a;)V

    .line 179
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/c/a;)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lokhttp3/internal/c/a;

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lokhttp3/c$1;

    invoke-direct {v0, p0}, Lokhttp3/c$1;-><init>(Lokhttp3/c;)V

    iput-object v0, p0, Lokhttp3/c;->a:Lokhttp3/internal/a/f;

    .line 182
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/c/a;Ljava/io/File;IIJ)Lokhttp3/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    .line 183
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
    .line 136
    invoke-static {p0}, Lokhttp3/c;->b(Lokio/e;)I

    move-result v0

    return v0
.end method

.method private a(Lokhttp3/ac;)Lokhttp3/internal/a/b;
    .locals 7
    .param p1, "response"    # Lokhttp3/ac;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/b/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v5

    invoke-direct {p0, v5}, Lokhttp3/c;->c(Lokhttp3/aa;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    :cond_0
    :goto_0
    return-object v4

    .line 231
    :cond_1
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-static {p1}, Lokhttp3/internal/b/f;->b(Lokhttp3/ac;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    new-instance v2, Lokhttp3/c$c;

    invoke-direct {v2, p1}, Lokhttp3/c$c;-><init>(Lokhttp3/ac;)V

    .line 243
    .local v2, "entry":Lokhttp3/c$c;
    const/4 v1, 0x0

    .line 245
    .local v1, "editor":Lokhttp3/internal/a/d$a;
    :try_start_1
    iget-object v5, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {p1}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/c;->b(Lokhttp3/aa;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/internal/a/d;->b(Ljava/lang/String;)Lokhttp3/internal/a/d$a;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v2, v1}, Lokhttp3/c$c;->a(Lokhttp3/internal/a/d$a;)V

    .line 250
    new-instance v5, Lokhttp3/c$a;

    invoke-direct {v5, p0, v1}, Lokhttp3/c$a;-><init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/c;->a(Lokhttp3/internal/a/d$a;)V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lokhttp3/internal/a/d$a;
    .end local v2    # "entry":Lokhttp3/c$c;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/c;Lokhttp3/ac;)Lokhttp3/internal/a/b;
    .locals 1
    .param p0, "x0"    # Lokhttp3/c;
    .param p1, "x1"    # Lokhttp3/ac;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/c;->a(Lokhttp3/ac;)Lokhttp3/internal/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lokhttp3/ac;Lokhttp3/ac;)V
    .locals 5
    .param p1, "cached"    # Lokhttp3/ac;
    .param p2, "network"    # Lokhttp3/ac;

    .prologue
    .line 262
    new-instance v2, Lokhttp3/c$c;

    invoke-direct {v2, p2}, Lokhttp3/c$c;-><init>(Lokhttp3/ac;)V

    .line 263
    .local v2, "entry":Lokhttp3/c$c;
    invoke-virtual {p1}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v4

    check-cast v4, Lokhttp3/c$b;

    invoke-static {v4}, Lokhttp3/c$b;->a(Lokhttp3/c$b;)Lokhttp3/internal/a/d$c;

    move-result-object v3

    .line 264
    .local v3, "snapshot":Lokhttp3/internal/a/d$c;
    const/4 v1, 0x0

    .line 266
    .local v1, "editor":Lokhttp3/internal/a/d$a;
    :try_start_0
    invoke-virtual {v3}, Lokhttp3/internal/a/d$c;->b()Lokhttp3/internal/a/d$a;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v2, v1}, Lokhttp3/c$c;->a(Lokhttp3/internal/a/d$a;)V

    .line 269
    invoke-virtual {v1}, Lokhttp3/internal/a/d$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/c;->a(Lokhttp3/internal/a/d$a;)V

    goto :goto_0
.end method

.method static synthetic a(Lokhttp3/c;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/c;

    .prologue
    .line 136
    invoke-direct {p0}, Lokhttp3/c;->n()V

    return-void
.end method

.method static synthetic a(Lokhttp3/c;Lokhttp3/aa;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/c;
    .param p1, "x1"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/c;->c(Lokhttp3/aa;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/c;Lokhttp3/ac;Lokhttp3/ac;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/c;
    .param p1, "x1"    # Lokhttp3/ac;
    .param p2, "x2"    # Lokhttp3/ac;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lokhttp3/c;->a(Lokhttp3/ac;Lokhttp3/ac;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/c;Lokhttp3/internal/a/c;)V
    .locals 0
    .param p0, "x0"    # Lokhttp3/c;
    .param p1, "x1"    # Lokhttp3/internal/a/c;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lokhttp3/c;->a(Lokhttp3/internal/a/c;)V

    return-void
.end method

.method private declared-synchronized a(Lokhttp3/internal/a/c;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lokhttp3/internal/a/c;

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->k:I

    .line 404
    iget-object v0, p1, Lokhttp3/internal/a/c;->a:Lokhttp3/aa;

    if-eqz v0, :cond_1

    .line 406
    iget v0, p0, Lokhttp3/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/a/c;->b:Lokhttp3/ac;

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Lokhttp3/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lokhttp3/internal/a/d$a;)V
    .locals 1
    .param p1, "editor"    # Lokhttp3/internal/a/d$a;

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

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
    .line 725
    :try_start_0
    invoke-interface {p0}, Lokio/e;->p()J

    move-result-wide v2

    .line 726
    .local v2, "result":J
    invoke-interface {p0}, Lokio/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 727
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

    .line 728
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

    .line 731
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method private static b(Lokhttp3/aa;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lokhttp3/aa;

    .prologue
    .line 186
    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/c;)Lokhttp3/internal/a/d;
    .locals 1
    .param p0, "x0"    # Lokhttp3/c;

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/c;)I
    .locals 2
    .param p0, "x0"    # Lokhttp3/c;

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/c;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/c;->g:I

    return v0
.end method

.method private c(Lokhttp3/aa;)V
    .locals 2
    .param p1, "request"    # Lokhttp3/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-static {p1}, Lokhttp3/c;->b(Lokhttp3/aa;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/a/d;->c(Ljava/lang/String;)Z

    .line 259
    return-void
.end method

.method static synthetic d(Lokhttp3/c;)I
    .locals 2
    .param p0, "x0"    # Lokhttp3/c;

    .prologue
    .line 136
    iget v0, p0, Lokhttp3/c;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lokhttp3/c;->h:I

    return v0
.end method

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lokhttp3/aa;)Lokhttp3/ac;
    .locals 7
    .param p1, "request"    # Lokhttp3/aa;

    .prologue
    const/4 v5, 0x0

    .line 190
    invoke-static {p1}, Lokhttp3/c;->b(Lokhttp3/aa;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v6, v2}, Lokhttp3/internal/a/d;->a(Ljava/lang/String;)Lokhttp3/internal/a/d$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 195
    .local v4, "snapshot":Lokhttp3/internal/a/d$c;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 217
    .end local v4    # "snapshot":Lokhttp3/internal/a/d$c;
    :cond_0
    :goto_0
    return-object v3

    .line 198
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 200
    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lokhttp3/internal/a/d$c;
    :cond_1
    :try_start_1
    new-instance v1, Lokhttp3/c$c;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lokhttp3/internal/a/d$c;->a(I)Lokio/x;

    move-result-object v6

    invoke-direct {v1, v6}, Lokhttp3/c$c;-><init>(Lokio/x;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    .local v1, "entry":Lokhttp3/c$c;
    invoke-virtual {v1, v4}, Lokhttp3/c$c;->a(Lokhttp3/internal/a/d$c;)Lokhttp3/ac;

    move-result-object v3

    .line 212
    .local v3, "response":Lokhttp3/ac;
    invoke-virtual {v1, p1, v3}, Lokhttp3/c$c;->a(Lokhttp3/aa;Lokhttp3/ac;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 213
    invoke-virtual {v3}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 214
    goto :goto_0

    .line 205
    .end local v1    # "entry":Lokhttp3/c$c;
    .end local v3    # "response":Lokhttp3/ac;
    :catch_1
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 207
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
    .line 298
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->a()V

    .line 299
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
    .line 306
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->f()V

    .line 307
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->g()V

    .line 315
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->close()V

    .line 391
    return-void
.end method

.method public d()Ljava/util/Iterator;
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
    .line 327
    new-instance v0, Lokhttp3/c$2;

    invoke-direct {v0, p0}, Lokhttp3/c$2;-><init>(Lokhttp3/c;)V

    return-object v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .locals 1

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->flush()V

    .line 387
    return-void
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Ljava/io/File;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lokhttp3/c;->f:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->e()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized k()I
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 1

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->j:I
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
    .line 426
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
