.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/network/f$b;
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;


# static fields
.field private static final MAX_RECORD_DUR:I = 0xea60

.field public static final TAG:Ljava/lang/String;


# instance fields
.field isDetached:Z

.field private isFocused:Z

.field private final mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpeakItem:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;

.field private mFolderName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguage:Ljava/lang/String;

.field private mPossibleResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

.field private mRecDuration:J

.field private mRecSentence:Ljava/lang/String;

.field private mResultCount:I

.field private mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

.field private mSpeakView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

.field private mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

.field private final mTappingSoundId:I

.field private mTotalScore:F

.field private stopped:Z

.field private timeOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speakView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;
    .param p3, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isDetached:Z

    .line 57
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mRecDuration:J

    .line 62
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->timeOut:Z

    .line 63
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopped:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isFocused:Z

    .line 73
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    .line 76
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    .line 78
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .line 80
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;)V

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;->resultCount:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mResultCount:I

    .line 83
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;->resultMapping:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    .line 84
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;->items:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mItems:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mRecSentence:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mLanguage:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractSpeakItem;->pronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    .line 89
    new-instance v0, Lcom/jiliguala/niuwa/logic/n/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    .line 91
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTappingSoundId:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isFocused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;F)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;
    .param p1, "x1"    # F

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->checkResultList(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->doUploadAudio(Ljava/lang/String;)V

    return-void
.end method

.method private checkResultList(F)V
    .locals 4
    .param p1, "scoreInFloat"    # F

    .prologue
    .line 161
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    const/4 v2, -0x1

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->onScoreAnswer(ILjava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iput p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTotalScore:F

    .line 170
    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTotalScore:F

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->getJumpIdByScore(F)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "jumpId":Ljava/lang/String;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTotalScore:F

    float-to-int v2, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "jumpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->onScoreAnswer(ILjava/lang/String;)V

    goto :goto_0

    .restart local v0    # "jumpId":Ljava/lang/String;
    :cond_2
    const-string v0, "default"

    goto :goto_1
.end method

.method private doUploadAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/f;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/f;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p0}, Lcom/jiliguala/niuwa/logic/network/f;->a(ILjava/lang/String;Lcom/jiliguala/niuwa/logic/network/f$b;)V

    .line 183
    return-void
.end method

.method private getJumpIdByScore(F)Ljava/lang/String;
    .locals 5
    .param p1, "totalScore"    # F

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v2, 0x42700000    # 60.0f

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 203
    const-string v1, ""

    .line 218
    :goto_0
    return-object v1

    .line 205
    :cond_0
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v3

    if-gez v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_2
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_3

    cmpg-float v1, p1, v4

    if-gez v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_3
    cmpl-float v1, p1, v4

    if-ltz v1, :cond_4

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    .line 212
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getMatchedResultJumpId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "scoreStr"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPossibleResultMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 187
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseResultGetScore(Ljava/lang/String;)F
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    new-instance v0, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;-><init>()V

    .line 152
    .local v0, "parser":Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;
    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/speak/util/XmlResultParser;->parse(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/speak/model/Result;

    move-result-object v1

    .line 153
    .local v1, "result":Lcom/jiliguala/niuwa/module/speak/model/Result;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/jiliguala/niuwa/module/speak/model/Result;->is_rejected:Z

    if-nez v3, :cond_0

    .line 156
    iget v2, v1, Lcom/jiliguala/niuwa/module/speak/model/Result;->total_score:F

    goto :goto_0
.end method

.method private stopChiShenRecord()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->stopRecordByChiShen()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ISpeakView;->changeVolumeIcon(D)V

    .line 135
    :cond_1
    return-void
.end method


# virtual methods
.method public hasStopped()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopped:Z

    return v0
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->timeOut:Z

    return v0
.end method

.method public onData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 383
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isDetached:Z

    .line 229
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopChiShenRecord()V

    .line 230
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onInitFailed()V
    .locals 6

    .prologue
    .line 387
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isDetached:Z

    if-eqz v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    .line 391
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 392
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 393
    .local v1, "fragmentManager":Landroid/support/v4/app/ag;
    const v3, 0x7f0b0107

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {v1, v3, v4, v5}, Lcom/jiliguala/niuwa/common/widget/b;->a(Landroid/support/v4/app/ag;ID)Lcom/jiliguala/niuwa/common/widget/b;

    move-result-object v2

    .line 394
    .local v2, "noticeFragment":Lcom/jiliguala/niuwa/common/widget/b;
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/common/widget/b;->b(Landroid/support/v4/app/ag;)V

    .line 395
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->checkResultList(F)V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onRun(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isDetached:Z

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 311
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isDetached:Z

    if-eqz v0, :cond_0

    .line 286
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;->widgetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSpeakWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/http/entity/SpeakWidget;->id:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTotalScore:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->reportInteractScoreToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sectionID"    # Ljava/lang/String;

    .prologue
    .line 267
    return-void
.end method

.method public onWindowChanged(Z)V
    .locals 2
    .param p1, "isFocused"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->isFocused:Z

    .line 235
    if-nez p1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopChiShenRecord()V

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->resetShowSpeakFlag(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method public playTapingMusic()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mTappingSoundId:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->b(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/n/a;->a()V

    .line 279
    :cond_0
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mFolderName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setInteractListener(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;)V
    .locals 0
    .param p1, "interactListener"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    .line 224
    return-void
.end method

.method public startRecord()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mChiShenRecorder:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mRecSentence:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mFolderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)V

    .line 105
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->timeOut:Z

    .line 106
    iput-boolean v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopped:Z

    .line 108
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopChiShenRecord()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopped:Z

    .line 141
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->onStopInteract()V

    .line 143
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->resetShowSpeakFlag(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public stopRecordWhenTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->timeOut:Z

    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopChiShenRecord()V

    .line 121
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->stopped:Z

    .line 122
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/SpeakViewCtrlr;->mInteractListener:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/InteractListener;->resetShowSpeakFlag(Z)V

    .line 125
    :cond_0
    return-void
.end method
