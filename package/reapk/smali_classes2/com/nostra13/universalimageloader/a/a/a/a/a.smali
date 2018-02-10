.class final Lcom/nostra13/universalimageloader/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/a/a/a/a/a$b;,
        Lcom/nostra13/universalimageloader/a/a/a/a/a$a;,
        Lcom/nostra13/universalimageloader/a/a/a/a/a$c;
    }
.end annotation


# static fields
.field private static final B:Ljava/io/OutputStream;

.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "journal.bkp"

.field static final d:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final e:Ljava/lang/String; = "1"

.field static final f:J = -0x1L

.field static final g:Ljava/util/regex/Pattern;

.field private static final i:Ljava/lang/String; = "CLEAN"

.field private static final j:Ljava/lang/String; = "DIRTY"

.field private static final k:Ljava/lang/String; = "REMOVE"

.field private static final l:Ljava/lang/String; = "READ"


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

.field final h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final m:Ljava/io/File;

.field private final n:Ljava/io/File;

.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:I

.field private r:J

.field private s:I

.field private final t:I

.field private u:J

.field private v:I

.field private w:Ljava/io/Writer;

.field private final x:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nostra13/universalimageloader/a/a/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->g:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$2;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$2;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->B:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J
    .param p6, "maxFileCount"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    .line 149
    iput v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->z:J

    .line 163
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$1;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->A:Ljava/util/concurrent/Callable;

    .line 183
    iput-object p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m:Ljava/io/File;

    .line 184
    iput p2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->q:I

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o:Ljava/io/File;

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p:Ljava/io/File;

    .line 188
    iput p3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    .line 189
    iput-wide p4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->r:J

    .line 190
    iput p6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->s:I

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    return p1
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .locals 2
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
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

    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n()V

    .line 467
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->e(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 469
    .local v1, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->e(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 473
    :cond_1
    if-nez v1, :cond_3

    .line 474
    :try_start_1
    new-instance v1, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .end local v1    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$1;)V

    .line 475
    .restart local v1    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_2
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$1;)V

    .line 481
    .local v0, "editor":Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    .line 484
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

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

    .line 485
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    .end local v0    # "editor":Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .end local v1    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 476
    .restart local v1    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .param p5, "maxFileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    if-gtz p5, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxFileCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1
    if-gtz p2, :cond_2

    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v7, "backupFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    new-instance v9, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v9, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v9, "journalFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 228
    .end local v9    # "journalFile":Ljava/io/File;
    :cond_3
    :goto_0
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a;-><init>(Ljava/io/File;IIJI)V

    .line 229
    .local v0, "cache":Lcom/nostra13/universalimageloader/a/a/a/a/a;
    iget-object v1, v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    :try_start_0
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->j()V

    .line 232
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->k()V

    .line 233
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    .line 251
    .end local v0    # "cache":Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .local v8, "cache":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 223
    .end local v8    # "cache":Ljava/lang/Object;
    .restart local v9    # "journalFile":Ljava/io/File;
    :cond_4
    const/4 v1, 0x0

    invoke-static {v7, v9, v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 236
    .end local v9    # "journalFile":Ljava/io/File;
    .restart local v0    # "cache":Lcom/nostra13/universalimageloader/a/a/a/a/a;
    :catch_0
    move-exception v10

    .line 237
    .local v10, "journalIsCorrupt":Ljava/io/IOException;
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

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h()V

    .line 248
    .end local v10    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .end local v0    # "cache":Lcom/nostra13/universalimageloader/a/a/a/a/a;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a;-><init>(Ljava/io/File;IIJI)V

    .line 250
    .restart local v0    # "cache":Lcom/nostra13/universalimageloader/a/a/a/a/a;
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->l()V

    move-object v8, v0

    .line 251
    .restart local v8    # "cache":Ljava/lang/Object;
    goto :goto_1
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

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
    .line 87
    invoke-static {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/nostra13/universalimageloader/a/a/a/a/a$a;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    move-result-object v2

    .line 536
    .local v2, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 537
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local v2    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 541
    .restart local v2    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->d(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 542
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v3, v8, :cond_4

    .line 543
    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V

    .line 545
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

    .line 547
    :cond_1
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 548
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 542
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v3, v8, :cond_7

    .line 555
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 556
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_6

    .line 557
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 558
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v0

    .line 559
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 560
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 561
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 562
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 563
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    .line 564
    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    .line 554
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 567
    :cond_6
    invoke-static {v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;)V

    goto :goto_3

    .line 571
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    .line 572
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    .line 573
    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->d(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 574
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Z)Z

    .line 575
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 576
    if-eqz p2, :cond_8

    .line 577
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->z:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->z:J

    invoke-static {v2, v8, v9}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;J)J

    .line 583
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 585
    iget-wide v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    iget-wide v10, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->r:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    iget v9, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->s:I

    if-gt v8, v9, :cond_9

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 586
    :cond_9
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 580
    :cond_a
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;

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

.method static synthetic a(Lcom/nostra13/universalimageloader/a/a/a/a/a;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .param p1, "x1"    # Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$a;Z)V

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
    .line 393
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 396
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
    .line 399
    if-eqz p2, :cond_0

    .line 400
    invoke-static {p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;)V

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 405
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
    .line 702
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/nostra13/universalimageloader/a/a/a/a/d;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nostra13/universalimageloader/a/a/a/a/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o()V

    return-void
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/a/a/a/a/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p()V

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

    .line 287
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 288
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_0

    .line 289
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

    .line 292
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 293
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 295
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_2

    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    iget-object v6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 302
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 305
    .restart local v2    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 306
    .local v0, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    if-nez v0, :cond_4

    .line 307
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    invoke-direct {v0, p0, v2, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$1;)V

    .line 308
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    iget-object v6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
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

    .line 312
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Z)Z

    .line 314
    invoke-static {v0, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    .line 315
    invoke-static {v0, v4}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 316
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

    .line 317
    new-instance v6, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    invoke-direct {v6, p0, v0, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$1;)V

    invoke-static {v0, v6}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    goto :goto_0

    .line 318
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

    .line 321
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

.method static synthetic d(Lcom/nostra13/universalimageloader/a/a/a/a/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/a/a/a/a/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->l()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 695
    sget-object v1, Lcom/nostra13/universalimageloader/a/a/a/a/a;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 696
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

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

    .line 699
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/nostra13/universalimageloader/a/a/a/a/a;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .prologue
    .line 87
    iget v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    return v0
.end method

.method static synthetic g(Lcom/nostra13/universalimageloader/a/a/a/a/a;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/a/a/a/a/a;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic i()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->B:Ljava/io/OutputStream;

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
    .line 255
    new-instance v5, Lcom/nostra13/universalimageloader/a/a/a/a/c;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/nostra13/universalimageloader/a/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 257
    .local v5, "reader":Lcom/nostra13/universalimageloader/a/a/a/a/c;
    :try_start_0
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "version":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "blank":Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->q:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 267
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

    .line 282
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/Closeable;)V

    throw v8

    .line 271
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 274
    .local v3, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 280
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    invoke-static {v5}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/Closeable;)V

    .line 284
    return-void
.end method

.method private k()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o:Ljava/io/File;

    invoke-static {v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;)V

    .line 331
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nostra13/universalimageloader/a/a/a/a/a$b;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 333
    .local v0, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v3

    if-nez v3, :cond_1

    .line 334
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v2, v3, :cond_0

    .line 335
    iget-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    .line 336
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;Lcom/nostra13/universalimageloader/a/a/a/a/a$a;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    .line 340
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v2, v3, :cond_2

    .line 341
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;)V

    .line 342
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 344
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 347
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private declared-synchronized l()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 358
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 372
    .local v0, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    .end local v2    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 375
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->c(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 379
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 382
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 385
    :cond_3
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o:Ljava/io/File;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 388
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 390
    monitor-exit p0

    return-void
.end method

.method private m()Z
    .locals 3

    .prologue
    .line 595
    const/16 v0, 0x7d0

    .line 596
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

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

.method private n()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    return-void
.end method

.method private o()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    :goto_0
    iget-wide v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    iget-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->r:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 673
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 675
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;>;"
    :cond_0
    return-void
.end method

.method private p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    :goto_0
    iget v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    iget v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->s:I

    if-le v1, v2, :cond_0

    .line 679
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 682
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostra13/universalimageloader/a/a/a/a/a$b;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/a$c;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 413
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n()V

    .line 414
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->e(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .local v10, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    if-nez v10, :cond_1

    .line 454
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 420
    :cond_1
    :try_start_1
    invoke-static {v10}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->d(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    new-array v6, v2, [Ljava/io/File;

    .line 428
    .local v6, "files":[Ljava/io/File;
    iget v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    new-array v7, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .local v7, "ins":[Ljava/io/InputStream;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v12, v2, :cond_2

    .line 432
    invoke-virtual {v10, v12}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v11

    .line 433
    .local v11, "file":Ljava/io/File;
    aput-object v11, v6, v12

    .line 434
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v7, v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 436
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v12, 0x0

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v12, v2, :cond_0

    .line 439
    aget-object v2, v7, v12

    if-eqz v2, :cond_0

    .line 440
    aget-object v2, v7, v12

    invoke-static {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/Closeable;)V

    .line 438
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 448
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    iget v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    .line 449
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

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

    .line 450
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 454
    :cond_3
    new-instance v1, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;

    invoke-static {v10}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->e(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)J

    move-result-wide v4

    invoke-static {v10}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/nostra13/universalimageloader/a/a/a/a/a$c;-><init>(Lcom/nostra13/universalimageloader/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/nostra13/universalimageloader/a/a/a/a/a$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 413
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "ins":[Ljava/io/InputStream;
    .end local v10    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 3
    .param p1, "maxSize"    # J

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->r:J

    .line 513
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->a(Ljava/lang/String;J)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c()I
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

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
    .line 607
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n()V

    .line 608
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->e(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 610
    .local v0, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 611
    :cond_0
    const/4 v3, 0x0

    .line 632
    :goto_0
    monitor-exit p0

    return v3

    .line 614
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->t:I

    if-ge v2, v3, :cond_3

    .line 615
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v1

    .line 616
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 617
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

    .line 607
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 619
    .restart local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J

    .line 620
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I

    .line 621
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->b(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 624
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->y:I

    .line 625
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

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

    .line 626
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 629
    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->A:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 668
    :goto_0
    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;

    .line 660
    .local v0, "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 661
    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/a$b;->a(Lcom/nostra13/universalimageloader/a/a/a/a/a$b;)Lcom/nostra13/universalimageloader/a/a/a/a/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/a/a/a/a/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 656
    .end local v0    # "entry":Lcom/nostra13/universalimageloader/a/a/a/a/a$b;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 664
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o()V

    .line 665
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p()V

    .line 666
    iget-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 667
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized d()J
    .locals 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .locals 2

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;
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

.method public declared-synchronized g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->n()V

    .line 649
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->o()V

    .line 650
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->p()V

    .line 651
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/a/a/a/a/a;->close()V

    .line 691
    iget-object v0, p0, Lcom/nostra13/universalimageloader/a/a/a/a/a;->m:Ljava/io/File;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a/a/a/d;->a(Ljava/io/File;)V

    .line 692
    return-void
.end method
