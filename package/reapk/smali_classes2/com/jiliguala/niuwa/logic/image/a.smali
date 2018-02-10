.class public final Lcom/jiliguala/niuwa/logic/image/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/image/a$b;,
        Lcom/jiliguala/niuwa/logic/image/a$a;,
        Lcom/jiliguala/niuwa/logic/image/a$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field static final g:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final h:Ljava/util/regex/Pattern;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String; = "CLEAN"

.field private static final l:Ljava/lang/String; = "DIRTY"

.field private static final m:Ljava/lang/String; = "REMOVE"

.field private static final n:Ljava/lang/String; = "READ"

.field private static final o:Ljava/io/OutputStream;


# instance fields
.field private final A:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private B:J

.field final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final p:Ljava/io/File;

.field private final q:Ljava/io/File;

.field private final r:Ljava/io/File;

.field private final s:Ljava/io/File;

.field private final t:I

.field private final u:I

.field private final v:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/image/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private w:J

.field private x:J

.field private y:Ljava/io/Writer;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/a;->h:Ljava/util/regex/Pattern;

    .line 81
    const-class v0, Lcom/jiliguala/niuwa/logic/image/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/a;->j:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/image/a$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/image/a;->o:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 10
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    .line 140
    iput-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    .line 143
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/logic/image/a$2;-><init>(Lcom/jiliguala/niuwa/logic/image/a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->A:Ljava/util/concurrent/Callable;

    .line 164
    iput-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->B:J

    .line 167
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/a;->p:Ljava/io/File;

    .line 168
    iput p2, p0, Lcom/jiliguala/niuwa/logic/image/a;->t:I

    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    .line 170
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->r:Ljava/io/File;

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->s:Ljava/io/File;

    .line 172
    iput p3, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    .line 173
    iput-wide p4, p0, Lcom/jiliguala/niuwa/logic/image/a;->w:J

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/image/a$a;
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/image/a$a;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 441
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->l()V

    .line 442
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a;->e(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 444
    .local v1, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/image/a$b;->e(Lcom/jiliguala/niuwa/logic/image/a$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 447
    :cond_1
    if-nez v1, :cond_3

    .line 448
    :try_start_1
    new-instance v1, Lcom/jiliguala/niuwa/logic/image/a$b;

    .end local v1    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jiliguala/niuwa/logic/image/a$b;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$1;)V

    .line 449
    .restart local v1    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_2
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/logic/image/a$a;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$1;)V

    .line 455
    .local v0, "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$a;

    .line 458
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 441
    .end local v0    # "editor":Lcom/jiliguala/niuwa/logic/image/a$a;
    .end local v1    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 450
    .restart local v1    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/jiliguala/niuwa/logic/image/a;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    if-gtz p2, :cond_1

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 209
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/image/a;-><init>(Ljava/io/File;IIJ)V

    .line 210
    .local v0, "cache":Lcom/jiliguala/niuwa/logic/image/a;
    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    :try_start_0
    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/image/a;->h()V

    .line 213
    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/image/a;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 225
    .end local v0    # "cache":Lcom/jiliguala/niuwa/logic/image/a;
    .local v7, "cache":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 204
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 215
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/logic/image/a;
    :catch_0
    move-exception v9

    .line 216
    .local v9, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/a;->f()V

    .line 222
    .end local v9    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 223
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a;

    .end local v0    # "cache":Lcom/jiliguala/niuwa/logic/image/a;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/logic/image/a;-><init>(Ljava/io/File;IIJ)V

    .line 224
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/logic/image/a;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/image/a;->j()V

    move-object v7, v0

    .line 225
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/image/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$b;

    move-result-object v2

    .line 498
    .local v2, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 499
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .end local v2    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 503
    .restart local v2    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 504
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v3, v8, :cond_4

    .line 505
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b(Lcom/jiliguala/niuwa/logic/image/a$a;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 506
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V

    .line 507
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

    .line 509
    :cond_1
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 510
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 504
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v3, v8, :cond_7

    .line 517
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 518
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 520
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 521
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 522
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 523
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 524
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 525
    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    .line 516
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 528
    :cond_6
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;)V

    goto :goto_3

    .line 532
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    .line 533
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$a;

    .line 534
    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 535
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Z)Z

    .line 536
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 537
    if-eqz p2, :cond_8

    .line 538
    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->B:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/jiliguala/niuwa/logic/image/a;->B:J

    invoke-static {v2, v8, v9}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;J)J

    .line 544
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 546
    iget-wide v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    iget-wide v10, p0, Lcom/jiliguala/niuwa/logic/image/a;->w:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->k()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 547
    :cond_9
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/image/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 541
    :cond_a
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$a;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/logic/image/a$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/image/a;->a(Lcom/jiliguala/niuwa/logic/image/a$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p2, :cond_0

    .line 237
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;)V

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 242
    :cond_1
    return-void
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/jiliguala/niuwa/logic/image/e;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/logic/image/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->m()V

    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/logic/image/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/logic/image/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->j()V

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

    .line 284
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 285
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 286
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

    .line 289
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 290
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 292
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 299
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 303
    .local v0, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    if-nez v0, :cond_4

    .line 304
    new-instance v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    invoke-direct {v0, p0, v2, v8}, Lcom/jiliguala/niuwa/logic/image/a$b;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$1;)V

    .line 305
    .restart local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
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

    .line 309
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Z)Z

    .line 311
    invoke-static {v0, v8}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$a;

    .line 312
    invoke-static {v0, v4}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 313
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

    .line 314
    new-instance v6, Lcom/jiliguala/niuwa/logic/image/a$a;

    invoke-direct {v6, p0, v0, v8}, Lcom/jiliguala/niuwa/logic/image/a$a;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$1;)V

    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$a;

    goto :goto_0

    .line 315
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

    .line 318
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

.method static synthetic e(Lcom/jiliguala/niuwa/logic/image/a;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;

    .prologue
    .line 72
    iget v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 654
    sget-object v1, Lcom/jiliguala/niuwa/logic/image/a;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 655
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
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

    .line 658
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/jiliguala/niuwa/logic/image/a;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/image/a;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->p:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/jiliguala/niuwa/logic/image/a;->o:Ljava/io/OutputStream;

    return-object v0
.end method

.method private h()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v5, Lcom/jiliguala/niuwa/logic/image/d;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/jiliguala/niuwa/logic/image/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/jiliguala/niuwa/logic/image/d;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 251
    .local v5, "reader":Lcom/jiliguala/niuwa/logic/image/d;
    :try_start_0
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->t:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    .line 257
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 258
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

    .line 279
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    throw v8

    .line 261
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 264
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/logic/image/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 270
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    .line 273
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/image/d;->b()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :goto_1
    invoke-static {v5}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    .line 281
    return-void

    .line 276
    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v11, Lcom/jiliguala/niuwa/logic/image/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private i()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->r:Ljava/io/File;

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;)V

    .line 328
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/logic/image/a$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 330
    .local v0, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 331
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v2, v3, :cond_0

    .line 332
    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 335
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;Lcom/jiliguala/niuwa/logic/image/a$a;)Lcom/jiliguala/niuwa/logic/image/a$a;

    .line 336
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v2, v3, :cond_2

    .line 337
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;)V

    .line 338
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;)V

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 340
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 343
    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private declared-synchronized j()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 354
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->r:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/jiliguala/niuwa/logic/image/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 367
    .local v0, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 370
    .restart local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->c(Lcom/jiliguala/niuwa/logic/image/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 377
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->s:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    :cond_3
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->r:Ljava/io/File;

    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 381
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->s:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 383
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/image/a;->q:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/jiliguala/niuwa/logic/image/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    monitor-exit p0

    return-void
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 556
    const/16 v0, 0x7d0

    .line 557
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    .line 558
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 557
    :goto_0
    return v1

    .line 558
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    return-void
.end method

.method private m()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    :goto_0
    iget-wide v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->w:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 641
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$b;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$c;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 392
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->l()V

    .line 393
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a;->e(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/logic/image/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .local v10, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    if-nez v10, :cond_1

    .line 429
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 399
    :cond_1
    :try_start_1
    invoke-static {v10}, Lcom/jiliguala/niuwa/logic/image/a$b;->d(Lcom/jiliguala/niuwa/logic/image/a$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v11, v2, :cond_2

    .line 409
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v11, 0x0

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v11, v2, :cond_0

    .line 414
    aget-object v2, v6, v11

    if-eqz v2, :cond_0

    .line 415
    aget-object v2, v6, v11

    invoke-static {v2}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/Closeable;)V

    .line 413
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 423
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    .line 424
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 425
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 429
    :cond_3
    new-instance v1, Lcom/jiliguala/niuwa/logic/image/a$c;

    invoke-static {v10}, Lcom/jiliguala/niuwa/logic/image/a$b;->e(Lcom/jiliguala/niuwa/logic/image/a$b;)J

    move-result-wide v4

    invoke-static {v10}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v7

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/a;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/jiliguala/niuwa/logic/image/a$c;-><init>(Lcom/jiliguala/niuwa/logic/image/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLjava/lang/String;Lcom/jiliguala/niuwa/logic/image/a$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 392
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v10    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    .end local v11    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->p:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jiliguala/niuwa/logic/image/a;->w:J

    .line 484
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/image/a$a;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/jiliguala/niuwa/logic/image/a;->a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J
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
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->l()V

    .line 569
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/image/a;->e(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 571
    .local v0, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 572
    :cond_0
    const/4 v3, 0x0

    .line 592
    :goto_0
    monitor-exit p0

    return v3

    .line 575
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->u:I

    if-ge v2, v3, :cond_3

    .line 576
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(I)Ljava/io/File;

    move-result-object v1

    .line 577
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 578
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 580
    .restart local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->x:J

    .line 581
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->b(Lcom/jiliguala/niuwa/logic/image/a$b;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 584
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->z:I

    .line 585
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 586
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 589
    iget-object v3, p0, Lcom/jiliguala/niuwa/logic/image/a;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/image/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 634
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/image/a;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/image/a$b;

    .line 626
    .local v0, "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 627
    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/a$b;->a(Lcom/jiliguala/niuwa/logic/image/a$b;)Lcom/jiliguala/niuwa/logic/image/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/image/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 622
    .end local v0    # "entry":Lcom/jiliguala/niuwa/logic/image/a$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 631
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->m()V

    .line 632
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 633
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->l()V

    .line 614
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/a;->m()V

    .line 615
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->y:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/image/a;->close()V

    .line 650
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/image/a;->p:Ljava/io/File;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/image/e;->a(Ljava/io/File;)V

    .line 651
    return-void
.end method
