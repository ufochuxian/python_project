.class public final Lcom/jiliguala/niuwa/common/util/xutils/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;,
        Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;,
        Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;,
        Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field private static final h:C = 'C'

.field private static final i:C = 'U'

.field private static final j:C = 'D'

.field private static final k:C = 'R'

.field private static final l:C = 't'

.field private static final m:Ljava/io/OutputStream;


# instance fields
.field private A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

.field final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:Ljava/io/File;

.field private final r:I

.field private final s:I

.field private final t:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:J

.field private v:J

.field private w:Ljava/io/Writer;

.field private x:I

.field private final y:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m:Ljava/io/OutputStream;

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

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 140
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    .line 142
    iput-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    .line 145
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$2;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    .line 165
    iput-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->z:J

    .line 166
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/d;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/d;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .line 169
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n:Ljava/io/File;

    .line 170
    iput p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->r:I

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    .line 172
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->p:Ljava/io/File;

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->q:Ljava/io/File;

    .line 174
    iput p3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    .line 175
    iput-wide p4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->u:J

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    return p1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 6
    .param p1, "diskKey"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 547
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m()V

    .line 548
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 549
    .local v1, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->f(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 552
    :cond_1
    if-nez v1, :cond_3

    .line 553
    :try_start_1
    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .end local v1    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V

    .line 554
    .restart local v1    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_2
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V

    .line 560
    .local v0, "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .line 563
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "U "

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

    .line 564
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 547
    .end local v0    # "editor":Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .end local v1    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 555
    .restart local v1    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/jiliguala/niuwa/common/util/xutils/a/b;
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
    .line 191
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    if-gtz p2, :cond_1

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .local v6, "backupFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v8, "journalFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 211
    .end local v8    # "journalFile":Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;-><init>(Ljava/io/File;IIJ)V

    .line 212
    .local v0, "cache":Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    :try_start_0
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->i()V

    .line 215
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->j()V

    .line 216
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 229
    .end local v0    # "cache":Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .local v7, "cache":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 206
    .end local v7    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalFile":Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 218
    .end local v8    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    :catch_0
    move-exception v9

    .line 219
    .local v9, "journalIsCorrupt":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskLruCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f()V

    .line 225
    .end local v9    # "journalIsCorrupt":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    :cond_5
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .end local v0    # "cache":Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;-><init>(Ljava/io/File;IIJ)V

    .line 227
    .restart local v0    # "cache":Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->k()V

    :cond_6
    move-object v7, v0

    .line 229
    .restart local v7    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

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
    .line 76
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, "writer":Ljava/io/StringWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    .end local v2    # "writer":Ljava/io/StringWriter;
    .local v3, "writer":Ljava/io/StringWriter;
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [C

    .line 258
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 259
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/StringWriter;
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :goto_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 264
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v4

    .line 261
    .end local v2    # "writer":Ljava/io/StringWriter;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v3    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 263
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 264
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 261
    return-object v4

    .line 263
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v3    # "writer":Ljava/io/StringWriter;
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    move-result-object v2

    .line 603
    .local v2, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 604
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    .end local v2    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 608
    .restart local v2    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 609
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v3, v8, :cond_4

    .line 610
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 611
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b()V

    .line 612
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

    .line 614
    :cond_1
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 615
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 609
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v3, v8, :cond_7

    .line 622
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 623
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 625
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 626
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 627
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 628
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 629
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 630
    iget-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    .line 621
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 633
    :cond_6
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;)V

    goto :goto_3

    .line 637
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    .line 638
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .line 639
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 640
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Z)Z

    .line 641
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x74

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 642
    if-eqz p2, :cond_8

    .line 643
    iget-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->z:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->z:J

    invoke-static {v2, v8, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J

    .line 649
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 651
    iget-wide v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    iget-wide v10, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->u:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->l()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 652
    :cond_9
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 646
    :cond_a
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "D "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

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

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p1, "x1"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;Z)V

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
    .line 233
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 236
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
    .line 239
    if-eqz p2, :cond_0

    .line 240
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;)V

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 245
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 248
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 274
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 275
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a readable directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/io/File;)V

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->k()V

    return-void
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .prologue
    .line 76
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 317
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 318
    .local v3, "firstSpace":I
    const/4 v5, 0x0

    .line 319
    .local v5, "lineTag":C
    if-ne v3, v9, :cond_1

    .line 320
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 325
    add-int/lit8 v4, v3, 0x1

    .line 326
    .local v4, "keyBegin":I
    invoke-virtual {p1, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 328
    .local v7, "secondSpace":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 329
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "diskKey":Ljava/lang/String;
    const/16 v8, 0x44

    if-ne v5, v8, :cond_3

    .line 331
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 322
    .end local v0    # "diskKey":Ljava/lang/String;
    .end local v4    # "keyBegin":I
    .end local v7    # "secondSpace":I
    :cond_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 335
    .restart local v4    # "keyBegin":I
    .restart local v7    # "secondSpace":I
    :cond_2
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0    # "diskKey":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 339
    .local v2, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    if-nez v2, :cond_4

    .line 340
    new-instance v2, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .end local v2    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    invoke-direct {v2, p0, v0, v10}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V

    .line 341
    .restart local v2    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    iget-object v8, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_4
    sparse-switch v5, :sswitch_data_0

    .line 373
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 346
    :sswitch_1
    invoke-static {v2, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Z)Z

    .line 347
    invoke-static {v2, v10}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .line 348
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "parts":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_0

    .line 351
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x74

    if-ne v8, v9, :cond_5

    .line 352
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J

    .line 353
    const/4 v8, 0x1

    invoke-static {v2, v6, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    const-wide v8, 0x7fffffffffffffffL

    :try_start_1
    invoke-static {v2, v8, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;J)J

    .line 356
    const/4 v8, 0x0

    invoke-static {v2, v6, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 365
    .end local v6    # "parts":[Ljava/lang/String;
    :sswitch_2
    new-instance v8, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    invoke-direct {v8, p0, v2, v10}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V

    invoke-static {v2, v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    goto/16 :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized f(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    .locals 12
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 479
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m()V

    .line 480
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .local v9, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    if-nez v9, :cond_1

    .line 534
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 485
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->e(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 491
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v11, v2, :cond_3

    .line 492
    invoke-virtual {v9, v11}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v10

    .line 493
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 494
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v9    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 496
    .restart local v9    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "i":I
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v4

    aget-wide v4, v4, v11

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    .line 497
    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v11

    .line 491
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 499
    .end local v10    # "file":Ljava/io/File;
    :cond_3
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    .line 500
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 501
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 511
    .end local v11    # "i":I
    :cond_4
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    new-array v6, v2, [Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    .local v6, "ins":[Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    :try_start_3
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v11, v2, :cond_5

    .line 514
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v9, v11}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v11
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 516
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v11, 0x0

    :goto_3
    :try_start_4
    iget v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v11, v2, :cond_0

    .line 519
    aget-object v2, v6, v11

    if-eqz v2, :cond_0

    .line 520
    aget-object v2, v6, v11

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 518
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 528
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    .line 529
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R "

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

    .line 530
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 531
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 534
    :cond_6
    new-instance v1, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->f(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J

    move-result-wide v4

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/jiliguala/niuwa/common/util/xutils/a/b$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/jiliguala/niuwa/common/util/xutils/a/b;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/a/b;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized g(Ljava/lang/String;)Z
    .locals 8
    .param p1, "diskKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m()V

    .line 678
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 679
    .local v0, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 680
    :cond_0
    const/4 v3, 0x0

    .line 700
    :goto_0
    monitor-exit p0

    return v3

    .line 683
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v2, v3, :cond_3

    .line 684
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v1

    .line 685
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 686
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

    .line 677
    .end local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 688
    .restart local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    .line 689
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 692
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    .line 693
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D "

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

    .line 694
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->l()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 697
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 700
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic h()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m:Ljava/io/OutputStream;

    return-object v0
.end method

.method private i()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v5, 0x0

    .line 290
    .local v5, "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    :try_start_0
    new-instance v6, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;

    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, p0, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/a/b;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    .end local v5    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    .local v6, "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    :try_start_1
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "version":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "valueCountString":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "blank":Ljava/lang/String;
    const-string v9, "libcore.io.DiskLruCache"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->r:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    .line 297
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 298
    :cond_0
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected journal header: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v7    # "valueCountString":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    .restart local v5    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    :goto_0
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v9

    .line 301
    .end local v5    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    .restart local v7    # "valueCountString":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 304
    .local v3, "lineCount":I
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    :catch_0
    move-exception v2

    .line 310
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_3
    iget-object v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v9

    sub-int v9, v3, v9

    iput v9, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 314
    return-void

    .line 312
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v2    # "endOfJournal":Ljava/io/EOFException;
    .end local v3    # "lineCount":I
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    .end local v7    # "valueCountString":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .restart local v5    # "reader":Lcom/jiliguala/niuwa/common/util/xutils/a/b$d;
    :catchall_1
    move-exception v9

    goto :goto_0
.end method

.method private j()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->p:Ljava/io/File;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;)V

    .line 384
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 386
    .local v0, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 387
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v2, v3, :cond_0

    .line 388
    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    .line 392
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    if-ge v2, v3, :cond_2

    .line 393
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;)V

    .line 394
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 396
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 399
    .end local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private declared-synchronized k()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 410
    :cond_0
    const/4 v1, 0x0

    .line 412
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->p:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 413
    .end local v1    # "writer":Ljava/io/Writer;
    .local v2, "writer":Ljava/io/Writer;
    :try_start_2
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 415
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 418
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 419
    iget v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 421
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 424
    .local v0, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "U "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 427
    .restart local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->c(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x74

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :cond_2
    :try_start_5
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 434
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 435
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->q:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 437
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->p:Ljava/io/File;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 438
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->q:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 440
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->o:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 441
    monitor-exit p0

    return-void

    .line 431
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_2
    move-exception v3

    goto :goto_1
.end method

.method private l()Z
    .locals 3

    .prologue
    .line 661
    const/16 v0, 0x7d0

    .line 662
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->x:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    .line 663
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 662
    :goto_0
    return v1

    .line 663
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    return-void
.end method

.method private n()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    :goto_0
    iget-wide v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J

    iget-wide v4, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->u:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 746
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g(Ljava/lang/String;)Z

    goto :goto_0

    .line 748
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m()V

    .line 446
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .local v1, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    if-nez v1, :cond_0

    .line 448
    const-wide/16 v2, 0x0

    .line 450
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->d(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 444
    .end local v0    # "diskKey":Ljava/lang/String;
    .end local v1    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n:Ljava/io/File;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 455
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    invoke-interface {v2, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "diskKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    .local v1, "result":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    .end local v1    # "result":Ljava/io/File;
    :goto_0
    return-object v1

    .line 461
    .restart local v1    # "result":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized a(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->u:J

    .line 589
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->y:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/jiliguala/niuwa/common/util/xutils/a/a;)V
    .locals 0
    .param p1, "fileNameGenerator"    # Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .prologue
    .line 765
    if-eqz p1, :cond_0

    .line 766
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    .line 768
    :cond_0
    return-void
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->f(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$c;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "diskKey":Ljava/lang/String;
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->a(Ljava/lang/String;J)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 741
    :goto_0
    monitor-exit p0

    return-void

    .line 733
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->t:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;

    .line 734
    .local v0, "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 735
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;->a(Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;)Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/a/b$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 730
    .end local v0    # "entry":Lcom/jiliguala/niuwa/common/util/xutils/a/b$b;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 738
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n()V

    .line 739
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;
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

.method public d(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    invoke-interface {v1, p1}, Lcom/jiliguala/niuwa/common/util/xutils/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "diskKey":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->g(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->m()V

    .line 721
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n()V

    .line 722
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 720
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
    .line 756
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/e;->a(Ljava/io/Closeable;)V

    .line 757
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->b(Ljava/io/File;)V

    .line 758
    return-void
.end method

.method public g()Lcom/jiliguala/niuwa/common/util/xutils/a/a;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/a/b;->A:Lcom/jiliguala/niuwa/common/util/xutils/a/a;

    return-object v0
.end method
