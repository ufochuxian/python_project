.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INIT_RETRY_Times_MAX:I = 0x3

.field public static final TAG:Ljava/lang/String;

.field private static mChiShenInstance:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;


# instance fields
.field private appKey:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private engine:J

.field private mContext:Landroid/content/Context;

.field private mRetryTimes:I

.field private secretKey:Ljava/lang/String;

.field private workerThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mChiShenInstance:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "146224416600002a"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->appKey:Ljava/lang/String;

    .line 24
    const-string v0, "7651f3eddbddf4fc7559ad949789f25d"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->secretKey:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->workerThread:Ljava/util/concurrent/ExecutorService;

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->deviceId:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mRetryTimes:I

    .line 42
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;J)J
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mRetryTimes:I

    return v0
.end method

.method static synthetic access$502(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mRetryTimes:I

    return p1
.end method

.method static synthetic access$508(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)I
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .prologue
    .line 17
    iget v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mRetryTimes:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mChiShenInstance:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mChiShenInstance:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    .line 38
    :cond_0
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->mChiShenInstance:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$2;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    return-void
.end method

.method public getEngine()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    return-wide v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;)V

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->workerThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
