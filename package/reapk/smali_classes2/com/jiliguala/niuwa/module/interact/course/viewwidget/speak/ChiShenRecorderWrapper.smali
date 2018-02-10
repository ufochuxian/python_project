.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;,
        Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$AIEngineCallBack;
    }
.end annotation


# static fields
.field public static final CATEGORY_READ_SENTENCE:Ljava/lang/String; = "en.sent.child"

.field public static final CATEGORY_READ_WORD:Ljava/lang/String; = "en.word.child"

.field public static final DEFAULT_STORAGE_PATH:Ljava/lang/String;

.field public static final ERROR_ID_DURATION_OVER_LIMIT:Ljava/lang/String; = "40092"

.field public static final TAG:Ljava/lang/String;

.field private static waitEndTime:J

.field private static waitStartTime:J


# instance fields
.field private engine:J

.field public mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

.field private mContext:Landroid/content/Context;

.field private mEvluateStr:Ljava/lang/String;

.field private mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

.field private mWavePath:Ljava/lang/String;

.field private recorder:Lcom/chivox/android/AIRecorder;

.field recorderCallback:Lcom/chivox/android/AIRecorder$Callback;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    .line 35
    const-string v0, "this-is-user-id"

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->userId:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    .line 62
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$1;-><init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorderCallback:Lcom/chivox/android/AIRecorder$Callback;

    .line 57
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->userId:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->initChiShenEngine()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getRequestString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)J
    .locals 2
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 25
    sput-wide p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->waitStartTime:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;)Lcom/chivox/android/AIRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    return-object v0
.end method

.method static synthetic access$602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 25
    sput-wide p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->waitEndTime:J

    return-wide p0
.end method

.method private calculateCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "evaluateStr"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 168
    const-string v1, "en.sent.child"

    .line 173
    .end local v0    # "strs":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 170
    .restart local v0    # "strs":[Ljava/lang/String;
    :cond_0
    const-string v1, "en.word.child"

    goto :goto_0

    .line 173
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_1
    const-string v1, "en.word.child"

    goto :goto_0
.end method

.method private calculateCategory(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)Ljava/lang/String;
    .locals 3
    .param p1, "evaluateStr"    # Ljava/lang/String;
    .param p2, "pronunciation"    # Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->calculateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 151
    :cond_0
    if-eqz p2, :cond_2

    .line 152
    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 153
    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 154
    const-string v1, "en.sent.child"

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p2, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;->wordlist:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/Pronunciation$WordList;->word:Ljava/lang/String;

    .line 157
    .local v0, "word":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->calculateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    .end local v0    # "word":Ljava/lang/String;
    :cond_2
    const-string v1, "en.word.child"

    goto :goto_0
.end method

.method private getRefText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    if-eqz v1, :cond_1

    .line 141
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 142
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_1
    const-string v1, "\"\""

    goto :goto_0
.end method

.method private getRequestString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"coreType\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    invoke-direct {p0, v3, v4}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->calculateCategory(Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \"refText\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->getRefText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"rank\": 100, \"attachAudioUrl\": 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    if-eqz v2, :cond_0

    .line 117
    const-string v2, ",\"textMode\": 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSpeakMode()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    if-eqz v0, :cond_0

    .line 127
    sget v0, Lcom/jiliguala/niuwa/MyApplication;->speakmode:I

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->calculateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en.sent.child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget v0, Lcom/jiliguala/niuwa/MyApplication;->speakmode:I

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->calculateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en.word.child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x2

    goto :goto_0

    .line 134
    :cond_2
    sget v0, Lcom/jiliguala/niuwa/MyApplication;->speakmode:I

    goto :goto_0
.end method

.method private initChiShenEngine()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chivox/android/AIRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public getWavePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mWavePath:Ljava/lang/String;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    invoke-virtual {v0}, Lcom/chivox/android/AIRecorder;->isRunning()Z

    move-result v0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseRes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    invoke-virtual {v0}, Lcom/chivox/android/AIRecorder;->stop()I

    .line 262
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v0, :cond_1

    .line 265
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    .line 267
    :cond_1
    return-void
.end method

.method public removeCallBack()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    .line 275
    return-void
.end method

.method public setCallBack(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    .line 271
    return-void
.end method

.method public startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "evaluateStr"    # Ljava/lang/String;
    .param p2, "saveFileName"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)V

    .line 246
    return-void
.end method

.method public startRecordByChiShen(Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;)V
    .locals 4
    .param p1, "evaluateStr"    # Ljava/lang/String;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "pronunciation"    # Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mEvluateStr:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mPronunciation:Lcom/jiliguala/niuwa/logic/network/json/Pronunciation;

    .line 231
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->getInstance(Landroid/content/Context;)Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenInstance;->getEngine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    .line 233
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->DEFAULT_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mWavePath:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mWavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorderCallback:Lcom/chivox/android/AIRecorder$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/chivox/android/AIRecorder;->start(Ljava/lang/String;Lcom/chivox/android/AIRecorder$Callback;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9a70\u58f0\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25engine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recorder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->mCallBack:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper$CallBack;->onInitFailed()V

    goto :goto_0
.end method

.method public stopRecordByChiShen()V
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/speak/ChiShenRecorderWrapper;->recorder:Lcom/chivox/android/AIRecorder;

    invoke-virtual {v0}, Lcom/chivox/android/AIRecorder;->stop()I

    .line 252
    :cond_0
    return-void
.end method
