.class public Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_RECORD_DUR:I = 0xea60

.field public static final TAG:Ljava/lang/String;


# instance fields
.field isDetached:Z

.field private mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

.field private mContext:Landroid/content/Context;

.field private mRecDuration:J

.field private mScoreFloat:F

.field private mScoreInt:I

.field private final mSpeakViewUI:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speakView"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->isDetached:Z

    .line 17
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->mRecDuration:J

    .line 23
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->mSpeakViewUI:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewUI;

    .line 25
    return-void
.end method


# virtual methods
.method public getCurrentSaveAudioFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->isDetached:Z

    .line 35
    return-void
.end method

.method public setInteractListener(Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/view/SpeakViewControl;->mCallBack:Lcom/jiliguala/niuwa/module/speak/view/SpeakViewWidget$CallBack;

    .line 30
    return-void
.end method
