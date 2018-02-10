.class public abstract Lcom/jiliguala/niuwa/recorder/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x20

.field public static final B:Ljava/lang/String;

.field protected static final a:I = 0x1

.field public static final b:I = 0xac44

.field protected static final c:I = 0x5622

.field public static final d:I = 0x3e80

.field protected static final e:I = 0x2b11

.field public static final f:I = 0x1f40

.field public static final g:[I

.field protected static final h:I = 0x10

.field protected static final i:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

.field protected static final j:I = 0x1

.field protected static final k:I = 0x2

.field protected static final l:I = 0x3

.field protected static final m:I = 0x4

.field protected static final n:I = 0x5

.field protected static final o:I = 0x6

.field protected static final p:I = 0x7

.field protected static final q:I = 0x8

.field protected static final r:I = 0x9

.field protected static final s:I = 0xa

.field public static final t:I = 0x1

.field public static final u:I = 0x1

.field public static final v:I = 0x20

.field protected static final w:I = 0x30

.field protected static final x:I = 0x40

.field protected static final y:I = 0x60

.field protected static final z:I = 0x80


# instance fields
.field private C:Ljava/io/File;

.field private D:Ljava/io/File;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

.field private K:I

.field private L:J

.field private M:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/b;->g:[I

    .line 33
    sget-object v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->PCM_16BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/b;->i:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    .line 63
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/b;->B:Ljava/lang/String;

    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        0xac44
        0x5622
        0x3e80
        0x2b11
        0x1f40
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "outfileName"    # Ljava/lang/String;
    .param p2, "storagePath"    # Ljava/lang/String;
    .param p3, "bitRate"    # I
    .param p4, "audioQuality"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->M:J

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "outRawFileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->D:Ljava/io/File;

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->C:Ljava/io/File;

    .line 84
    iput p3, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->E:I

    .line 85
    iput p4, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->F:I

    .line 86
    invoke-direct {p0}, Lcom/jiliguala/niuwa/recorder/audio/b;->l()V

    .line 87
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    const v0, 0xac44

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->G:I

    .line 143
    iput v1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->H:I

    .line 144
    const/16 v0, 0x10

    iput v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->I:I

    .line 145
    sget-object v0, Lcom/jiliguala/niuwa/recorder/audio/b;->i:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->J:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    .line 146
    iput v1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->K:I

    .line 147
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->D:Ljava/io/File;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->M:J

    .line 99
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->M:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "recordSecs"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->L:J

    .line 107
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->L:J

    return-wide v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->C:Ljava/io/File;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->E:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->F:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->G:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->H:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->I:I

    return v0
.end method

.method public j()Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->J:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/b;->K:I

    return v0
.end method
