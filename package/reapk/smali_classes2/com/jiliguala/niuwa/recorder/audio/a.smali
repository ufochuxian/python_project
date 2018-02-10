.class public Lcom/jiliguala/niuwa/recorder/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/audio/MusicFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/recorder/audio/a$a;,
        Lcom/jiliguala/niuwa/recorder/audio/a$b;,
        Lcom/jiliguala/niuwa/recorder/audio/a$c;
    }
.end annotation


# static fields
.field public static final a:I = 0x3e80

.field private static final b:Ljava/lang/String; = "MyAudioRecorder"

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:Ljava/lang/String; = "FSC_THREAD"

.field private static final g:I = 0x1000


# instance fields
.field private A:Z

.field private B:Z

.field private C:J

.field private D:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

.field private h:Landroid/media/AudioRecord;

.field private i:Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

.field private j:[S

.field private k:I

.field private l:Z

.field private m:Ljava/io/File;

.field private n:Ljava/io/File;

.field private o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

.field private p:I

.field private q:Lcom/jiliguala/niuwa/recorder/audio/b;

.field private r:Z

.field private s:Lcom/jiliguala/niuwa/recorder/audio/d;

.field private t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Lcom/jiliguala/niuwa/recorder/audio/a$c;

.field private y:Ljava/lang/Object;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    .line 47
    iput v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    .line 48
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    .line 52
    iput v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->p:I

    .line 54
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->r:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->A:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->C:J

    .line 77
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    .line 78
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->initialize(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 80
    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    .line 82
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    if-ltz v0, :cond_0

    .line 83
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->j:[S

    .line 89
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 174
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/a$c;

    invoke-direct {v0, p0, p1}, Lcom/jiliguala/niuwa/recorder/audio/a$c;-><init>(Lcom/jiliguala/niuwa/recorder/audio/a;Ljava/io/File;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->x:Lcom/jiliguala/niuwa/recorder/audio/a$c;

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->x:Lcom/jiliguala/niuwa/recorder/audio/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a$c;->start()V

    .line 176
    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "deleteFile"    # Z

    .prologue
    const/4 v6, 0x0

    .line 184
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->D:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->D:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;->calculateGrade()V

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    if-nez v2, :cond_2

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    iget-boolean v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->e()V

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 196
    invoke-direct {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->m()V

    .line 197
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->d()V

    .line 199
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/b;->d()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->n:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    if-eqz p1, :cond_6

    .line 202
    :try_start_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->n:Ljava/io/File;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/jiliguala/niuwa/recorder/audio/b;->b(J)V

    .line 207
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    if-eqz v2, :cond_4

    .line 208
    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    invoke-interface {v2}, Lcom/jiliguala/niuwa/recorder/audio/d;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->A:Z

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/jiliguala/niuwa/recorder/audio/b;->b(J)V

    .line 207
    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    if-eqz v3, :cond_5

    .line 208
    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    invoke-interface {v3}, Lcom/jiliguala/niuwa/recorder/audio/d;->c()V

    :cond_5
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v2, 0x2

    :try_start_4
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->m:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->n:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    .local v1, "strs":[Ljava/lang/String;
    new-instance v2, Lcom/jiliguala/niuwa/recorder/audio/a$a;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/recorder/audio/a$a;-><init>(Lcom/jiliguala/niuwa/recorder/audio/a;)V

    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/recorder/audio/a$a;->c([Ljava/lang/Object;)Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/recorder/audio/a;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/jiliguala/niuwa/recorder/audio/a;)[S
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->j:[S

    return-object v0
.end method

.method static synthetic c(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic d(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->m:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/jiliguala/niuwa/recorder/audio/a;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->n()V

    return-void
.end method

.method static synthetic h(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/d;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    return-object v0
.end method

.method static synthetic i(Lcom/jiliguala/niuwa/recorder/audio/a;)Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/recorder/audio/a;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->i:Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 100
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/b;->g()I

    move-result v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    .line 104
    invoke-static {}, Lcom/jiliguala/niuwa/logic/f/a;->a()Lcom/jiliguala/niuwa/logic/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/b;->g()I

    move-result v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/recorder/audio/b;->e()I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/recorder/audio/b;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;-><init>(III)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->i:Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    .line 107
    :cond_0
    return-void
.end method

.method private j()Landroid/media/AudioRecord;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 110
    sget-object v7, Lcom/jiliguala/niuwa/recorder/audio/b;->g:[I

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_1

    aget v2, v7, v6

    .line 113
    .local v2, "rate":I
    const/16 v1, 0x10

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v1, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 115
    .local v5, "bufferSize":I
    const/4 v1, -0x2

    if-eq v5, v1, :cond_0

    .line 117
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 120
    .local v0, "recorder":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 121
    new-array v1, v5, [S

    iput-object v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->j:[S

    .line 122
    iput v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "recorder":Landroid/media/AudioRecord;
    .end local v2    # "rate":I
    .end local v5    # "bufferSize":I
    :goto_1
    return-object v0

    .line 127
    .restart local v2    # "rate":I
    :catch_0
    move-exception v1

    .line 110
    :cond_0
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 131
    .end local v2    # "rate":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a$b;->quitSafely()Z

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a$b;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;)V
    .locals 0
    .param p1, "speakView"    # Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->D:Lcom/jiliguala/niuwa/module/speak/presenter/SpeakView;

    .line 336
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/recorder/audio/b;)V
    .locals 0
    .param p1, "config"    # Lcom/jiliguala/niuwa/recorder/audio/b;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    .line 93
    return-void
.end method

.method public a(Lcom/jiliguala/niuwa/recorder/audio/d;)V
    .locals 0
    .param p1, "listener"    # Lcom/jiliguala/niuwa/recorder/audio/d;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->s:Lcom/jiliguala/niuwa/recorder/audio/d;

    .line 300
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->f()V

    .line 142
    invoke-direct {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->i()V

    .line 144
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 148
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 154
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->q:Lcom/jiliguala/niuwa/recorder/audio/b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/b;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->m:Ljava/io/File;

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->m:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Ljava/io/File;)V

    .line 157
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/recorder/audio/a$b;-><init>(Lcom/jiliguala/niuwa/recorder/audio/a;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a$b;->start()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/recorder/audio/a$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->t:Lcom/jiliguala/niuwa/recorder/audio/a$b;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->u:Landroid/os/Handler;

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->u:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    iput-boolean v3, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->A:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Z)V

    .line 180
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 245
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 246
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->r:Z

    .line 247
    iput-boolean v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->l:Z

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->x:Lcom/jiliguala/niuwa/recorder/audio/a$c;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->x:Lcom/jiliguala/niuwa/recorder/audio/a$c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/a$c;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e()V
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->abandonFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->p:I

    .line 282
    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 285
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->p:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->o:Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iput v1, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->p:I

    .line 287
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->getInstance()Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/AudioFocusHelper;->setFocusableListener(Lcom/jiliguala/niuwa/module/audio/MusicFocusable;)V

    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Z)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->i:Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a;->i:Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;->destroyEncoder()V

    .line 296
    :cond_1
    return-void
.end method

.method public h()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget v9, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    new-array v2, v9, [S

    .line 304
    .local v2, "buffer":[S
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->h:Landroid/media/AudioRecord;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->k:I

    invoke-virtual {v9, v2, v14, v15}, Landroid/media/AudioRecord;->read([SII)I

    move-result v8

    .line 305
    .local v8, "r":I
    const-wide/16 v10, 0x0

    .line 307
    .local v10, "v":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 309
    aget-short v9, v2, v3

    aget-short v14, v2, v3

    mul-int/2addr v9, v14

    int-to-long v14, v9

    add-long/2addr v10, v14

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_0
    long-to-double v14, v10

    int-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 314
    .local v4, "mean":D
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    mul-double v12, v14, v16

    .line 316
    .local v12, "volume":D
    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    cmpl-double v9, v12, v14

    if-lez v9, :cond_1

    .line 317
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->B:Z

    .line 331
    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    return-object v9

    .line 319
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->B:Z

    if-eqz v9, :cond_2

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->C:J

    .line 322
    :cond_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->C:J

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_3

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->C:J

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 324
    .local v6, "noSpeakDuringTime":J
    const-wide/16 v14, 0x7d0

    cmp-long v9, v6, v14

    if-ltz v9, :cond_3

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/recorder/audio/a;->c()V

    .line 329
    .end local v6    # "noSpeakDuringTime":J
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/jiliguala/niuwa/recorder/audio/a;->B:Z

    goto :goto_1
.end method

.method public onGainedAudioFocus()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onLostAudioFocus(Z)V
    .locals 0
    .param p1, "canDuck"    # Z

    .prologue
    .line 277
    return-void
.end method
