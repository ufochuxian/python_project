.class public Lcom/chivox/android/AIRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chivox/android/AIRecorder$Callback;
    }
.end annotation


# static fields
.field private static BITS:I

.field private static CHANNELS:I

.field private static FREQUENCY:I

.field private static INTERVAL:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private latestPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private recorder:Landroid/media/AudioRecord;

.field private volatile running:Z

.field private workerThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "AIRecorder"

    sput-object v0, Lcom/chivox/android/AIRecorder;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    .line 33
    const/16 v0, 0x10

    sput v0, Lcom/chivox/android/AIRecorder;->BITS:I

    .line 34
    const/16 v0, 0x3e80

    sput v0, Lcom/chivox/android/AIRecorder;->FREQUENCY:I

    .line 35
    const/16 v0, 0x64

    sput v0, Lcom/chivox/android/AIRecorder;->INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->latestPath:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    .line 44
    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    .line 55
    iput-object p1, p0, Lcom/chivox/android/AIRecorder;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chivox/android/AIRecorder;->workerThread:Ljava/util/concurrent/ExecutorService;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/chivox/android/AIRecorder;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->recorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lcom/chivox/android/AIRecorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Landroid/media/AudioRecord;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/chivox/android/AIRecorder;->recorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/chivox/android/AIRecorder;->fopen(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/chivox/android/AIRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->latestPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/chivox/android/AIRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/chivox/android/AIRecorder;->latestPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/chivox/android/AIRecorder;->FREQUENCY:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/chivox/android/AIRecorder;->BITS:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/chivox/android/AIRecorder;->INTERVAL:I

    return v0
.end method

.method static synthetic access$600(Lcom/chivox/android/AIRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    return v0
.end method

.method static synthetic access$602(Lcom/chivox/android/AIRecorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/chivox/android/AIRecorder;->running:Z

    return p1
.end method

.method static synthetic access$700(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;[BII)V
    .locals 0
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Ljava/io/RandomAccessFile;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chivox/android/AIRecorder;->fwrite(Ljava/io/RandomAccessFile;[BII)V

    return-void
.end method

.method static synthetic access$800(Lcom/chivox/android/AIRecorder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/chivox/android/AIRecorder;Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/chivox/android/AIRecorder;
    .param p1, "x1"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/chivox/android/AIRecorder;->fclose(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method private fclose(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const-wide/16 v0, 0x4

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 340
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 342
    const-wide/16 v0, 0x28

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 343
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2c

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 350
    return-void

    .line 348
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 349
    throw v0
.end method

.method private fopen(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 296
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 307
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v1, "file":Ljava/io/RandomAccessFile;
    const-string v3, "RIFF"

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 312
    const-string v3, "WAVE"

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 315
    const-string v3, "fmt "

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 316
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 317
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 318
    sget v3, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 319
    sget v3, Lcom/chivox/android/AIRecorder;->FREQUENCY:I

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 320
    sget v3, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    sget v4, Lcom/chivox/android/AIRecorder;->FREQUENCY:I

    mul-int/2addr v3, v4

    sget v4, Lcom/chivox/android/AIRecorder;->BITS:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 321
    sget v3, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    sget v4, Lcom/chivox/android/AIRecorder;->BITS:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 322
    sget v3, Lcom/chivox/android/AIRecorder;->CHANNELS:I

    sget v4, Lcom/chivox/android/AIRecorder;->BITS:I

    mul-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 325
    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 329
    return-object v1

    .line 301
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 302
    .local v2, "parentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method private fwrite(Ljava/io/RandomAccessFile;[BII)V
    .locals 0
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 335
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    return v0
.end method

.method public playback()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/chivox/android/AIRecorder;->stop()I

    .line 216
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->latestPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    const/4 v0, -0x1

    .line 292
    :goto_0
    return v0

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    .line 223
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->workerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chivox/android/AIRecorder$2;

    invoke-direct {v1, p0}, Lcom/chivox/android/AIRecorder$2;-><init>(Lcom/chivox/android/AIRecorder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    .line 292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/chivox/android/AIRecorder$Callback;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/chivox/android/AIRecorder$Callback;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/chivox/android/AIRecorder;->stop()I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    .line 71
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->workerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/chivox/android/AIRecorder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chivox/android/AIRecorder$1;-><init>(Lcom/chivox/android/AIRecorder;Ljava/lang/String;Lcom/chivox/android/AIRecorder$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/chivox/android/AIRecorder;->running:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    iput-boolean v2, p0, Lcom/chivox/android/AIRecorder;->running:Z

    .line 195
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    .line 204
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/chivox/android/AIRecorder;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 206
    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->recorder:Landroid/media/AudioRecord;

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/chivox/android/AIRecorder;->future:Ljava/util/concurrent/Future;

    .line 202
    throw v0
.end method
